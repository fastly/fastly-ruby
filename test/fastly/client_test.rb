require_relative '../test_helper'

describe Fastly::Client do
  let(:user)     { "test@example.com" }
  let(:password) { "notasecret" }
  let(:api_key)  { "notasecreteither" }

  describe 'initialize' do
    it 'raises ArgumentError when no options provided' do
      assert_raises(ArgumentError) {
        Fastly::Client.new()
      }
    end

    it 'does not set the user/pass if they are not provided' do
      client = Fastly::Client.new(api_key: api_key)

      assert_equal api_key, client.api_key
      assert_equal nil, client.user
      assert_equal nil, client.password
    end

    it 'raises Unauthorized if api_key is not passed in the options' do
      assert_raises(Fastly::Unauthorized) { Fastly::Client.new(user: user, password: password)}
    end

    it 'raises Unauthorized if user/pass provided but are invalid' do
      stub_request(:any, /api.fastly.com/).to_return(status: 400)

      e = assert_raises(Fastly::Unauthorized) {
        Fastly::Client.new(user: user, password: password)
      }
      assert_equal "Invalid auth credentials. Check api_key.", e.message
    end

    it 'initializes an http client' do
      client = Fastly::Client.new(api_key: api_key)

      assert_equal Net::HTTP, client.http.class
      assert_equal 443, client.http.port
      assert_equal 'api.fastly.com', client.http.address
      assert client.http.use_ssl?
    end

    it 'raises an Error if username is used in place of user as an option' do
      stub_request(:any, /api.fastly.com/).
        to_return(body: JSON.generate(i: "dont care"), status: 200)

      assert_raises(ArgumentError) { Fastly.new(username: user, password: password) }

      Fastly.new(api_key: api_key, user: user, password: password)
    end
  end

  describe 'get' do
    let(:client) { Fastly::Client.new(api_key: api_key) }

    it 'accepts a path and returns a parsed json hash' do
      stub_request(:any, /api.fastly.com/).
        to_return(body: JSON.generate(i: "dont care"), status: 200)

      resp = client.get('/service/blah')
      assert_equal resp.class, Hash
      assert_includes resp, "i"
    end

    it 'raises Fastly::Error on unsuccessful GETs' do
      stub_request(:any, /api.fastly.com/).to_return(status: 400)

      assert_raises(Fastly::Error) {
        client.get('/service/blah')
      }
    end
  end

  describe 'post' do
    let(:client) { Fastly::Client.new(api_key: api_key) }

    it 'raises Fastly::Error on unsuccessful POST' do
      stub_request(:any, /api.fastly.com/).to_return(status: 400)

      assert_raises(Fastly::Error) {
        client.post('/service/blah')
      }
    end

    it 'can make a successful POST' do
      stub_request(:any, /api.fastly.com/).
        to_return(body: JSON.generate(i: "dont care"), status: 200)

      resp = client.post('/service/blah')
      assert_equal resp.class, Hash
      assert_includes resp, "i"
    end

    it 'can make a POST without auth if asked to do so' do
      stub_request(:post, /api.fastly.com/).
        with(headers: {
          'Accept'=>'*/*',
          'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
          'Content-Accept'=>'application/json',
          'Content-Type'=>'application/x-www-form-urlencoded',
          #'Fastly-Key'=>'notasecreteither',
          'User-Agent'=> /fastly-ruby/
          }).
        to_return(body: JSON.generate(i: "dont care"), status: 200)

      client.post(
        '/service/blah',
        {include_auth: false}
      )
    end

  end

  describe 'get_stats' do
    let(:client) { Fastly::Client.new(api_key: api_key) }

    it 'raises Fastly::Error when unsuccessful get' do
      stub_request(:any, /api.fastly.com/).to_return(status: 400)

      assert_raises(Fastly::Error) {
        client.get_stats('/stats')
      }
    end

    it 'can make a successful stats GET' do
      stub_request(:any, /api.fastly.com/).
        to_return(body: JSON.generate(i: "dont care", status: 'success', data: {}), status: 200)

      resp = client.get_stats('/stats')
      assert_equal resp.class, Hash

    end
  end

  describe 'retry when something goes wrong' do
    let(:client) { Fastly::Client.new(api_key: api_key) }
    let(:something_wrong) {'{ "errors" : [{ "title" : "Unknown Error Occurred" , "detail" : "Something went wrong - please try again or contact support@fastly.com if it persists" }] }'}
    let(:io_error) {'{"error":"I/O error"}'}
    let(:normal_response) {'{"service_id":"621RhstXUziIWstbAR1","number":5}'}
    let(:restful_methods) {[:get,:post,:put,:delete,:purge]}

    def stub(method,body_fivehundred, body_twohundred)
      stub_request(method, /api.fastly.com/)
        .to_return(
          {status: 500, body: body_fivehundred},
          {status: 500, body: body_fivehundred},
          {status: 200, body: body_twohundred}
        )
    end

    it 'retries if something goes wrong' do
      restful_methods.each do |method|
        stub(method, something_wrong, normal_response)
        resp = client.get('/service/')
        assert_equal resp.class, Hash
        assert_includes resp, "service_id"
      end
    end

    it 'retries on I/O error' do
      restful_methods.each do |method|
        stub(method, io_error, normal_response)
        resp = client.get('/service/')
        assert_equal resp.class, Hash
        assert_includes resp, "service_id"
      end
    end

    it 'fails if there are too many retries' do
      stub_request(:get, /api.fastly.com/)
      .to_return(
        {status: 500, body: something_wrong},
        {status: 500, body: io_error},
        {status: 500, body: something_wrong},
        {status: 500, body: io_error},
        {status: 200, body: normal_response}
      )
      error = assert_raises Fastly::Error do
        client.get('/service/')
      end
      assert_equal '{"error":"I/O error"}', error.message
    end
  end
end

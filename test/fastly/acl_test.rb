require_relative '../test_helper'

describe Fastly::ACL do

  let(:client)     { Fastly.new(user: 'test@example.com', password: 'password') }
  let(:service_id) { SecureRandom.hex(6) }
  let(:version)    {  1 }
  let(:acl) { Fastly::ACL.new({id: SecureRandom.hex(6), service_id: service_id, version: 1}, client) }

  before {
    stub_request(:post, "#{Fastly::Client::DEFAULT_URL}/login").to_return(body: '{}', status: 200, headers: { 'Set-Cookie' => 'tasty!' })
  }

  describe '#entry' do
    it 'returns the nil when entry is not present' do
      entry_key   = 'key'
      get_entry_url = "#{Fastly::Client::DEFAULT_URL}/service/#{service_id}/acl/#{acl.id}/entry/#{entry_key}"

      response_body = JSON.dump(
        "msg"    => "Record not found",
        "detail" => "Couldn't find acl entry '{ service => #{service_id}, acl_id => #{acl.id}, entry_key => #{entry_key}, deleted => 0000-00-00 00:00:00'",
      )

      stub_request(:get, get_entry_url).to_return(body: response_body, status: 404)

      assert_nil acl.entry('key')
    end

    it 'returns the corresponding acl entry when present' do
      entry_key   = 'key'
      entry_value = 'value'

      response_body = JSON.dump(
        "acl_id" => acl.id,
        "service_id"    => service_id,
        "entry_key"      => entry_key,
        "entry_value"    => entry_value,
        "created_at"    => "2016-04-21T18:14:32+00:00",
        "deleted_at"    => nil,
        "updated_at"    => "2016-04-21T18:14:32+00:00",
      )

      get_entry_url = "#{Fastly::Client::DEFAULT_URL}/service/#{service_id}/acl/#{acl.id}/entry/#{entry_key}"

      stub_request(:get, get_entry_url).to_return(body: response_body, status: 200)

      entry = acl.entry('key')

      assert_equal entry_key, entry.key
      assert_equal entry_value, entry.value
    end
  end
end

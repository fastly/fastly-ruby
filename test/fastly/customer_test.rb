require_relative '../test_helper'

describe Fastly::Customer do

  let(:fastly)      { Fastly.new(api_key: 'secret') }
  let(:customer_id) { SecureRandom.hex(6) }
  let(:owner_id)    { SecureRandom.hex(6) }

  let(:customer) do
    stub_request(:post, "#{Fastly::Client::DEFAULT_URL}/login").to_return(body: '{}', status: 200, headers: { 'Set-Cookie' => 'tasty!' })

    customer_body = JSON.dump(
      'id' => customer_id,
      'owner_id' => owner_id,
    )
    stub_request(:get, "#{Fastly::Client::DEFAULT_URL}/customer/#{customer_id}").to_return(body: customer_body, status: 200)

    owner_body = JSON.dump(
      'id' => owner_id,
      'name' => 'Sugar Watkins',
    )
    stub_request(:get, "#{Fastly::Client::DEFAULT_URL}/user/#{owner_id}").to_return(body: owner_body, status: 200)

    fastly.get_customer(customer_id)
  end

  describe '#owner' do
    it 'returns the owner as a Fastly::User' do
      assert customer.owner.is_a?(Fastly::User)
      assert_equal 'Sugar Watkins', customer.owner.name
    end
  end
end

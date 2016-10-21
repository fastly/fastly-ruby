require_relative '../test_helper'
require 'json'

describe Fastly::ACL do

  let(:client)     { Fastly.new(user: 'test@example.com', password: 'password') }
  let(:service_id) { SecureRandom.hex(6) }
  let(:version)    { 1 }
  let(:acl) { Fastly::ACL.new({id: SecureRandom.hex(6), service_id: service_id, version: 1}, client) }

  before {
    stub_request(:post, "#{Fastly::Client::DEFAULT_URL}/login").
      to_return(body: '{}', status: 200, headers: { 'Set-Cookie' => 'tasty!' })

    get_entries_response = [
      {
        id: "6yxNzlOpW1V7JfSwvLGtOc",
        service_id: service_id,
        acl_id: acl.id,
        ip: "127.0.0.1",
        negated: "0",
        subnet: nil,
        comment: "",
        created_at: "2016-04-21T18:14:32+00:00",
        updated_at: "2016-04-21T18:14:32+00:00",
        deleted_at: nil
      },
      {
        id: "1ujrCmULAWHUPP7Mzjefxa",
        service_id: service_id,
        acl_id: acl.id,
        ip: "127.0.0.2",
        negated: "0",
        subnet: 8,
        comment: "",
        created_at: "2016-04-21T18:14:32+00:00",
        updated_at: "2016-04-21T18:14:32+00:00",
        deleted_at: nil
      }
    ]

    # entries
    stub_request(:get, "#{Fastly::Client::DEFAULT_URL}/service/#{service_id}/acl/#{acl.id}/entries").
      to_return(:status => 200, :body => get_entries_response.to_json, :headers => {})

    post_entry_response = {
      id: "1ujrCmULAWHUPP7Mzjefxa",
      service_id: service_id,
      acl_id: acl.id,
      ip: "127.0.0.1",
      negated: 0,
      subnet: 8,
      comment: "",
      created_at: "2016-04-21T18:14:32+00:00",
      updated_at: "2016-04-21T18:14:32+00:00",
      deleted_at: nil
    }

    # add_entry
    stub_request(:post, "#{Fastly::Client::DEFAULT_URL}/service/#{service_id}/acl/#{acl.id}/entry").
      to_return(:status => 200, :body => post_entry_response.to_json, :headers => {})
  }

  describe '#entries' do
    it 'returns a list of entries' do
      assert_equal acl.entries.size, 2
      entry = acl.entries.first
      puts acl.entries.inspect
      assert_equal service_id, entry.service_id
      assert_equal acl.id, entry.acl_id
    end
  end

  describe '#add_entry' do
    it 'returns the added acl entry' do
      entry = acl.add_entry('foo', 'bar')
      assert_equal 8, entry.subnet
      assert_equal "1ujrCmULAWHUPP7Mzjefxa", entry.id
    end
  end

  describe '#entry' do
    it 'returns the acl entry' do
    end

    # it_behaves_like 'a single entry not found'

    # it 'returns the nil when entry is not present' do
    #   entry_key   = 'key'
    #   get_entry_url = "#{Fastly::Client::DEFAULT_URL}/service/#{service_id}/acl/#{acl.id}/entry/#{entry_key}"

    #   response_body = JSON.dump(
    #     "msg"    => "Record not found",
    #     "detail" => "Couldn't find acl entry '{ service => #{service_id}, acl_id => #{acl.id}, entry_key => #{entry_key}, deleted => 0000-00-00 00:00:00'",
    #   )

    #   stub_request(:get, get_entry_url).to_return(body: response_body, status: 404)

    #   assert_nil acl.entry('key')
    # end

    # it 'returns the corresponding acl entry when present' do
    #   entry_key   = 'key'
    #   entry_value = 'value'

    #   response_body = JSON.dump(
    #     "acl_id" => acl.id,
    #     "service_id"    => service_id,
    #     "entry_key"      => entry_key,
    #     "entry_value"    => entry_value,
    #     "created_at"    => "2016-04-21T18:14:32+00:00",
    #     "deleted_at"    => nil,
    #     "updated_at"    => "2016-04-21T18:14:32+00:00",
    #   )

    #   get_entry_url = "#{Fastly::Client::DEFAULT_URL}/service/#{service_id}/acl/#{acl.id}/entry/#{entry_key}"

    #   stub_request(:get, get_entry_url).to_return(body: response_body, status: 200)

    #   entry = acl.entry('key')

    #   assert_equal entry_key, entry.key
    #   assert_equal entry_value, entry.value
    # end
  end

  describe '#update_entry' do
    it 'returns the updated acl entry' do
    end

    # it_behaves_like 'a single entry not found'
  end

  describe '#delete_entry' do
    it 'returns true if the acl entry is deleted' do
    end

    it 'returns false if a non success repsonse is received' do
    end

    # it_behaves_like 'a single entry not found'
  end
end

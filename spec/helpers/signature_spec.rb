require 'date'
require_relative "../../lib/hubspot/helpers/signature"

TEST_DATA = {
  :client_secret=> "yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyyy",
  :request_body=> "{'example_field':'example_value'}",
  :url=> "https://www.example.com/webhook_uri",
  :http_method=> "POST",
  :timestamp=> 15000000,
  :v1_hash=> "69fc6631a867edd4f9e9e627fc5c1148e3fbdd8b21837b6d2b8901c1fa57f750",
  :v2_hash=> "4fe4e3a7d3cf09db53be39d0a58130e2aaba074ec123a9e355b876a689a1c383",
  :v3_hash=> "HPW73RUtKmcYoEDADG0s6MmGFWUzWJKAW07r8RDgcQw=",
}



describe "Hubspot::Helpers::Signature.get_signature" do
  subject( :signature) { Hubspot::Helpers::Signature.new }

    it "should return hashed data for v3 signature version" do
      result = signature.get_signature(
        client_secret: TEST_DATA[:client_secret],
        request_body: TEST_DATA[:request_body],
        signature_version: "v3",
        http_uri: TEST_DATA[:url],
        timestamp: TEST_DATA[:timestamp]
        )
      expect(result).to eql TEST_DATA[:v3_hash]
    end
  it "should return hashed data for v2 signature version" do
    result = signature.get_signature(
      client_secret: TEST_DATA[:client_secret],
      request_body: TEST_DATA[:request_body],
      signature_version: "v2",
      http_uri: TEST_DATA[:url],
    )
    expect(result).to eql TEST_DATA[:v2_hash]
  end
  it "should return hashed data for v1 signature version" do
    result = signature.get_signature(
      client_secret: TEST_DATA[:client_secret],
      request_body: TEST_DATA[:request_body],
      signature_version: "v1"
    )
    expect(result).to eql TEST_DATA[:v1_hash]
  end
  it "should raise exception for wrong signature version" do
    expect{  signature.get_signature(
      client_secret: TEST_DATA[:client_secret],
      request_body: TEST_DATA[:request_body],
      signature_version: "wrong_signature_version"
    ) }.to raise_error(StandardError)
    end

end

describe "Hubspot::Helpers::Signature.is_valid" do
  subject( :signature) { Hubspot::Helpers::Signature.new }
  it "should return true for v1 signature version" do
    result = signature.is_valid(
      signature: TEST_DATA[:v1_hash],
      client_secret: TEST_DATA[:client_secret],
      request_body: TEST_DATA[:request_body],
      signature_version: "v1"
    )
    expect(result).to be true
  end
  it "should return true for v2 signature version" do
    result = signature.is_valid(
      signature: TEST_DATA[:v2_hash],
      client_secret: TEST_DATA[:client_secret],
      request_body: TEST_DATA[:request_body],
      http_uri: TEST_DATA[:url],
      signature_version: "v2"
    )
    expect(result).to be true
  end
  it "should return true for v3 signature version" do
    test_timestamp = DateTime.now.strftime("%s")
    test_signature = signature.get_signature(
      client_secret: TEST_DATA[:client_secret],
      request_body: TEST_DATA[:request_body],
      http_uri: TEST_DATA[:http_uri],
      timestamp: test_timestamp,
      signature_version: "v3"
    )

    result = signature.is_valid(
      signature: test_signature,
      client_secret: TEST_DATA[:client_secret],
      request_body: TEST_DATA[:request_body],
      http_uri: TEST_DATA[:http_uri],
      timestamp: test_timestamp,
      signature_version: "v3"
    )
    expect(result).to be true
  end
  it "should raise exception if :signature_version=>v3 and :timestamp=>nil" do
    expect {  signature.is_valid(
      signature: TEST_DATA[:v3_hash],
      client_secret: TEST_DATA[:client_secret],
      request_body: TEST_DATA[:request_body],
      http_uri: TEST_DATA[:http_uri],
      signature_version: "v3"
    ) }.to raise_error(StandardError)
  end
  it "should raise exception if :signature_version=>v3 and :timestamp=>wrong_timestamp" do
    expect {  signature.is_valid(
      signature: TEST_DATA[:v3_hash],
      client_secret: TEST_DATA[:client_secret],
      request_body: TEST_DATA[:request_body],
      http_uri: TEST_DATA[:http_uri],
      timestamp: "wrong_timestamp",
      signature_version: "v3"
    ) }.to raise_error(StandardError)
  end
end
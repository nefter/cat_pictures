# frozen_string_literal: true

require "test_helper"

module CatPictures
  class TestClient < Minitest::Test
    def client
      CatPictures::Client.new("https://api.thecatapi.com/v1/")
    end

    def test_client_class_must_exist
      refute_nil CatPictures::Client.new("http://example.com")
    end

    def test_client_must_raise_an_exception_when_path_missing
      VCR.use_cassette("client_error") do
        assert_raises ClientError do
          client.get("bad_uri/1234")
        end
      end
    end

    def test_client_must_get_images
      VCR.use_cassette("images") do
        assert_instance_of Array, client.get("images/search?page=100&order=DESC&limit=100&size=thumb")
      end
    end

    # def test_client_must_get_all_breeds
    #   VCR.use_cassette("breeds") do
    #     assert_instance_of Array, client.get("breeds")
    #   end
    # end
    
    # def test_client_must_get_breed
    #   VCR.use_cassette("breed") do
    #     assert_instance_of Hash, client.get("breeds/abys")
    #     # assert_instance_of Array, client.get("breeds")[:results]
    #   end
    # end

    # def test_client_must_get_all_categories
    #   VCR.use_cassette("categories") do
    #     assert_instance_of Array, client.get("categories")
    #   end
    # end

    # def test_client_must_get_category
    #   VCR.use_cassette("category") do
    #     assert_instance_of Hash, client.get("categories/1")
    #   end
    # end
  end
end

# frozen_string_literal: true

require "test_helper"

module CatPictures
  class TestClient < Minitest::Test
    def client
      Client.new("https://api.thecatapi.com/v1/")
    end

    def test_client_class_must_exist
      refute_nil Client.new
    end
    
    def test_client_must_raise_an_exception_when_path_missing
      assert_raises Client::ClientError do
        Client.get("bad/uri/1")
      end
    end
    
    def test_client_must_get_all_images
      assert_instance_of Array, Client.get("images")
    end
    
    def test_client_must_get_image
      assert_instance_of Hash, Client.get("images")
    end
  end
end

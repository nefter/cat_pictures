# frozen_string_literal: true

require "test_helper"

class TestCatPictures < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::CatPictures::VERSION
  end

  def test_fetch_all_pictures
    VCR.use_cassette("get_all") do
      assert_instance_of Array, CatPictures.images
      assert_instance_of Array, CatPictures.images.first
    end
  end

  # def test_fetch_all_breeds
  #   assert_instance_of Array, CatPictures.breeds
  #   assert_instance_of Hash, CatPictures.breeds.first
  # end

  # def test_fetch_all_categories
  #   assert_instance_of Array, CatPictures.categories
  #   assert_instance_of Hash, CatPictures.categories.first
  # end

  # def test_fetch_all_votes
  #   assert_instance_of Array, CatPictures.votes
  #   assert_instance_of Hash, CatPictures.votes.first
  # end
  # def test_fetch_all_favourites
  #   assert_instance_of Array, CatPictures.favourites
  #   assert_instance_of Hash, CatPictures.favourites.first
  # end
end

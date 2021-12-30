# frozen_string_literal: true

require "test_helper"

class TestCatPictures < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::CatPictures::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end

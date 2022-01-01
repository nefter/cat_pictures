# frozen_string_literal: true

require_relative "cat_pictures/version"
require_relative "cat_pictures/client"

module CatPictures
  class Error < StandardError; end
  class ClientError < Error; end
  class ServerError < Error; end

  def self.images
    [{}]
  end

  def self.image(_id)
    {}
  end

  def self.breeds
    [{}]
  end

  def self.breed(_id)
    {}
  end

  def self.categories
    [{}]
  end

  def self.category(_id)
    {}
  end

  # def self.votes
  #   [{}]
  # end

  # def self.favourites
  #   [{}]
  # end
end

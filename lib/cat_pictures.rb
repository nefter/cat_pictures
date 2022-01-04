# frozen_string_literal: true

require_relative "cat_pictures/version"
require_relative "cat_pictures/client"
require_relative "cat_pictures/image"

module CatPictures
  class Error < StandardError; end
  class ClientError < Error; end
  class ServerError < Error; end

  def self.images
    Images.new.all
  end

  # def self.image(_id)
  #   Images.new.find(_id)
  # end

  # def self.breeds
  #   Images.new.all
  # end

  # def self.breed(_id)
  #   Images.new.find(_id)
  # end

  # def self.categories
  #   Images.new.find(_id)
  # end

  # def self.category(_id)
  #   Images.new.find(_id)
  # end

  # def self.votes
  #   [{}]
  # end

  # def self.favourites
  #   [{}]
  # end
end

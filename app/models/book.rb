# frozen_string_literal: true

class Book < ApplicationRecord
  validates :genre, :author, :image, :title, :editor, :year, presence: true
  validates :year, numericality: { less_than_or_equal_to: Time.zone.today.year }
end

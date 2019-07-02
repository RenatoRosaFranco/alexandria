# frozen_string_literal: true
class Book < ApplicationRecord
  validates :title, presence: true
  validates :released_on, presence: true
  validates :author, presence: true

  mount_base64_uploader :cover, CoverUploader

  validates :isbn_10, presence: true, length: { is: 10 }, uniqueness: true
  validates :isbn_13, presence: true, length: { is: 13 }, uniqueness: true

  belongs_to :publisher, optional: true
  belongs_to :author
end


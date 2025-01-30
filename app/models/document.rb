class Document < ApplicationRecord
  belongs_to :employee
  has_one_attached :image
  validates :doc_name, :doc_type, presence: true
end

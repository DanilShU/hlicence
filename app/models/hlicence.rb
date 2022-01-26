class Hlicence < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy

  validates :name, presence: true
  validates :department, presence: true
  validates :gende, presence: true
  validates :specie, presence: true

  VALID_STATUSES = ['public', 'private', 'archived']

  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
end

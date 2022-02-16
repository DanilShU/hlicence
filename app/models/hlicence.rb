class Hlicence < ApplicationRecord
  include Visible
  
  has_many :comments, dependent: :destroy

  validates :name, presence: true
  validates :department, presence: true
  validates :gender, presence: true
  validates :specie, presence: true

  before_destroy do 
    self.gender = "chicken"
  end

  before_create do
    self.approve = false
  end

  VALID_STATUSES = ['public', 'private', 'archived']

  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
end

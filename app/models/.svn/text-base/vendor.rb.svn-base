class Vendor < ActiveRecord::Base
  belongs_to :user
  has_many :users

  validates :nombre, :rif, :contacto, :email, :presence => true
end

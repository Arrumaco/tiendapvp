class Cliente < ActiveRecord::Base
  belongs_to :user
  has_many :users
  
  validates :nombre, :user_id, :razon_social, :presence => true
end
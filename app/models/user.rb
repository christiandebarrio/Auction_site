class User < ActiveRecord::Base

  validates :name, presence: true
  validates :name, length: { maximum: 30 }
  validates :email, presence: true
  validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ }

end

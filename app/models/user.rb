class User < ApplicationRecord
  acts_as_voter
  has_many :comments
  mount_uploader :avatar, AvatarUploader
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

end

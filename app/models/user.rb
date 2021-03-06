class User < ApplicationRecord
  acts_as_voter
  has_many :comments
  has_many :favorites
  has_many :albums
  mount_uploader :avatar, AvatarUploader
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
        :confirmable,
         :omniauthable, :omniauth_providers => [:facebook]

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.username = auth.info.name # assuming the user model has a name
      user.avatar = auth.info.image # assuming the user model has an image
    end
  end

  def name
    [first_name,last_name].join " "
  end

  def self.search_by_letter(letter)
    where("username LIKE ?","#{letter}%").order(:username)
  end

  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    UserMailer.password_reset(self).deliver
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
end

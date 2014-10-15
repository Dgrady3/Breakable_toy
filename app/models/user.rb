class User < ActiveRecord::Base
  has_one :stat
  has_one :goal
  has_many :workout_sessions
  has_many :workouts, through: :workout_sessions

  validates :name, :email, :role, presence: true

  mount_uploader :image, ProfilePhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]

 def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.email = auth.info.email
    user.password = Devise.friendly_token[0,20]
    user.name = auth.info.name  
    user.image = auth.info.image 

  end
end 

  def largeimage
    "http://graph.facebook.com/#{self.uid}/picture?type=large"
  end
 
  def normalimage
    "http://graph.facebook.com/#{self.uid}/picture?"
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def blank_image(user)
    if @user.image.empty?
      "/assests/default_photo.jpg"
    else
      @user.image.url
    end
  end
end



class User < ActiveRecord::Base
  has_many :workout_sessions
  has_many :stats
  has_many :goals
  has_many :workouts, through: :workout_sessions

  validates :first_name, :last_name, :email, :role, presence: true

  mount_uploader :profile_photo, ProfilePhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

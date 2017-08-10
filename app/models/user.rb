class User < ApplicationRecord
  has_many :user_songs
  has_many :songs, through: :user_songs
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  enum role: [:guest, :admin]

  
end

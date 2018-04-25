class User < ApplicationRecord
 has_many :handy
 has_many :eflashssd
 has_many :istoragessd
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

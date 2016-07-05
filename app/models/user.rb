class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_one :attachment, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :attachment

  GENDER = [ 'Male', 'Female' ]
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  options = [
    :database_authenticatable, :recoverable, :rememberable, :validatable
  ]
  if Rails.env.development?
    options.push :registerable
  end
  devise *options
end

class Usuario < ActiveRecord::Base
  enum role: [:normal_user, :admin]
  belongs_to :endereco
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

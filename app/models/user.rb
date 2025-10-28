class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend Devise::Models

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

  belongs_to :parent, class_name: 'User', optional: true
  has_many :children, class_name: 'User', foreign_key: :parent_id, dependent: :nullify

  validates :nome, presence: true
  validates :role, inclusion: { in: %w[admin user], message: "%{value} não é um papel válido" }, allow_nil: true
end

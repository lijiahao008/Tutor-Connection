class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :profile
  has_many :reviews, through: :profiles, dependent: :destroy

  acts_as_messageable

  def name
  	"User #{id}"
  end

  def mailboxer_email(object)
  	nil
  end
end

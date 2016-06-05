class User < ActiveRecord::Base
  belongs_to :riba
  # Other available devise modules are:
  # :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable

  def admin?
    role == 'admin'
  end
end

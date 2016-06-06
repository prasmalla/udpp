class User < ActiveRecord::Base
  belongs_to :riba
  has_parents

  # Other available devise modules are:
  # :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable

  def admin?
    role == 'admin'
  end
end

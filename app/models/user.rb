class User < ActiveRecord::Base

  after_save :create_dashboard

  has_one :dashboard
  has_many :susus

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


private

  def create_dashboard
    Dashboard.create(user_id: self.id)
  end

end

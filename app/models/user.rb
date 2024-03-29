class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def full_name
    (first_name.present? or last_name.present?) ? "#{first_name} #{last_name}" : "Current User"
  end

end

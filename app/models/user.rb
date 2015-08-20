class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    def islog?
        if self.id.nil? 
          false
        else
          if User.find_by_email(self.email)
            true
          else
            false
          end
        end
    end
end

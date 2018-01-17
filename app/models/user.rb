class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # :recoverable, :rememberable, :validatable
    devise :database_authenticatable, :registerable, :rememberable, :trackable

    validate :password_complexity
    def password_complexity
        if password.present?
            if !password.match(/^(?=.*[a-z])(?=.*[A-Z])/)
                errors.add :password, "Password complexity requirement not met"
            end
        end
    end


end

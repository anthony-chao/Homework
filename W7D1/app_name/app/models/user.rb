require 'bcrypt'

class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates :session_token, presence: true, uniqueness: true
    validates :password_digest, presence: { message: "Password can't be blank"}
    validates :password, length: { minimum: 6, allow_nil: true} 

    before_validation :ensure_session_token
    attr_reader :password

    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)

        retur nil if user.nil?
        if user.is_password?(password)
            user
        else
            nil
        end
    end

    def reset_session_token!
        self.session_token = generate_session_token
        self.save!
        self.session_token
    end

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    private 

    def ensure_session_token
        self.session_token ||= SecureRandom.urlsafe_base64(16)
    end

    def generate_session_token
        SecureRandom.urlsafe_base64(16)
    end

end

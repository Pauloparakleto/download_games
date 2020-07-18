class User < ApplicationRecord
    has_secure_password
    has_secure_password :recovery_password, validations: false

    def password
       @password ||= Password.new(password_hash)
    end
    
    def password=(new_password)
       @password = Password.create(new_password)
       self.password_hash = @password
    end
end

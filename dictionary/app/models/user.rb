class User < ActiveRecord::Base
    validates :user_name, presence: true
    validates :user_password, length: { in:6..32 }
    validates :user_email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
    def self.authenticate(name)
        user = where(user_name:name)
        if (user.length > 0)
            user[0]
        else
            nil
        end
    end
    #encrypt password before  update , insert
    before_save :encrypt_password
    before_update :encrypt_password
    private
    def encrypt_password()
        self.user_password = Digest::MD5.hexdigest(self.user_password)
    end

end

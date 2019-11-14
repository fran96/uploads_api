class User < ApplicationRecord
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable, :registerable,
         :jwt_authenticatable,
         jwt_revocation_strategy: JWTBlacklist
end

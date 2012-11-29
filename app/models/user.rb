class User < ActiveRecord::Base
  attr_accessible :username, :email, :password

  validates :username,  :presence => true,
  					:length => { :minimum => 5 }
  validates :password, :presence => true,
                    :length => { :minimum => 6 }
  validates :email, :presence => true
end
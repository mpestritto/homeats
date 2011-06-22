class BetaUser < ActiveRecord::Base
      validates :email, :presence => true, :email => true, :length => { :minimum => 5 }
end

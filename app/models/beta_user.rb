class BetaUser < ActiveRecord::Base
      validates :email, :presence => true, :email => true, :length => { :minimum => 5 }
      validates_uniqueness_of :email
end

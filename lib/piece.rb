require "active_record"

class Piece<ActiveRecord::Base
	belongs_to :user
end
class TweetTag < ApplicationRecord

	belongs_to :TweetTag
	belongs_to :tag 
	
end

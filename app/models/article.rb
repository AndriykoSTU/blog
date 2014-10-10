class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: { minimum: 5 }
	def change
		create_table :articles do |t|
			t.string :title
			t.text :text

			t.timestamps
		end
		
	end
end

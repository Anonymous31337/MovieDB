class Actor < ApplicationRecord
	has_and_belongs_to_many :movies

	def self.actors_to_s(actors)
		    actors.map(&:name).sort.join(', ')
		  end

	  def self.s_to_actors(s)
		    s.split(',').map(&:strip).map do |name|

			      # Actor.where(name: name).first_or_create
			      Actor.find_or_create_by(name: name)
			    end
		end

	def self.all_s
		Actor.all.order(:name).pluck(:fname,  :name).join(" ")
	end


	def full_name
			"#{fname} #{name}"
	end
end

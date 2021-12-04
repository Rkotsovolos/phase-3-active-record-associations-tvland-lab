class Show < ActiveRecord::Base
    
    has_many :characters
    belongs_to :network
    has_many :actors, through: :characters 

    def actors_list
        self.actors.map do |actor|
            first = actor.first_name 
            last = actor.last_name
            "#{first} #{last}"
        end
    end

end
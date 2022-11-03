class Audition < ActiveRecord::Base
    belongs_to :role
    # Audition#call_back will change the hired attribute to true

    def call_back
        self.hired = trueS
    end 

end
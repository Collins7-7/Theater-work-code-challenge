class Role < ActiveRecord::Base
    has_many :auditions

# Role#lead returns the first instance of the audition that was hired for this role
# or returns a string 'no actor has been hired for this role'
# Role#understudy returns the second instance of the audition that was hired for this role or returns a string 'no actor has been hired for understudy for this role'
 def actors
    self.auditions.map do |jina|
        jina.actor
    end
 end

 def locations
    self.auditions.map do |loc|
        loc.location
    end
 end

def lead
    self.auditions.filter do |ea|
        ea.hired 
        end.map do |all|  
        if all.hired == true
         all
        else  
        "no actor has been hired for this role"
        end  
    end.first 
end

def understudy
    self.auditions.filter do |ea|
        ea.hired 
        end.map do |all|  
        if all.hired == true
         all
        else  
        "no actor has been hired for understudy for this role"
        end  
    end.second
end

end
require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  new_data = {}
  names = []
  
  data.each do |attribute, inner_att|
    inner_att.each do |inner, pigeons|
      pigeons.each do |pigeon|  
        if !new_data[pigeon]
          new_data[pigeon] = {}
        end
        
      end   
    end
  end
  
  new_data
end

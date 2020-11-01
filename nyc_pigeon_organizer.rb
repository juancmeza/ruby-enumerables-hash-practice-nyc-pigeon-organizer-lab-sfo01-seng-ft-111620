require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  new_data = {}
  names = []
  
  data.each do |attribute, inner_att|
    inner_att.each do |inner, pigeons|
      pigeons.each do |pigeon|  
        names.push(pigeon)
        new_data[pigeon] = {}
      end   
    end
  end

  names = names.uniq 
  binding.pry

  data.each do |attribute, inner_att|
    inner_att.each do |inner, pigeons|
      pigeons.each do |pigeon|
        if !pigeons.find(pigeon)
          new_data[pigeon][attribute].push(inner_att.to_str)
        end
      end
    end
  end
  
  new_data
end

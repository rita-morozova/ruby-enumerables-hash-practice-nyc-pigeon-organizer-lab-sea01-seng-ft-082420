def nyc_pigeon_organizer(data)
  final_result = data.each_with_object({}) do |(key, value),  final_array| 
    
    value.each do |inner_key, names| # inner_key = [:purple], names = [array of names]
    
       names.each do |name|
        if !final_array[name] #if there is no Theo, create a new hash
          final_array[name] = {}
        end
        
        if !final_array[name][key] #if there is no Theo[:color]
          final_array[name][key] = []
        end 
        final_array[name][key].push(inner_key.to_s)
      end
    end
end 
end


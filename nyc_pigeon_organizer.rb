def nyc_pigeon_organizer(data)
  # write your code here!
  
  ans = Hash.new
  inner = {:color => [], :gender => [], :lives => []}
  
  data.each do |k1, v1|
    v1.each do |k, v|
      x = 0
      while x < v.length do
        temp = v[x]
        if !(ans.has_key?(temp))
          ans[temp] = inner
          ans[temp][k1].push(k.to_s)
        else
          ans[temp][k1].push(k.to_s)
        end
        x += 1
      end
    end
  end
  
  puts ans
  return ans
  
end

=begin
k1:color    
v1:{:purple=>["Theo", "Peter Jr.", "Lucky"], 
    :grey=>["Theo", "PeterJr.", "Ms. K"], 
    :white=>["Queenie", "Andrew", "Ms. K", "Alex"], 
    :brown=>["Queenie", "Alex"]}    

k:purple   
v:["Theo", "Peter Jr.", "Lucky"]

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}


puts "count: #{x}   temp:#{temp}    #{!(ans.has_key?(temp))}   #{v.include?(temp)}    #{k}  #{v}   #{v.length}"


=end
def nyc_pigeon_organizer(data)
  # write your code here!
  
  ans = Hash.new
  inner = {:color => [], :gender => [], :lives => []}
  
  data.each do |k1, v1|
    v1.each do |k, v|
      puts "k1:#{k1}    v1:#{v1}    k:#{k}    v:#{v}"
    end
  end
  
  #puts ans
  return ans
  
end

=begin
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
=end
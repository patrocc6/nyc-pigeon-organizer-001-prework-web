def nyc_pigeon_organizer(data)
	pigeon_list = Hash.new { |hash, key| hash[key] = Hash.new { |hash, key| hash[key] = [] } }
	data.each do |attribute, attr_choice|
		attr_choice.each do |attr_data, pigeons|
			pigeons.each do |pigeon|
				pigeon_list[pigeon][attribute] << attr_data.to_s
			end
		end
	end
	pigeon_list
end
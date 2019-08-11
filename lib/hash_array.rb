# require './sorting_array.rb'
# https://github.com/carlton84/hash-array.git

# numbers = [8, 7, 2, 6, 3]
# array.sort

def sorting(numbers)
 numbers.sort
end
# array(numbers)




# student = [{ name: 'Jack', age: 21 }, { name: 'Jill', age: 47 }]

def details(student)
  name = []

  student.each do |obj|
	  name << "my name is #{obj[:name]}, I am #{obj[:age]} years old"
   end
  name
end


 
# players = [{ name: 'Zlatan', brand: 'nike'}, { name: 'Walcott', brand: 'ADIDAS'},
#            { name: 'Roberts', brand: 'nike'}, { name: 'Hamilton', brand: 'puma'},
#            { name: 'Rossi', brand: 'adidas'}, { name: 'Muller', brand: 'nike'},
#            { name: 'Schwans', brand: 'PUMA'}, { name: 'Miller', brand: 'UMBRO'}]

def brand(players)
adidas = []
	nike = []
	players.each do |obj|
		if obj[:brand].downcase == "nike"
			nike << obj[:name]
		elsif obj[:brand].downcase == "adidas"
			adidas << obj[:name]
		end
	end

	{ nike: nike, adidas: adidas }
end

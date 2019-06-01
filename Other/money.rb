#! C:\Ruby25-x64\bin\ruby.exe

class Money
	COIN_TYPE = [1, 5, 10, 50, 100, 500]	
	def pay(have, bill)
		total = 0
		have.each_with_index do |y, i|
			total = total + (COIN_TYPE[i].to_i * y)
		end
		puts 'You Can not pay' if bill > total
	end
	def pay_back

	end
end

# main
bill = 836
you_have = [3, 5, 0, 2, 4, 1]
e = Money.new
e.pay(you_have, bill)

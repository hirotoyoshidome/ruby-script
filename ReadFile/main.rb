#! C:\Ruby25-x64\bin\ruby.exe
# encoding: utf-8

# read file with directory 
class Main
	def handle_file(dir, inc)
		list = read_dir(dir, inc)
		list.each do |file|
			file = File.open("#{dir}\\#{file}")
				# DO SOME WORK
				puts file.read
			file.close
		end
	end
	# private method
	# read directory
	private
	def read_dir(dir, inc)
		list = []
		dir_list = Dir::entries(dir)
	  dir_list.each do |file|
			list.push file if file.include?(inc)
		end
		return list
	end
end

# main execute
dir = ''
inc = '.txt'
m = Main.new
m.handle_file(dir, inc)

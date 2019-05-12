def read()
	wordCountMap = Hash.new
	lines = ARGF.readlines
	re = Regexp.new(/[a-ząęćłóńśźż|A-ZĄĘĆŁÓŃŚŹŻ]+/)
	lines.each do |line|
		#line = line.to_s.split
		#res = re.match(line.to_s)
		res = line.scan(re) {|re| 
			if (wordCountMap[re] == nil)
				wordCountMap[re] = 1
			else
				wordCountMap[re] += 1
			end
		}
		
	end
	result = wordCountMap.sort_by {|word, count| count}.to_h
	result = result.reverse_each.to_h
	puts result.first(100).to_h
end 


read()

require 'net/http'

def getPages
	threads = []

	for page in ARGV
			threads << Thread.new(page){ |myPage|
			puts "Fetching: #{myPage}"
			
			res = Net::HTTP.get_response(URI(myPage))
			a=myPage.sub(/http.?:\/\//,'')
			a=a.gsub(/\//,'-') 
			File.write('pages/'+a, res.body)

			puts "Got #{myPage}:  #{res.message}"
		}
	end

	threads.each { |aThread|  aThread.join }

end

getPages()
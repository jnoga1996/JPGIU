require 'net/http'
require 'open-uri'

def getImages
    re = Regexp.new(/<img[^>]+src=["|']([^">]+)["|']/)
    re2 = Regexp.new(/<a[^>]+href=["|']([^["|']>]+)"/)
    for page in ARGF
        images = page.scan(re)
        links = page.scan(re2)
        for image in images
            puts image[0].to_s
            File.write('images.txt', image[0].to_s+"\n", mode: 'a')
        end

        for link in links
            puts link[0].to_s
            File.write('links.txt', link[0].to_s+"\n", mode: 'a')
        end
    end
end

getImages()
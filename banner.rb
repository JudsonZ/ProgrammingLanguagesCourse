# contains method for banner 



def printBanner()
  bannerFile = File.open("rubyCryptBanner.txt")
  banner = bannerFile.read
  puts banner
  bannerFile.close
end  


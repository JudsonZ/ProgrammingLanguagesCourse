#!/usr/local/bin/ruby
#
#
#
#AUTHOR:              Zach Thompson
#INSTRUCTOR:          Terwilliger
#DATE:                03.09.21
#
#DESCRIPTION:         This program is an implementation of the Ruby OpenSSL/TLS module &
#                     is intended to be the client side portion of the build. New user creation creates and saves 
#                     Asymmetric RSA keys(public and private) as well as a symmetric AES cypher of the RSA private key
#
#
#                     TO DO:    -Effectively hide/ delete RSA private key in open after AES cypher
#                               -Ability to look up all user profiles / search with grep particular profiles
#                               -Ability to look up user contacts
#                               -TLS Record protocol for server convo
#                               -sign/encrypt with given pub key from contacts,
#                               -decrypt incoming with private key 


#tabnine auto-completion
TabNine::sem


#required Modules
require 'openssl'
require 'pstore'


#***************** CLASSES ************************
class
 Contact
  attr_accessor :username, :publicKey;
end

class User
  def printBanner(); end
  def splashMenu(); end
  def createNewUser(); end

  attr_accessor :username, :RSApublicKey, :RSAprivateKey, :AESkey, :contacts;
end


#*************************************************** 
#**************CLASS METHODS************************
#banner
def User.printBanner()
  bannerFile = File.open("rubyCryptBanner.txt")
  banner = bannerFile.read
  puts banner
  bannerFile.close
end

#New User Creation
def User.createNewUser()
  print "Enter username to be associated with the new profile:  "
  name = gets.to_s
  #{name} = User.new
  #{name}.name = #{name}
#experimental**************************************************
  passphrase1 = "a"
  passphrase2 = "z"
  until passphrase1 == passphrase2 do
    print "Enter a passphrase: "
    passphrase1 = gets.chomp.to_s
    puts " "
  
    print "Re-enter a passphrase: "
    passphrase2 = gets.chomp.to_s
    puts " "
    if passphrase1 != passphrase2
      put "Error non-matching passphrases, try again:"
    end
  end
  pass_phrase = passphrase1

  #creating RSA key pair  
  key = OpenSSL::PKey::RSA.new 2048

  open 'private_key.pem', 'w' do |io| io.write key.to_pem end
  open 'public_key.pem', 'w' do |io| io.write key.public_key.to_pem end
  
  #cipher using symmetric  AES-128
  cipher = OpenSSL::Cipher.new 'AES-128-CBC'

  key_secure = key.export cipher, pass_phrase

  open 'private.secure.pem', 'w' do |io|
    io.write key_secure
  end
  
  #saving RSA private key info locally
  privateKeyFile = File.open("private_key.pem")
  private = privateKeyFile.read
  #{name}.RSAprivateKey = private
  privateKeyFile.close
  
  #saving RSA public key info locally
  publicKeyFile = File.open("public_key.pem")
  public = publicKeyFile.read
  #{name}.RSApublicKey = public
  publicKeyFile.close

  #saving AES sym key
  aesKeyFile = File.open("private.secure.pem")
  aesKey = aesKeyFile.read
  #{name}.AESkey = aesKey
  aesKeyFile.close
  
  #Using PStore to save user info
  store = PStore.new("userInfoFiles")
  store.transaction do
    store[:user] || Array.new
    store[:user] << #{name}
  end
end

 
  

#Splash menu
def User.splashMenu()
  printBanner()
  puts " "
  puts " "
  print "OPTION SELECT:          (N)new user              (L)Select Existing              :  "
  selection = gets.chomp.to_s
  if selection == 'N'
    createNewUser()
  end
end

User.splashMenu()








#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer
require "pry"
def my_songs
my_songs = {
  "Go Go GO" => '/Users/Arnold/Desktop/Flatiron_School/Labs/jukebox-cli-denver-web-060319/audio/Emerald-Park/01.mp3',
  "LiberTeens" => '/Users/Arnold/Desktop/Flatiron_School/Labs/jukebox-cli-denver-web-060319/audio/Emerald-Park/02.mp3',
  "Hamburg" =>  '/Users/Arnold/Desktop/Flatiron_School/Labs/jukebox-cli-denver-web-060319/audio/Emerald-Park/03.mp3',
  "Guiding Light" => '/Users/Arnold/Desktop/Flatiron_School/Labs/jukebox-cli-denver-web-060319/audio/Emerald-Park/04.mp3',
  "Wolf" => '/Users/Arnold/Desktop/Flatiron_School/Labs/jukebox-cli-denver-web-060319/audio/Emerald-Park/05.mp3',
  "Blue" => '/Users/Arnold/Desktop/Flatiron_School/Labs/jukebox-cli-denver-web-060319/audio/Emerald-Park/06.mp3',
  "Graduation Failed" => '/Users/Arnold/Desktop/Flatiron_School/Labs/jukebox-cli-denver-web-060319/audio/Emerald-Park/07.mp3'
}
end
#/Users/Arnold/Desktop/Flatiron School/Labs/jukebox-cli-denver-web-060319/audio/Emerald-Park
def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end



def list
  my_songs.each do |song|
    puts "Song: #{song[0]}"
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  end
end


def play
puts "What song would you like to hear:"
 user_input = gets.chomp
if my_songs.include?(user_input)
   my_songs.each do |song, path|
   if song == user_input
    puts "playing #{song}"
    system "open #{path}"
      end
    end
  else puts "Sorry, we do not have that song. Please select another."
end
end

  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  

def exit_jukebox
  puts "Goodbye"
  #this method is the same as in jukebox.rb
end

def run(user_response)
  puts "Please enter a command:"
  user_response = gets.chomp
  if user_response == "list"
    list
  elsif user_response == "play"
    play
  elsif user_response == "help"
    help
  elsif user_response == "exit"
    exit_jukebox
  else puts "Please enter a valid command - test"
  end
  #this method is the same as in jukebox.rb
end

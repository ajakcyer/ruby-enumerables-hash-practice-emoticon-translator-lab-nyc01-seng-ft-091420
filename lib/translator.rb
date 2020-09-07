# require modules here
require 'pry'

require "yaml"
  
path = './lib/emoticons.yml'

def load_library(path)
  # code goes here
  
  hash = YAML.load_file(path)
  
  updated_hash = {}
  
  hash.each do |emoticon_name, eng_jap_arr|
    eng_jap_arr.each do |smiley|
      if updated_hash[emoticon_name] == nil
        updated_hash[emoticon_name] = {}
        updated_hash[emoticon_name][:english] = smiley
      else
        updated_hash[emoticon_name][:japanese] = smiley
      end
      
    end
  end
  updated_hash
end

puts load_library(path)





def get_japanese_emoticon(path, emoticon)
  # hash = load_library(path)
  
  
  # code goes here
end



def get_english_meaning(path, input)
  # code goes here
  meaning = load_library(path)
  translation =
  
  meaning.find
  
  meaning.each do |emoticon_name, eng_jap|
    #binding.pry
    if eng_jap[:japanese] == input
      return translation = emoticon_name
    end
  end
  
  return "Sorry that "
  #binding.pry
  
end

# binding.pry
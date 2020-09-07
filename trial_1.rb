# require modules here
require 'pry'

require "yaml"
  
path = './lib/emoticons.yml'

def load_library(path)
  # code goes here
  
  translator = YAML.load_file(path)
  
  updated_translator = {}
  
  translator.each do |emoticon_name, eng_jap_arr|
    eng_jap_arr.each do |smiley|
      if updated_translator[emoticon_name] == nil
        updated_translator[emoticon_name] = {}
        updated_translator[emoticon_name][:english] = smiley
      else
        updated_translator[emoticon_name][:japanese] = smiley
      end
      
    end
  end
  updated_translator
end

def get_japanese_emoticon(path, emoticon)
  # hash = load_library(path)
  # binding.pry
  # puts hash
  
  
  # code goes here
end

def get_english_meaning(path, input)
  # code goes here
  
  hash = load_library(path)
  translation =
  
  hash.each do |emoticon_name, eng_jap|
    
    if eng_jap.value?(input)
      translation = emoticon_name
    else
      translation = "Sorry, that emoticon was not found"
    end
    
    
    # eng_jap.each do |smiley|
      
    #   if smiley == input
    #     translation = emoticon_name
    #     # binding.pry
    #   else
    #     translation = "Sorry, that emoticon was not found"
    #   end
    #   # binding.pry
    # end
    # binding.pry
  end
  # binding.pry
return translation
# binding.pry
end

# binding.pry
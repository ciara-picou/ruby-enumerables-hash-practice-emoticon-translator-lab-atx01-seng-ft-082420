require "pry"
require "yaml"
def load_library(path)
  # code goes here
emoticon_hash = {}
  emoticons = YAML.load_file(path)
  emoticons.each do |emoticon_name, emoticon_array| 
    emoticon_hash[emoticon_name] = {
  english: emoticon_array[0] ,
  japanese: emoticon_array[1]
}
    end
emoticon_hash
  end

def get_japanese_emoticon(western_emoticon)
  load_library(lib/emoticons.yml)
  binding.pry
end

def get_english_meaning
  # code goes here
end
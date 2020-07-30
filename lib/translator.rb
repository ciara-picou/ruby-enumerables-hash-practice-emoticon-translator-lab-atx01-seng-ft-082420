
require "yaml"


def load_library(path)
$emoticon_hash = {}
emoticons = YAML.load_file(path)
  
  emoticons.each do |emoticon_name, emoticon_array| 
    $emoticon_hash[emoticon_name] = {
  english: emoticon_array[0] ,
  japanese: emoticon_array[1]
}
    end
$emoticon_hash
  end

def get_japanese_emoticon(path, western_emoticon)
  load_library(path)
  
  $emoticon_hash.map do |emoticon_name, language_hash|

      if language_hash.values[0] == western_emoticon
      return language_hash.values[1]
     end
  end
    return "Sorry, that emoticon was not found"
end



def get_english_meaning(path, japanese_emoticon)
  load_library(path)
  
  $emoticon_hash.map do |emoticon_name, language_hash|
      if language_hash.values[1] == japanese_emoticon
      return emoticon_name
        end
      end
      return "Sorry, that emoticon was not found"
  end

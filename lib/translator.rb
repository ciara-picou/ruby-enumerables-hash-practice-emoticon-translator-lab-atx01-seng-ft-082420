
require "yaml"
def load_library(path)
  # code goes here
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
  language_hash.map do |language, emoticon|
    if emoticon_name[:english] = emoticon
      p emoticon_name[:japanese]
 end
 end


def get_english_meaning
  # code goes here
end
# require modules here
require "pry"
require "yaml"

def load_library(file_path)
   emo = YAML.load_file(file_path)
   result = emo.each_with_object({}) do |(name, value), final_hash|
     if !final_hash[name]
       final_hash[name] = {
     :english => value[0],
     :japanese => value[1]
       }
   end
 end
  result
end

def get_english_meaning (file_path, japanese_emoticon)
  emoticons = load_library(file_path)
  sorry_message = "Sorry, that emoticon was not found"
  emoticons.each do |eng_meaning, emoticon|
      if emoticon[:japanese] == japanese_emoticon
        return eng_meaning 
end
end
sorry_message
end

def get_japanese_emoticon(file_path, english_word)
  emoticons = load_library(file_path)
  sorry_message = "Sorry, that emoticon was not found"
  emoticons.each do |jap_meaning, emoticon|
    if language[:english] == english_word
      return emoticon[:japanese] 
end
end
sorry_message
end


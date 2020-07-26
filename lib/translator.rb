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

def get_english_meaning (file_path, japanese_emo)
  emoticons = load_library(file_path)
  sorry_message = "Sorry, that emoticon was not found"
  emoticons.each do |eng_meaning, language|
      if language[:japanese] == japanese_emo
        puts eng_meaning 
      else
        puts sorry_message
end
end
end
eng_meaning
end

def get_japanese_emoticon(file_path, english_emo)
  emoticons = load_library(file_path)
  sorry_message = "Sorry, that emoticon was not found"
  emoticons.each do |jap_meaning, language|
    if language[:english] == english_emo
      jap_meaning = 
  
end
end
end


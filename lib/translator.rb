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
  emoticons.each do |emos, language|
      if emoticon[:japanese] == japanese_emo
        eng_translation = emos 
      else
        sorry_message
end
end
end
eng_translation
end

def get_japanese_emoticon(file_path, english_emo)
  
  translation = ""
  new_hash = load_library(yaml_file)
  new_hash.each do |name, languages|
    eng_emote == languages[:english]
    japanese_emote = languages[:japanese]
    if japanese_emote == passed_in_emote
      return eng_emote
end
end
end


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

def get_english_meaning (emoticon_library, japanese_emo)
  emoticon = load_library(file_path)
  eng_translation = ""
  sorry_message = "Sorry, that emoticon was not found"
  emoticons.each do |emos, language|
    language.each do |inner_key, emoticon|
      if emoticon == japanese_emo
        eng_translation = emos 
      end
end
      if eng_translation == ""
      eng_translation = sorry_message
end
end
eng_translation
end

def get_japanese_emoticon(yaml_file, eng_emoti)
  translation = ""
  new_hash = load_library(yaml_file)
  new_hash.each do |name, languages|
    eng_emote == languages[:english]
    japanese_emote = languages[:japanese]
    if japanese_emote == passed_in_emote
      return eng_emote
end
end



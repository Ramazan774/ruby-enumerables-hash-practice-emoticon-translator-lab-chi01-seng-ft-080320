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
  apology = "Sorry, that emoticon was not found"
  emoticons.each do |emotion, lang|
    lang.each do |inner_key, emoticon|
      if emoticon == j_emoticon
        eng_meaning = emotion
      end
end
if eng_meaning == ""
  eng_meaning = apology
end
end
eng_meaning
end
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



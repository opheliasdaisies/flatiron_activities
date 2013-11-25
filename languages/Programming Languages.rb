# Organizing Nested Data

# I have a collection of Programming Languages.  
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

by_language = {}
languages.each do |style, hash|
  hash.each do |language, hash2|
    by_language[language] ||= {}
    by_language[language][:style].nil? ? by_language[language][:style] = [style] : by_language[language][:style] << style
    hash2.each do |type_key, type_value|
      by_language[language][type_key] = type_value
    end
  end
end

p by_language

# I would like you to reformat the nested structure to be of the following form

# {
#   :ruby => {
#     :style => [:oo],
#     :type => "dynamic"
#   },
#   :python => {
#     :style => [:oo],
#     :type => "dynamic"
#   }
#   etc etc
# }
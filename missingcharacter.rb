
def pangram? str 
    char_only = ->(string) {string.split('').map(&:downcase).uniq.select{ |c| c =~ /[[:alpha]]/}}
    char_only[str].size.eql? 26
end

def pangram?(string)
    ('a'..'z').all? {|x| string.downcase.include? (x)}
end

def pangram?(string)
    string.downcase.scan(/[a-z]/).uniq.size == 26
end

def pangram?(s)
    ("A".."Z").to_a - s.upcase.chars == []
end


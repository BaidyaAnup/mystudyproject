# class Friend < Contact
# 	belongs_to :user
# 	validates :first_name, presence: true
# 	validates :last_name, presence: true
# 	validates :birthday, presence: true
# end


def method
str = ["look", "basant"]
arr = []
str.each do |s|
 if s.each_char.with_index.find {|c,i| s.count(c) > 1 && s[i]==s[i+1]}
 	arr << "true"
 end
 return arr
end

end           

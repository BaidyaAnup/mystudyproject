
# def explicit_block
#   yield# same as yield
# end

# explicit_block { puts "Explicit block called" }


# lam = ->(x){ puts x*2}
# lam.call(2)

# pro = Proc.new {|x,y| puts 'i dont care abt arguments'}
# pro.call


# # # Should work
# # my_lambda = -> { return 1 }
# # puts "Lambda result: #{my_lambda.call}"

# # # Should raise exception
# # my_proc = Proc.new { return 1 }
# # puts "Proc result: #{my_proc.call}"


# # Page caching is done by web server where the web request have to come to the rails stack.
# # Action caching is similar to page caching except the web request has to hit the rails stack.

# puts ENV['PATH']
# #puts ENV['EDITOR']


# module Foo
#   # def self.included(base)
#   #   base.class_eval do
#   #     def self.method_injected_by_foo
#   #       puts "i m module"
#   #     end
#   #   end
#   # end
#   def self.included(base) 
#   	base.class_eval do 
#   		def method1
#   			puts "fsssfsfs"
#   		end
  	
# 	end

# 	def method2
# 		puts "hesfsfsd"
# 	end
#   end
#  # def method1
#  # 	puts "heko"
#  # end


# end

# # module Bar
# #   def self.included(base)
# #     base.method_injected_by_foo
# #   end
# # end

# class Host
#   include Foo # We need to include this dependency for Bar
#   #include Bar # Bar is the module that Host really needs
# end

# class Prey
# extend Foo
# end

# h = Host.new
# h.method2

# #Foo.method2
# # Prey.method1
# require 'active_support/concern'

# module Foo
#   extend ActiveSupport::Concern
#   included do
#     def self.method_injected_by_foo
#       puts "hello"
#     end
#   end
# end

# module Bar
#   extend ActiveSupport::Concern
#   include Foo

#   included do
#     self.method_injected_by_foo
#   end
# end

# class Host
#   include Bar # It works, now Bar takes care of its dependencies
# end

# Host.method_injected_by_foo

# str = ["look", "basant"]
# arr = []
#   str.each do |s|
#    if s.each_char.with_index.find {|c,i| s.count(c) > 1 && s[i]==s[i+1]}
#     arr << "true"
#   else
#     arr << "false"
#    end
#   end
#  p arr           
require 'pry'

 str = ["look", "basant"]

 
def result(str)
  arr = []
  str.each do |i|
    arr << find_seq_dub(i)
  end
  p arr
end


def find_seq_dub(str)
  arr = []
  s = str.split("") 
   s.each_with_index do |c,i|
     a = s.select { |c| s.count(c) > 1 } 
     binding.pry
     if a.first == s[i + 1]
      return true
    else
      return false
    end


  end
      

end

result(str)






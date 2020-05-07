
# attr_accessor挙動確認
# class User
#   attr_accessor :a, :b
  
#   def okada
#     puts a.upcase + b.upcase
#   end
# end

# user = User.new

# user.a = "hello"

# user.b = "world"

# user.okada

# dup挙動確認
# a = [{:a => 1}, {:b => 2}, {:c => 3}]
# b = a
# c = b.dup
# d = b

# puts a.object_id
# puts b.object_id
# puts c.object_id

# puts c

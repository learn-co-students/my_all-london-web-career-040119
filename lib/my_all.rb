require 'pry'

# def my_all?(collection)
#   i = 0
#   ret = []
#   while i < collection.length
#     ret << yield(collection[i])
#     i += 1
#   end
#   !ret.include?(false)
# end

def my_all?(collection)
  i = 0
  while i < collection.length
    return false if yield(collection[i]) == false

    i += 1
  end
  true
end

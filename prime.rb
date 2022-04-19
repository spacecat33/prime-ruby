# if integer <= 0
#     return false
# elsif integer == 1
#     return false
# elsif integer <= 3
#     return true
# elsif integer.modulo(2) == 0 || integer.modulo(3) == 0 || integer.modulo(5) == 0 || integer.modulo(7) == 0
#     return false
# else 
#     return true
# end

def prime?(integer)
    if integer <= 1 
        return false
    else
        (2..integer-1).to_a.all? do |current_number|  #.to_a is not needed to pass this test
            integer % current_number != 0
        end
    end
end 


#OR

def prime?(integer)
    i = 2 
    while i < integer 
      return false if integer % i == 0 
      i = i + 1
    end 
    integer > 1 ? true : false
  end

  
#OR

def prime?(integer)
    if integer <= 1
        return false
    else 
        (2..integer/2).none? do |i|
            integer % i == 0
        # integer ** (1/3) 
        end
    end
end

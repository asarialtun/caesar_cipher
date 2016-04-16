def caesar_cipher(message, key)
  key = key%26
  input_array = message.split('').to_ascii
  
  encrypted_array = input_array.map do |item|

    if item >= 65 && item <= 90 #Capital letter
        
        if item + key > 90
            item = item + key-26
        else
            item = item + key
        end
        
    elsif item >=97 && item <=122 #Small letter
        if item + key > 122
            item = item+key-26
        else
            item = item + key
        end
    end
    
  end
  
 return encrypted_array.to_char.join

  
end

class Array
    def to_ascii 
        self.map! do |char|
       char=char.ord
        end
   return self
   end
   
   def to_char
        self.map! do |char|
        char=char.chr
        end
    return self
    end
end
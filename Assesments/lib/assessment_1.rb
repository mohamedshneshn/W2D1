# Define your methods here.

def my_map! (arr,&prc)

    arr.each_with_index do |ele,i|
        if prc.call(ele)
            arr[i] = prc.call(ele)
        end
    end
arr
end
# -------------------------------------------------
def two? (arr,&prc)
    arr.count {|ele| prc.call(ele)} == 2

end
# ---------------------------------------------------
def nor_select (arr,prc1,prc2)
  
    arr.select {|ele| !prc1.call(ele) && !prc2.call(ele) }
end
# ------------------------------------------------------

def array_of_hash_sum (arr)

    sum=0
    arr.each { |hash| sum+=hash.values.sum }
    sum
end
# --------------------------------------------------------
def slangify (sent) #follow the yellow brick road== fllow th yllow brck rad
    
    newSent=[]
    sent.split(" ").each do |word|
    newSent << change_word(word)
    end
    newSent.join(" ")
end

def change_word (word)
    vowels="aeiouAEIOU"
    word.each_char.with_index do |char,i|
        if vowels.include?(char)
            return word[0...i]+word[i+1..-1]
        end
    end
end
# -------------------------------------------------------------
def char_counter (str,*args) #'mississippi', 'm', 'i')).to eq({'m'=>1, 'i'=>4}
    hash=Hash.new(0)
    if args.length ==0
        str.each_char do |char|
            hash[char]+=1
        end
    else
        args.each do |char|
            hash[char]=str.count(char)
        end
    end
    
    hash
end
-----------------------------------------------
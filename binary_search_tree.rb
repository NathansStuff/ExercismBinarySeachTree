class Bst

    def initialize(num)
        @left = nil
        @num = num
        @right = nil
        @data = []
    end

    # attr_reader
    def data
        return @num
    end

    def insert(num2)
        # New num lesser?
        if num2 < @num 
            if @left == nil # Does not overwrite old data
                @left = Bst.new(num2)
            else # Instead, goes down one level of the tree and then reruns the function again
                @left.insert(num2)
            end
        # New num greater?
        elsif num2 > @num 
            if @right == nil # No overwriting
                @right = Bst.new(num2)
            else # Go down one level and repeat function
                @right.insert(num2)
            end
        # Do nothing if num equal (already exists)
        end
    end

    def left
        # If left does not exist, does not return a new value but keeps the old
        if @left != nil
            return @left
        else   
            return self
        end
    end

    def right
        # If right does not exist, does not return a new value but keeps the old
        if @right != nil
            return @right
        else
            return self
        end
    end

    def each(&block)

    
        block.call(self.data)
        


    #     puts @num #works
    #     gets
    #     @data << @num
    #     puts @data # Updates to the value of num
    #     gets
    #     return @data # The .record_all_data method is returning an empty array after the method. 
        # The value of 4 is returned by the each function...


        # def record_all_data(bst)
        #     all_data = []
        #     bst.each { |data| all_data << data } 
        #     all_data
        #   end


    end

end
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

    def each(&block) # Uses the block of code passed directly after this method was called
        
        if @left != nil
            left.each(&block) # Go down a level and call the function again
        end

        begin
            block.call(self.data) # For the specific calling of this method, return the data
        rescue NoMethodError # If not passed any block data; (nil method for nilclass)
            return enum_for(:each) #NFI
        end
        
        if @right != nil
            right.each(&block) # Go down a level and call the function again
        end














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
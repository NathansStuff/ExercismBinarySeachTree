class Bst
    def initialize(num)
        @left = nil
        @num = num
        @right = nil
    end

    def data
        return @num
    end

    def insert(num2)
        
        if num2 < @num # New num lesser?
            if @left == nil # Does not overwrite old data
                @left = Bst.new(num2)
            else # Instead, goes down one level of the tree and then reruns the function again
                @left.insert(num2)
            end
        elsif num2 > @num # New num greater?
            if @right == nil # No overwriting
                @right = Bst.new(num2)
            else # Go down one level and repeat function
                @right.insert(num2)
            end
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

end
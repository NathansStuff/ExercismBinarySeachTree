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
            @left = Bst.new(num2)
        elsif num2 > @num # New num greater?
            @right = Bst.new(num2)
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
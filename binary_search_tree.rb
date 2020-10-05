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
        # Only if new num is lesser
        if num2 < @num
            @left = Bst.new(num2)
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

end
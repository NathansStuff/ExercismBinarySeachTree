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
        @left = Bst.new(num2)
    end

    def left
        return @left
    end

end
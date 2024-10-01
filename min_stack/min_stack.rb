class MinStack
    def initialize()
        @stack = Array.new()
    end

    def push(val)
        @stack.push(val)
    end

    def pop()
        @stack.pop
    end

    def top()
        @stack.last
    end

    def get_min()
        @stack.sort.first
    end
end

#My tests

obj = MinStack.new()
obj.push(1)
obj.pop()
param_3 = obj.top()
param_4 = obj.get_min()

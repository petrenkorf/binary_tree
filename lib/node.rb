module Tree
  class Node
    attr_reader :value, :right, :left

    def initialize(value)
      @value = value
      @left  = nil
      @right = nil
    end

    def remove(value)
      @value = nil if @right.nil? and @left.nil? and @value == value
    end

    def search(value)
      node = nil

      node = self if @value == value
      node = @right.search(value) if value > @value and not @right.nil?
      node = @left.search(value) if value < @value and not @left.nil?

      node
    end

    def insert(value)
      if value > @value
        if @right.nil?
          @right = Node.new(value)
        else
          @right.insert(value)
        end
      else
        if @left.nil?
          @left = Node.new(value)
        else
          @left.insert(value)
        end
      end
    end
  end
end
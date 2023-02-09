class BinaryTreeNode
  attr_accessor :value, :right, :left

  def initialize(value)
    @value = value
    @right = nil
    @left = nil
  end

  def insert(value)
    if value > @value 
      if @right.nil?
        @right = BinaryTreeNode.new(value)
      else
        @right.insert value
      end
    elsif value < @value
      if @left.nil?
        @left = BinaryTreeNode.new(value)
      else
        @left.insert value
      end
    end
  end
end

class BinaryTreeNode
  attr_accessor :value, :right, :left

  def initialize(value)
    @value = value
    @right = NullNode.new
    @left  = NullNode.new
  end

  def replaces?(node) = node.instance_of?(NullNode)
  
  def replace_by?(node) = node.replaces?(self) ? node : self

  def insert(value)
    return @right = @right.replace_by?(@right.insert(value)) if value > @value

    @left = @left.replace_by?(@left.insert(value))
  end
end

class NullNode
  def insert(value) = BinaryTreeNode.new(value)

  def nil? = true

  def replace_by?(node) = node 
end

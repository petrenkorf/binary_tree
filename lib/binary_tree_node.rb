class BinaryTreeNode
  attr_accessor :value, :right, :left

  def initialize(value)
    @value = value
    @right = NullNode.new
    @left  = NullNode.new
  end

  def replaces?(node) = node.instance_of?(NullNode)
  
  def replace_by?(node) = node.replaces?(self) ? node : self

  def insert_right(value) = @right = @right.replace_by?(@right.insert(value))

  def insert_left(value) = @left = @left.replace_by?(@left.insert(value))

  def insert(value) = (value > @value) ? insert_right(value) : insert_left(value)
end

class NullNode
  def insert(value) = BinaryTreeNode.new(value)

  def nil? = true

  def replace_by?(node) = node 
end

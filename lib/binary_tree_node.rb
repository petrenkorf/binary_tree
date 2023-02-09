class BinaryTreeNode

  attr_accessor :value, :right, :left

  def initialize(value)
    @value = value
    @right = NullNode.new
    @left  = NullNode.new
  end

  def replaces?(node) = node.instance_of?(NullNode)

  def insert_right(value)
    new_node = @right.insert(value)
    @right = new_node if new_node.replaces? @right
    @right
  end

  def insert_left(value)
    new_node = @left.insert(value)
    @left = new_node if new_node.replaces? @left
    @left
  end

  def insert(value) = (value > @value) ? insert_right(value) : insert_left(value)
end

class NullNode
  def insert(value) = BinaryTreeNode.new(value)

  def nil? = true
end

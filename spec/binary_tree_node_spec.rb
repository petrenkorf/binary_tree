require 'spec_helper'
require 'binary_tree_node'

RSpec.describe BinaryTreeNode do
  it 'is initialized with value' do
    expect(BinaryTreeNode.new(1)).to be_truthy
  end

  it 'returns the value initialized' do
    expect(BinaryTreeNode.new(1).value).to be_truthy
  end

  describe '#insert' do
    let (:node) { BinaryTreeNode.new(3) }

    context 'when insert value is greater than current' do
      it 'inserts to the right node' do
        node.insert(4)
        expect(node.right.value).to be(4) 
      end

      it 'inserts recursively' do
        node.insert 5
        node.insert 6
        node.insert 7
        node.insert 8
        expect(node.right.value).to be(5) 
        expect(node.right.right.value).to be(6) 
        expect(node.right.right.right.value).to be(7) 
        expect(node.right.right.right.right.value).to be(8) 
      end
    end

    context 'when insert value is smaller than current' do
      it 'inserts to the left node' do
        node.insert(2)
        expect(node.left.value).to be(2) 
      end

      it 'inserts recursively' do
        node.insert 2
        node.insert 1
        node.insert 0
        node.insert -1
        expect(node.left.value).to be(2) 
        expect(node.left.left.value).to be(1) 
        expect(node.left.left.left.value).to be(0) 
        expect(node.left.left.left.left.value).to be(-1) 
      end
    end
  end
end

require 'node'

RSpec.describe Tree::Node do
  it "stores a value" do
    expect(Tree::Node.new(1).value).to be(1)
  end

  it "is created with null nodes" do
    expect(Tree::Node.new(1).right).to be(nil)
    expect(Tree::Node.new(1).left).to be(nil)
  end

  describe "search" do
    context "tree contains the value" do
      context "single node" do
        it "returns the node containing specified value" do
          node = Tree::Node.new(1)

          expect(node.search(1)).to be(node)
        end
      end

      context "the specified value is a child in tree" do
        it "returns the node containing specified value" do
          root = Tree::Node.new(2)
          root.insert(4)
          root.insert(1)

          expect(root.search(4)).to be(root.right)
          expect(root.search(1)).to be(root.left)
        end
      end
    end

    context "tree does not contain the specified value" do
      it "returns nil" do
        root = Tree::Node.new(1)
        root.insert(4)

        expect(root.search(7)).to be_nil
      end
    end
  end

  describe "insert value to node" do
    context "value is greater than value from current node" do
      it "create new node on the right" do
        sut = Tree::Node.new(4)
        sut.insert(6)

        expect(sut.right).to_not be_nil
        expect(sut.right.value).to be(6)
      end

      it "calls insert on right node if right node exists" do
        sut = Tree::Node.new(4)
        sut.insert(6)
        sut.insert(7)

        expect(sut.right.right.value).to be(7)
      end
    end

    context "value is lesser than value from current node" do
      it "create new node on the left" do
        sut = Tree::Node.new(4)
        sut.insert(3)

        expect(sut.left).to_not be_nil
        expect(sut.left.value).to be(3)
      end

      it "calls insert on left node if left node exists" do
        sut = Tree::Node.new(4)
        sut.insert(3)
        sut.insert(2)

        expect(sut.left.left.value).to be(2)
      end
    end
  end

  describe "delete value from tree" do
    context "node is root and has no children" do
      it "simply set value as nil" do
        root = Tree::Node.new(1)
        root.remove(1)

        expect(root.value).to be_nil
      end
    end

    context "node has no children" do
      it "simply removes node" do
        root = Tree::Node.new(1)
        root.insert(2)
        root.remove(2)

        expect(root.right).to be_nil
      end
    end

    context "node has one child" do
      it "removes the node and move the child upwards"
    end

    context "node has two children" do
      it ""
    end
  end
end
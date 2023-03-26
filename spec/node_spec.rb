require "rspec"
require "./lib/node"

RSpec.describe Node do
  it "exists" do
    node = Node.new("plop")
    
    expect(node.data).to eq("plop")
  end
  
  it "has an empty node behind it" do
    node = Node.new("plop")
    
    expect(node.data).to eq("plop")
    expect(node.next_node).to be(nil)
  end

  it "will be the tail if it is the last node" do
    node = Node.new("plop")

    expect(node.tail?).to eq(true)
  end

end

#   xit "Makes a Node" do
#     node = Node.new("plop")

#     expect(node).to an_instance_of(Node)
#     expect(node.sound).to eq("plop")
#     expect(node.next_node).to eq(nil)
#   end
# end
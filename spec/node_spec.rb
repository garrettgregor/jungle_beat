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
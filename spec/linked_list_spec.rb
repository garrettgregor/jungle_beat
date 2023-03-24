require "rspec"
require "./lib/node"
require "./lib/linked_list"

RSpec.describe LinkedList do
  it "exists" do
    list = LinkedList.new

    expect(list).to be_an_instance_of(LinkedList)
  end
  
  it "has an empty head" do
    list = LinkedList.new

    expect(list.head).to be(nil)
  end
  
  it "has an empty head" do
    list = LinkedList.new
    expect(list.head).to be(nil)
    
    list.append("doop")
    expect(list.append("doop")).to eq("doop")
  end
  
  it "contains data" do
    list = LinkedList.new
    list.append("doop")

    expect(list.append("doop")).to eq("doop")
    expect(list).to be_a(LinkedList)
    expect(list.head).to be_a(Node)
    expect(list.head.data).to eq("doop")
  end
  
  it "has an empty next node" do
    list = LinkedList.new
    list.append("doop")

    
    expect(list.head).to be_a(Node)
    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq(nil)
  end
  
  it "can count nodes" do
    list = LinkedList.new
    list.append("doop")
    
    expect(list.head).to be_a(Node)
    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq(nil)
    expect(list.count).to eq(1)
  end

  it "can give the output as a string" do
    list = LinkedList.new
    list.append("doop")
    
    expect(list.count).to eq(1)
    expect(list.to_string).to eq("doop")
  end

end

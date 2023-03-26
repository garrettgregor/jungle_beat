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
  
  it "can append nodes to the linked list" do
    list = LinkedList.new
    
    expect(list.head).to be(nil)
    expect(list.append("doop")).to eq("doop")
  end
  
  it "contains data" do
    list = LinkedList.new

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

  it "checks for last node" do
    list = LinkedList.new
    list.append("doop")

    expect(list.last_node(list.head)).to be(list.head)
  end
  
  it "can append Multiple Nodes" do
    list = LinkedList.new

    expect(list).to be_an_instance_of(LinkedList)
    expect(list.head).to eq(nil)
    
    list.append("doop")
    expect(list.head.data).to eq("doop")
    expect(list.head).to be_an_instance_of(Node)
    expect(list.head.next_node).to eq(nil)
    
    list.append("deep")
    expect(list.head.next_node.data).to eq("deep")
  end
  
  it "can count multiple Nodes" do
    list = LinkedList.new

    expect(list).to be_an_instance_of(LinkedList)
    expect(list.head).to eq(nil)
    
    list.append("doop")
    expect(list.head.data).to eq("doop")
    expect(list.head).to be_an_instance_of(Node)
    expect(list.head.next_node).to eq(nil)
    
    list.append("deep")
    expect(list.head.next_node.data).to eq("deep")
    expect(list.count).to eq(2)
  end
  
  
  it "return an empty string if the string is empty" do
    list = LinkedList.new

    expect(list.to_string).to eq("")
  end

  it "can put one nodes' data to a single string" do
    list = LinkedList.new
    list.append("doop")

    expect(list.to_string).to eq("doop")
  end
  
  it "can put two nodes' data to a single string" do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
 
    expect(list.to_string).to eq("doop deep")
  end
  
  it "Append, All/To String, and Insert (Multiple Nodes)" do
    list = LinkedList.new

    expect(list).to be_an_instance_of(LinkedList)
    expect(list.head).to eq(nil)
    
    list.append("doop")
    expect(list.head.data).to eq("doop")
    expect(list.head).to be_an_instance_of(Node)
    expect(list.head.next_node).to eq(nil)
    
    list.append("deep")
    expect(list.head.next_node.data).to eq("deep")
  end

end

require "rspec"
require "./lib/node"
require "./lib/linked_list"

RSpec.describe LinkedList do
  ### Iteration 1 
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
  
  ### Iteration 2
  it "can string more than 2 nodes together" do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.append("dop")

    expect(list.to_string).to eq("plop suu dop")
    expect(list.count).to eq(3)
  end
  
  it "can prepend nodes to the linked list" do
    list = LinkedList.new
    list.append("plop")

    expect(list.to_string).to eq("plop")

    list.append("suu")
    list.prepend("dop")
    
    expect(list.to_string).to eq("dop plop suu")
    expect(list.count).to eq(3)
  end
  
  it "can insert nodes as a specific index" do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    expect(list.to_string).to eq("dop plop suu")
    expect(list.count).to eq(3)

    expect(list.insert(1, "woo")).to eq("woo")
  end
  
  it "can print all of its nodes' data to a string" do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    expect(list.to_string).to eq("dop plop suu")
    expect(list.count).to eq(3)
    
    list.insert(1, "woo")

    expect(list.to_string).to eq("dop woo plop suu")
  end
  
  it "can find nodes' data at a particular location" do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.to_string).to eq("deep woo shi shu blop")
    expect(list.find(2,1)).to eq("shi")
  end
  
  it "can find multiple nodes' data at a particular location and then return multiple nodes data in a string" do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.to_string).to eq("deep woo shi shu blop")
    expect(list.find(1,3)).to eq("woo shi shu")
  end
  
  it "can see if a piece of data is in the LinkedList" do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.includes?("deep")).to eq(true)
    expect(list.includes?("dep")).to eq(false)
  end
  
  it "can pop the last object" do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    
    expect(list.pop).to eq("blop")
  end
  
  it "can pop more than object" do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    list.pop

    expect(list.pop).to eq("shu")
  end

end

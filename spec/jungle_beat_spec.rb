require "rspec"
require "./lib/node"
require "./lib/linked_list"
require "./lib/jungle_beat"

RSpec.describe JungleBeat do
  it "exists" do
    jb = JungleBeat.new

    expect(jb).to be_an_instance_of(JungleBeat)
  end
  
  it "contains a LinkedList object and its head is nil" do
    jb = JungleBeat.new
    
    expect(jb.list).to be_a(LinkedList)
    expect(jb.list.head).to be(nil)
  end
  
  it "can append into the linkedlist append method" do 
    jb = JungleBeat.new

    expect(jb.append("deep doo ditt")).to eq("deep doo ditt")
    expect(jb.list.head.data).to eq("deep")
    expect(jb.list.head.next_node.data).to eq("doo")
  end
  
  it "can count the number of nodes in the list" do 
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")
    
    expect(jb.count).to eq(6)
  end
end
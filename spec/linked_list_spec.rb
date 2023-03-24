require "rspec"
require "./lib/node"
require "./lib/linked_list"

RSpec.describe LinkedList do
  it "exists" do
    list = LinkedList.new

    expect(list).to be_an_instance_of(LinkedList)
  end
end

# => <LinkedList head=nil #45678904567>
# > list.head
# => nil
# > list.append("doop")
# => "doop"
# > list
# => <LinkedList head=<Node data="doop" next_node=nil #5678904567890> #45678904567>
# > list.head.next_node
# => nil
# > list.count
# => 1
# > list.to_string
# => "doop"
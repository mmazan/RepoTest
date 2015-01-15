#stack_spec.rb
class Stack < Array

end

describe Stack do 
    it "remains unchanged after a push/pop sequence" do
	    test_stack = Stack.new
	    original_stack = test_stack.clone
	    test_stack.push('fish')
	    test_stack.pop 
	    test_stack.expect == original_stack
	end
end 
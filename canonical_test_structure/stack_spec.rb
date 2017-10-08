require_relative 'stack'
require_relative 'give_when_then'

describe Stack do
  it 'should push a given item' do
   Given { @stack = Stack.new }
   When { @stack.push(1) }
   Then { expect(@stack.size).to eq 1 }
  end
  it 'should pop from the stack' do
    Given { @stack = Stack.new }
    When { @stack.push(2) }

    When { @result = @stack.pop }

    Then { expect(@result).to eq 2 }
    Then { expect(@stack.size).to eq 0 }
  end
end

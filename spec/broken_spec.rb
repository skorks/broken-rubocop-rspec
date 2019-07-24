# frozen_string_literal: true

class Broken
end

class Foo
  class Baz
  end
end

class Bar
  class Baz
  end
end

RSpec.describe Broken do
  [Foo, Bar].each do |klass|
    describe klass::Baz.name do
      it 'works' do
        hello = 'hello'
        expect(hello).to eql 'hello'
      end
    end
  end
end

require 'book'

describe Book do
  it 'fails to create book' do
    book = build(:book)
    expect(book.save).to be_falsy
  end
end

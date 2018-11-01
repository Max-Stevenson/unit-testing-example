require 'library'
	
describe Library do 

	describe '#list_books' do
		it 'can return a list of all stored books' do
			library = Library.new

			expect(library.list_books).to eq(library.books)
		end
	end
end
require 'library'
	
describe Library do 
	# Method name tested
	describe '#list_books' do
		# Explanation of expected method behavior
		it 'can return a list of all stored books' do
			# Arrange
			library = Library.new
			# Act and Assert
			expect(library.list_books).to eq(library.books)
		end
	end
	# Method name tested
	describe '#add_book' do
		# Explanation of expected method behavior
		it 'adds a new book object to books' do
			# Arrange
			book = {title: 'I am a book', author: 'test', subject: 'test'}
			library = Library.new
			# Act
			library.add_book(book)
			# Assert
			expect(library.list_books).to include(book)
		end
	end
	# Method name tested
	describe '#find_book' do
		# Explanation of expected method behavior
		it 'returns a book matching the title' do
			# Arrange
			book = {title: 'find me', author: 'test', subject: 'test'}
			library = Library.new
			# Act
			library.add_book(book)
			# Assert
			expect(library.find_book('find me')).to eq(book)
		end
	end
end
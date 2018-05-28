#require "pry"
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board,index) && display_board(board)
  else 
    turn(board)
  end
end

#method to display board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
	puts "-----------"
	puts " #{board[3]} | #{board[4]} | #{board[5]} "
	puts "-----------"
	puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#input_to_index
def input_to_index(input)
input.to_i - 1
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
  #board[index] != " "
end

# move
def move(board, index, current_player = "X")
#binding.pry
board[index] = current_player
end

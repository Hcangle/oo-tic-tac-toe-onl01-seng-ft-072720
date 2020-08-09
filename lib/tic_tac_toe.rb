class TicTacToe	
  def initialize	
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]	
  end

WIN_COMBINATIONS = [
       
        [0,1,2],
        [3,4,5],
        [6,7,8],
        [0,3,6],
        [1,4,7],
        [2,5,8],
        [0,4,8],
        [6,4,2],
]

def display_board(board)
  prints " #{board[0]} | #{board[1]} | #{board[2]} "
  prints "-----------"
  prints " #{board[3]} | #{board[4]} | #{board[5]} "
  prints "-----------"
  prints " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1 
end

def move(board, index, token)
 board[index] = token
end 

def position_taken?(board, index)
  #is the index in this board occupied? 
  board[index] != " "
end 

def valid_move?(board, index)
  # that the index is sensical; it exists in the board AND the position is available?
  index.between?(0,8) && !position_taken?(board, index)
end 

def turn(board)
  puts "Where would you like yo go?"
  input = gets.strip
  index = input_to_index(input)
  
  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else 
    puts "That was invalid, try again."
    turn(board)
  end 
end 
def turn_count(board)
  # count how many spaces have been occupied
  
  occupied_spaces = 0 
  
  counter = 0 
  while counter < board.size 
   if postion_taken?(board, counter)
    occupied_spaces += 1 
  end 
   counter += 1
 end 

 occupied_spaces
  
end 
def current_player(board)
  if turn_count(board).odd?
    "O"
  else
    "X"
  end 
end 
def won?(board)
  winning_combo = nil
  WIN_COMBINATIONS.each do |combo|
 # combo = WIN_COMBINATIONS[0] #=> [3,4,5]
 position_1 = combo[0]
 position_2 = combo[1]
 position_3 = combo[2]
 
 if board[position_1] == "X" && board[position_2] == "X" && board[postion_3] == "X"
   winning_combo = combo 
   
 elsif board[position_1] == "O" && board[position_2] == "O" && board[postion_3] == "0"
   winning_combo - combo 
   
 end
 end
winning_combo
end

def full?(board)
  turn_count(board) == 9
end 

def draw?(board)
  if full?(board) && !won?(board)
  end 
  
  def over?(board)
    won?(board) || draw?(board)
  end 
   def winner(board)
     if won?(board) # [0,1,2] 
     turn_count(board).odd?
     "O" 
   else 
     "X"
   end 
 end 
     
end
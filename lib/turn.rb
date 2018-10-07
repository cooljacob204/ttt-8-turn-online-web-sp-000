def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(move)
  return  move.to_i - 1
end

def position_taken?(board, move)
  if (board[move] == "X" or board[move] == "O")
    return TRUE
  end
  return FALSE
end

def valid_move?(board, move)
  if (move != -1 && ((move < 9 && move >= 0) && !position_taken?(board, move))) 
    return TRUE
  end
  return FALSE
end

def move(board, move, player = "X")
    board[move] = player
    return board
  else
    puts "Invalide move, please enter again"
    move = input_to_index(gets)
    return move(board, move, player)
  end
end

def turn(board)
  puts "Please enter 1-9:"
  move = gets
  move = input_to_index(move)
  
  if valid_move?(board, move)
  move(board, move, turn)
  display_board(board)
end
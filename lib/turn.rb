def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
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
  if (valid_move?(board, move))
    board[move] = player
    return board
  else
    puts "Invalide move, please enter again"
    move = gets
    move = move.to_i - 1
    return move(board, move, player)
  end
end

def turn
  board = ["","","","","","","","",""]
  turn = "X"
  loop do
    puts "Welcome to Tic Tac Toe!"
    display_board(board)
    puts "Please enter 1-9"
    move = gets
    move = move.to_i - 1
    move(board, move, turn)
    display_board(board)
    if (turn == "X")
      turn = "O"
    else
      turn = "X"
    end
  end
end
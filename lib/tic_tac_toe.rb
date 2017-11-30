class TicTacToe
  def initialize(board = nil)
     @board = board || Array.new(9, " ")
   end
   WIN_COMBINATIONS = [
        [0,1,2],
        [3,4,5],
        [6,7,8],
        [0,3,6],
        [1,4,7],
        [2,5,8],
        [0,4,8],
        [6,4,2]
      ]
      def display_board
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts "-----------"
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts "-----------"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
      end
      def input_to_index(user_input)
        user_input.to_i - 1
      end
      def move(index, current_player = "X")
      @board[index] = current_player
    end
    def position_taken?(location)
    if  @board[location] != " " && @board[location] != ""
      return true
    else return false
    end
  end

  def valid_move?(location)
    if location.between?(0,8) && !position_taken?(location)
     true
  end
  else false
  end
end
  def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(location)
    move(index, current_player = "X")
    @board
  else
    if !won?(board)
      return turn(board)
  end
end

end

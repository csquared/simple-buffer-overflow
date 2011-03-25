multiples = (1..64).to_a.select{ |x| x % 2 == 0 }

def c_program(i,j)
  return <<-c_prog
    #include <stdio.h>

    void function( int a, int b ) {
      char buffer1[5];
      char buffer2[10];
      int *ret;
      ret = buffer1 + #{i};
      (*ret) += #{j};
    }

    int main() {
      int x;
      x = 0;
      //this function is going to cause the next
      //line to get skipped
      function(1,2);
      x = 1;
      printf("%d",x);
    }
  c_prog
end

multiples.each do |i|
  multiples.each do |j|
    current_program = c_program(i,j)
    File.open("current.c", "w") do |file|
      file << current_program 
    end
    `gcc current.c 2>/dev/null`
    result = `./a.out`
    
    if result.match(/0/)
      @msg = "\nWINNER #{i}, #{j}" 
      @winner = current_program
      print 'W'
    else
      print '.'
    end
    STDOUT.flush
  end
end

puts @msg
File.open("winner.c", "w") { |f| f << @winner } if @winner 




Preface:

Print out a prime number multiplication table.

n is the number of prime numbers we want in the table.
The program defaults to n = 10 (The first ten prime numbers) but can be modified and tested to another number.

Ruby Prerequisites:

1. Ruby 2.2.4
2. Gems required - minitest

Installation guide (On OSX):

1. https://rvm.io/rvm/install
2. rvm install 2.2.4
3. rvm gemset create prime
4. rvm gemset use prime
5. gem install minitest

Program Usage:

1. ruby prime_multiplication_table.rb


Sample Output:

   1    2    3    5    7   11   13   17   19   23

   2    4    6   10   14   22   26   34   38   46

   3    6    9   15   21   33   39   51   57   69

   5   10   15   25   35   55   65   85   95  115

   7   14   21   35   49   77   91  119  133  161

  11   22   33   55   77  121  143  187  209  253

  13   26   39   65   91  143  169  221  247  299

  17   34   51   85  119  187  221  289  323  391

  19   38   57   95  133  209  247  323  361  437

  23   46   69  115  161  253  299  391  437  529
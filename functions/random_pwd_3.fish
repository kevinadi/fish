function random_pwd --description 'Generate five random passwords'
	set -l alpha a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 1 2 3 4 5 6 7 8 9 0
  set -l alphalen (count $alpha)

  for x in (seq 5)
  	set -l pwdstr ""

      for p in (seq 5)
          for i in (seq 3)
              set pwdstr $pwdstr $alpha[(math (random)"%"$alphalen"+1")]
          end
          set pwdstr $pwdstr "-"
      end

      echo -s $pwdstr[1..-2]
  end
end

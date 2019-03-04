# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    03.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fcahill <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/03/04 14:07:55 by fcahill           #+#    #+#              #
#    Updated: 2019/03/04 16:24:54 by fcahill          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
number1 (){
	echo "\033[0;36mPick a number [1/2/5/6]\033[0m"
	read number
	while [ $number != 1 ] && [ $number != 2 ] && [ $number != 5 ] && [ $number != 6 ]
	do
		echo "\033[0;36mI SAID 1 or 2 or 5 or 6, \033[0;31mnot $number\033[0m"
		read number
	done
}

number2 (){
	echo "\033[0;36mPick a number [3/4/7/8]\033[0m"
	read number
	while [ $number != 3 ] && [ $number != 4 ] && [ $number != 7 ] && [ $number != 8 ]
	do
		echo "\033[0;36mI SAID 3 or 4 or 7 or 8, \033[0;31mnot $number\033[0m"
		read number
	done
}

fortune (){
	if [ $number = 1 ]
	then
		echo "\033[1;35mYou're going to fall from a bridge and die. :(\033[0m"
	fi
	if [ $number = 2 ]
	then 
		echo "\033[1;35mYou will have a beautiful, healthy, intelligent child. Two years later you will find out his/her other parent is your cousin. Oooopssss.\033[0m"
	fi
	if [ $number = 3 ]
	then
		echo "\033[1;35mYou will discover late in life that you have a very rare allergy. You will have approx. 10 seconds between this realisation and your painful death.\033[0m"
	fi
	if [ $number = 4 ]
	then
		echo "\033[1;35mYou will be in a plane crash... BUT LIVE!! And then become an expert in martial arts and a buddhist and never, ever see your family again.\033[0m"
	fi
	if [ $number = 5 ]
	then
		echo "\033[1;35mYou will beome florist and arrange beautiful peonies all day before returning home to your partner and three children. Despite your best efforts your children will be really, really annoying. You will hate your life.\033[0m"
	fi
	if [ $number = 6 ]
	then 
		echo "\033[1;35mYou will be one of the great minds of your time! You will be a world renound innovater and original thinker. But, a piece of tech you invent will destroy you and the rest of the world. Bravo.\033[0m"
	fi
	if [ $number = 7 ]
	then
		echo "\033[1;35mYou will develop a debilitating phobia of carpets in your late 40's and never leave your home againv\033[0m"
	fi
	if [ $number = 8 ]
	then
		echo "\033[1;35mYou will be shipwrecked on a tropical island with your new best friend, floppy the rabbit. You'll have a great life, and so will we, since we will never, ever see you again.\033[0m"
	fi
}


echo "\033[0;36mWho is this?\033[0m"
read name
echo "\033[0;36mHello \033[1;35m$name, \033[0;36mdo you seek your fortune? [yes/no]\033[0m"
read answer
while [ "$answer" != "yes" ] && [ "$answer" != "no" ]
do
	echo "\033[1;36mSpeak up child, I do not understand you.\033[0m"
	read answer
done
if [ "$answer" = "yes" ]
then
	echo "\033[0;36mPick a colour. [\033[0;31mred/\033[0;34mblue/\033[0;32mgreen/\033[0;33myellow]\033[0m"
	read c
	if [ "$c" != "blue" ] && [ "$c" != "green" ] && [ "$c" != "yellow" ] && [ "$c" != "red" ]
	then
		echo "\033[1;36m'Are you deaf? I said [\033[0;31mred/\033[0;34mblue/\033[0;32mgreen/\033[0;33myellow]\033[0m"

		read c
	fi
	if [ "$c" != "blue" ] && [ "$c" != "green" ] && [ "$c" != "yellow" ] && [ "$c" != "red" ]
	then 
		echo "\033[1;31mIf you can't follow a basic instruction you don't deserve your fortune told. Goodbye\033[0m"
	fi
	if [ "$c" = "blue" ] || [ "$c" = "yellow" ]
	then
		number1
		if [ "$number" = 1 ] || [ "$number" = 5 ]
		then 
			echo "\033[1;36mLast one....\033[0m"
			number1
			fortune
		else
			echo "\033[1;36mLast one....\033[0m"
			number2
			fortune
		fi
	fi
	if [ "$c" = "red" ] || [ "$c" = "green" ]
	then
		number2
		if [ "$number" = 3 ] || [ "$number" = 7 ]
		then
			echo "\033[1;36mLast one....\033[0m"
			number1
			fortune
		else
			echo "\033[1;36mLast one....\033[0m"
			number2
			fortune
		fi
	fi
fi
if [ "$answer" = "no" ]
then
	echo "\033[1;31mWell, leave then, COWARD!\033[0m"
fi	

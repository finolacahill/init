# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    02.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fcahill <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/03/03 21:28:52 by fcahill           #+#    #+#              #
#    Updated: 2019/03/04 14:07:47 by fcahill          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


echo "\033[0;31mWho are we getting rid of?\033[0;32m"
read name
echo "\033[0;31mYou definitely want to delete \033[0;36m$name\033[0;31m?!\033[0;32m[yes/no]"
read answer
while [ $answer != "yes" ] && [ $answer != "no" ]
do
	echo "\033[0;31mWhat did you say buddy?\033[0;32m[yes/no]"
	read answer
done
if [ $answer = "yes" ]
then
	if [ "$(grep -c "^$name" /etc/passwd)" -ge 1 ]
	then
		pkill -u $name
		sudo deluser $name
		echo "\033[0;31mHe/she is gone. Goodbye."
	else
		echo "\033[0;31mHe/she is not real. Thanks for wasting my time."
	fi
fi
if [ $answer = "no" ]
then
	echo "\033[0;31mFine then. Bye."
fi


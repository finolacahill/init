# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    03.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fcahill <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/03/04 19:04:09 by fcahill           #+#    #+#              #
#    Updated: 2019/03/04 19:04:11 by fcahill          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

ifconfig en1 | awk '/ether/{print $2}'

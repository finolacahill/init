# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    12.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fcahill <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/03/04 19:05:32 by fcahill           #+#    #+#              #
#    Updated: 2019/03/04 19:05:34 by fcahill          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

ipconfig getpacket en0 | grep yiaddr | cut -d'=' -f2

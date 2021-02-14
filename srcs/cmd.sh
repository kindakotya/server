# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    cmd.sh                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gmayweat <gmayweat@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/13 04:36:02 by gmayweat          #+#    #+#              #
#    Updated: 2021/02/14 20:41:12 by gmayweat         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

service nginx start
service mysql start
service php7.3-fpm start

echo "CREATE DATABASE wordpress;"| mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost' WITH GRANT OPTION;"| mysql -u root --skip-password
echo "FLUSH PRIVILEGES;"| mysql -u root --skip-password
echo "update mysql.user set plugin='' where user='root';"| mysql -u root --skip-password
bash
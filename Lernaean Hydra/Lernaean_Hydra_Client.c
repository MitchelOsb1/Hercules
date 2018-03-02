/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   Lernaean_Hydra_Client.c                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mosborne <mosborne@42.us.org>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/03/02 12:46:53 by mosborne          #+#    #+#             */
/*   Updated: 2018/03/02 14:02:14 by mosborne         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <netdb.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <sys/types.h>

int main(int ac, char **av)
{
    int                 x;
    int                 socket_fd;
    char                str[1000];
    struct sockaddr_in  serv_adr;

    x = 0;
    if (ac != 2)
    {
        printf("EX: ./ [IP ADDRESS]\n");
        return (0);
    }
    if ((socket_fd = socket(AF_INET, SOCK_STREAM, 0)) < 0)
        return (0);
    serv_adr.sin_family = AF_INET;
    serv_adr.sin_port = htons(4000);
    if (inet_pton(AF_INET, av[1], &serv_adr.sin_addr) <= 0)
		return (0);
    if (connect(socket_fd, (struct sockaddr*)&serv_adr, sizeof(serv_adr)) < 0)
        return (0);
	while ((x = read(socket_fd, str, sizeof(str)-1)) > 0)
	{
		str[x] = 0;
		if (fputs(str, stdout) == EOF)
		{
			printf("\n Error : FPUTS error\n");
		}
	}
    return (1);
}
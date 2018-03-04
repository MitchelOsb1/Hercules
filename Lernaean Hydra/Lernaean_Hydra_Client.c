/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   Lernaean_Hydra_Client.c                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mosborne <mosborne@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/03/02 12:46:53 by mosborne          #+#    #+#             */
/*   Updated: 2018/03/03 18:56:27 by mosborne         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <netdb.h>
#include <unistd.h>
#include <strings.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <sys/types.h>

int main(int ac, char **av)
{
    int                 socket_fd;
    char                s1[1024];
    char                s2[1024];
    struct sockaddr_in  serv_adr;

    if (ac != 2)
    {
        printf("EX: ./ [IP ADDRESS]\n");
        return (0);
    }
    if ((socket_fd = socket(AF_INET, SOCK_STREAM, 0)) < 0)
        return (0);
    serv_adr.sin_family = AF_INET;
    serv_adr.sin_port = htons(4000);
    if (inet_pton(AF_INET, av[1], &serv_adr.sin_addr) < 0)
		return (0);
    if (connect(socket_fd, (struct sockaddr*)&serv_adr, sizeof(serv_adr)) < 0)
        return (0);
    printf("Connection Accepted\n");
    while (1)
	{
        bzero(s1, 1024);
        bzero(s2, 1024);
        fgets(s1, 1024, stdin);
        write(socket_fd, s1, strlen(s1));
        if (strncmp("exit\n", s1, 5) == 0)
            return (0);
        read(socket_fd, s2, 1024);
        write(1, s2, strlen(s2));
    }
    close(socket_fd);
    return (1);
}

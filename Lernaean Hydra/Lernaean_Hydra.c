/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   Lernaean_Hydra.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mosborne <mosborne@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/02/23 23:51:03 by mosborne          #+#    #+#             */
/*   Updated: 2018/03/03 18:52:53 by mosborne         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <netdb.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/types.h>

int main(void)
{
    int                 client_fd;
    int                 socket_fd;
    struct sockaddr_in  serv_adr;
    char                msg[1024];

    socket_fd = socket(AF_INET, SOCK_STREAM, 0);
    serv_adr.sin_family = AF_INET;
    serv_adr.sin_addr.s_addr = htonl(INADDR_ANY);
    serv_adr.sin_port = htons(4000);
    bind(socket_fd, (struct sockaddr *)&serv_adr, sizeof(serv_adr));
    bzero(msg, 1024);
    while (1)
    {
        listen(socket_fd, 10);
        client_fd = accept(socket_fd, (struct sockaddr *)0, 0);
        while (1)
        {
            read(client_fd, msg, 1024);
            if (strncmp("ping\n", msg, 5) == 0)
                write(client_fd, "pong pong\n", 10);
            if (strncmp("exit\n", msg, 5) == 0)
                return (0);
            bzero(msg, 1024);
        }
    }
    close(socket_fd);
    close(client_fd);
    return (0);
}

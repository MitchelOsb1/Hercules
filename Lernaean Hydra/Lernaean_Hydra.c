/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   Lernaean_Hydra.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mosborne <mosborne@42.us.org>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/02/23 23:51:03 by mosborne          #+#    #+#             */
/*   Updated: 2018/03/02 12:45:08 by mosborne         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <netdb.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/types.h>

int main(int ac, char **av)
{
    int                 client_fd;
    int                 socket_fd;
    struct sockaddr_in  serv_adr;

    socket_fd = socket(AF_INET, SOCK_STREAM, 0);
    serv_adr.sin_family = AF_INET;
    serv_adr.sin_addr.s_addr = htonl(INADDR_ANY);
    serv_adr.sin_port = htons(4000);
    bind(socket_fd, (struct sockaddr *)&serv_adr, sizeof(serv_adr));
    listen(socket_fd, 10);
    while (1)
    {
        client_fd = accept(socket_fd, (struct sockaddr *)0, 0);
        write(client_fd, "pong pong\n", 10);
        close(client_fd);
    }
    return (0);
}
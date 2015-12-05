/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main_alloc.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zcarde <zcarde@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/07 08:08:17 by zcarde            #+#    #+#             */
/*   Updated: 2015/03/07 08:09:57 by zcarde           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"
#include <stdio.h>

int		main(void)
{
	char    *str;

	printf("[-] MEMALLOC [-]\n");
	str = ft_memalloc(3);
	printf("[+] str[0] = %d = %c [+]\n", str[0], str[0]);
	printf("[+] str[1] = %d = %c [+]\n", str[1], str[1]);
	printf("[+] str[2] = %d = %c [+]\n", str[2], str[2]);
	str[0] = 'a';
	str[1] = 'b';
	printf("[+] str = %s [+]\n", str);
	str = ft_memalloc(0);
	printf("[-] END OF MEMALLOC [-]\n");
	return (0);
}
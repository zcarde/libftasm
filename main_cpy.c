/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main_cpy.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zcarde <zcarde@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/07 08:02:10 by zcarde            #+#    #+#             */
/*   Updated: 2015/03/07 08:05:08 by zcarde           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"
#include <stdio.h>

int		main(void)
{
	char	*dst;

	dst = (char *)malloc(sizeof(char) * 23);
	printf("[+] FT_STRCPY [+]\n");
	printf("%s\n", ft_strcpy(dst, "[-] Yolo [-]"));
	printf("%s\n", ft_strcpy(dst, "[-] Yo [-]"));
	printf("%s\n", ft_strcpy(dst, "[-] lo [-]"));
	printf("%s\n", ft_strcpy(dst, "[-] Lolement votre [-]"));
	printf("[+] END OF FT_STRCPY [+]\n");
	return (0);
}
/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main_cat.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zcarde <zcarde@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/07 06:54:22 by zcarde            #+#    #+#             */
/*   Updated: 2015/03/07 08:01:27 by zcarde           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"
#include <fcntl.h>

int		main(int ac, char **av)
{
	ft_cat(0);
	ft_cat(open(__FILE__, O_RDONLY));
	ft_cat(open(av[0], O_RDONLY));
	ft_cat(-42);
	(void)ac;
	return (0);
}

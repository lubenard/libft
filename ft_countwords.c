/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_countwords.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lubenard <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/19 10:29:37 by lubenard          #+#    #+#             */
/*   Updated: 2018/11/19 10:29:40 by lubenard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		ft_countwords(char const *s)
{
	int nbr;
	int i;

	i = 0;
	nbr = 0;
	while (s[i])
	{
		if (s[i] <= 32 && s[i + 1] > 33)
			nbr++;
		i++;
	}
	return (nbr);
}
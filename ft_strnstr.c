/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lubenard <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/09 13:15:16 by lubenard          #+#    #+#             */
/*   Updated: 2018/11/15 16:13:41 by lubenard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strnstr(char *s1, char *s2, size_t e)
{
	int		i;
	int		j;

	i = 0;
	if (!s1[0] && !s2[0])
		return (s1);
	if (!s1[0] && s2[0])
		return (0);
	while (s1[i] && i < (int)e)
	{
		j = 0;
		while (s1[i + j] == s2[j] && s2[j] && (i + j < (int)e))
			j++;
		if (!s2[j])
			return (s1 + i);
		i++;
	}
	return (0);
}

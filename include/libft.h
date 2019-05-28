/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mchi <mchi@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/27 15:20:43 by mchi              #+#    #+#             */
/*   Updated: 2019/05/27 22:37:29 by mchi             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H

# include <unistd.h>

int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int		ft_tolower(int c);
int		ft_toupper(int c);
size_t	ft_strlen(char *str);
void	*ft_bzero(void *ptr, size_t num);
void	*ft_memcpy(void *dest, const void *source, size_t num);
void	*ft_memset(void *ptr, size_t num);
int		ft_puts(const char *str);
char	*ft_strcat(char *destination, const char *source);
char	*ft_strdup(const char *str1);

#endif

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgolding <bgolding@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/08 11:56:51 by bgolding          #+#    #+#             */
/*   Updated: 2023/11/08 16:47:02 by bgolding         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# include <unistd.h>
# include <stdarg.h>

int	ft_printf(const char *f_string, ...);
int	i_put_conversion(va_list args, const char *f_string);
int	i_put_char(char c);
int	i_put_str(char *s);
int	i_put_ptr(void *p);
int	i_put_hex(unsigned long n, int case_select);
int	i_put_long(long n);
int	i_put_int(int n);

#endif

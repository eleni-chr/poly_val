function p = poly_val(c0,c,x)

% The inputs c0 and x are scalars, c is a vector, and the output p is a
% scalar. If c is an empty matrix, then p = c0. If c is a scalar, then
% p = c0 + c*x . Otherwise, p equals the polynomial
% c0 + c(1)x^1 + c(2)x^2 + ... + c(N)x^N, where N is the length of the
% vector c.

% Here are three example runs:
% >> format long
% >> p = poly_val(-17,[],5000)
% p =
%    -17
% >> p = poly_val(3.2,[3,-4,10],2.2)
% p =
%    96.920000000000030
% >> p = poly_val(1,[1,1,1,1],10)
% p =
%    11111

n=size(c);
if n(2)>1
    N=n(2);
    powers=[1:N];
else
    N=n(1);
    powers=[1:N]';
end
x_raised= x.^powers;
if isempty(c)
    p=c0;
elseif isscalar(c)
    p=c0+c*x;
elseif N>=2
    p=c0+sum(c.*x_raised);
end
end
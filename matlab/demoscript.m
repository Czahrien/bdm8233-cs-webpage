disp('MATLAB Demo')
disp('Authors: Ben Mayes')
disp('         Gian Biondi')

input('>> 5 + 4 % The command window is a glorified REPL')
5+4
x = 5+4;
input('>> ans + ans')
x + x
y = x + x;
input('>> ans * ans; % We can hide the result by including the semi-colon.')
input('>> ans')
y * y

input('>> v = [1 2 3 4] % Lets make a row vector.')
v = [1 2 3 4]

input('>> size(v) % What is its size?')
size(v)

input('>> [rows cols] = size(v) % The size itself is a matrix!')
[rows cols] = size(v)

input('>> size(5) % Even a number is considered a 1x1 matrix.')
size(5)

input('>> [1 2; 3 4] % Syntax for multirow matrix')
m = [1 2; 3 4]

input('>> eye(3) % identity matrix')
eye(3)

input('>> inv(m) % Find the inverse of a matrix.')
minv = inv(m)

input('>> minv*m % This should equal eye(2)')
minv*m

input('>> [v v] % Vectors can be easily concatenated')
[v v]

input('>> m = [v;v+v] % Or used as row vectors in a matrix (if their column counts match)')
m = [v;v+v]

input('>> [m m] % Any matrix can be used (if their row counts match)')
n = [m m]

input('>> [n; transpose(n)] % Clearly combining these two matrices in this way would not produce a sensible answer.')
disp('Error using vertcat')
disp('CAT arguments dimensions are not consistent.')
disp(' ')
input('>> [v ; transpose(v) transpose(v)] % However, if we make the dimensions match everything works as expected.')
[m; transpose(m) transpose(m)]

input('>> m = magic(5) % 5x5 matrix with all rows/cols/diagonals equal in sum.')
m = magic(5)

input('>> m(1,3) % Access third element in the first row.')
m(1,3)

input('>> m(1,1:5) % Access the first row as a vector.')
m(1,1:5)

input('>> m(2:4,2:4) % Access a sub-matrix.');
m(2:4,2:4)

input('>> m(2:4,2:4) = [1 2 3;4 5 6; 7 8 9] % We can also modify it!')
m(2:4,2:4) = [1 2 3;4 5 6; 7 8 9]

input('>> 0:10 % we can easily construct a vector using ranges')
0:10

input('>> 0:0.5:1 % the step value can also be specified')
0:0.5:1

input('>> x = @(r,c) repmat(c*transpose(0:(r-1)),1,c)+repmat(0:(c-1),r,1)')
disp('% An anonymous function. repmat(M,r,c) creates a matrix containing r*c copies of the given matrix.')
x = @(r,c) repmat(c*transpose(0:(r-1)),1,c)+repmat(0:(c-1),r,1)


input('>> x(4,4)')
x(4,4)

input('>> x(4,6)')
x(4,6)

input('>> x(6,3)')
x(6,3)

input('>> f = @(x)x*x % An anonymous function.')
f = @(x)x*x

input('>> f(5)')
f(5)

input('>> arrayfun(f,v) % Let''s apply it to our vector.')
arrayfun(f,v)

input('>> f = @(x)arrayfun(@(x)x*x,x) % An alternate way of writing the function.')
f = @(x)arrayfun(@(x)x*x,x)

input('>> f(v) % Now it accepts vectors (and matrices)')
f(v)

input('>> f(5) % And single elements.')
f(5)

input('>> X = 0:pi/180:2*pi; % Obtain all values between 0 and 2pi with a step of pi/180.')
X = 0:pi/180:2*pi;
input('>> Y = sin(X); % Apply sin to each value in X and store in Y.')
Y = sin(X);
input('>> plot(X,Y) % create a plot containing points (X(1),Y(1)), (X(2),Y(2)),...')
plot(X,Y)
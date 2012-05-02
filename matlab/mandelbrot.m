function [mat] = mandelbrot(width,height,xmin,xmax,ymin,ymax,iters,varargin)
    % Draws a Mandelbrot set of width*height pixels with the pixels being
    % in locations xmin-xmax and ymin-ymax. Iters controls how precise the
    % approximation of the mandelbrot set is. varargin is an optional gamma
    % parameter. If no value is specified it defaults to 1.
    
    % Good inputs:
    % imagesc(mandelbrot(400,400,-0.11,-0.10,0.92,0.93,1000,0.0625))
    % imagesc(mandelbrot(400,400,-1.6,0.6,-1.1,1.1,100,0.5))
    % imagesc(mandelbrot(400,400,-0.3,0.2,0.6,1,100,0.5))
    gamma = 1;
    if(nargin == 8)
        gamma = varargin{1};
    end
        
    ymat = 1i*transpose(linspace(ymax,ymin,height));
    cmat = repmat(ymat,1,width) + repmat(linspace(xmin,xmax,width),height,1);
    function [val] = apply(c)
        % The commented code is more succinct code that can alternatively 
        % be used as the body of this function. However, it runs quite a bit
        % slower.
        %z = c;
        %for j=0:iters
        %    if(real(z)*real(z)+imag(z)*imag(z) >= 4)
        %        break;
        %    end
        %    z = z*z + c;
        %end
        
        j = 0;
        cr = real(c);
        ci = imag(c);
        re = real(c);
        im = imag(c);
        while (j < iters && re*re + im*im < 4)
            j = j + 1;    
            tmpre = re*re - im*im + cr;
            tmpim = 2*im*re + ci;
            re = tmpre;
            im = tmpim;
        end
        val = j;
    end

    mat = arrayfun(@apply, cmat);
    mat = mat / iters;
    mat = arrayfun(@(x)x^gamma,mat);
end

% Example of creating a MATLAB animation

% For the example we will create a sequence of images, saving each image in
% the sequence to a file.  Then, externally (not in MATLAB) we will combine
% the images into a video file.

% Create a sequence of images
N = 100;
figure(1);
clf();
YY = [];
for ii = 1:N
    YY(ii) = rand();
    plot(1:ii,YY,'o-')
    xlabel('Distance [m]')
    ylabel('Force [N]')
    title(sprintf('Step %d',ii));
    grid on;
    axis([0 N 0 1])
    
    % Save each figure as a image file (.png) 
    % The number of the image is included in the file name
    % Make sure there is a directory called "movie" in your current working
    % directory.
    fname = sprintf('movie/image-%05d',ii);
    % Saves each image at 72 dpi.  May want to adjust the resolution
    cmd = sprintf('export_fig %s -png -r72 -painters',fname);
    eval(cmd)
end

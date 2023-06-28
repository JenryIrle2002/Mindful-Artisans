function mindfulArtisans(data)
    % This code file is for analyzing landscapes 
    % Mindful Artisans
    
    % Initializing variables
    width = size(data,2); % width of input data 
    height = size(data,1); % height of input data 
    avgHeight = 0;
    peakHeight = 0;
    numPeaks = 0;
    
    % Find average height of landscape
    for i= 1:height
        for j= 1:width
            avgHeight = avgHeight + data(i,j);
        end
    end
    avgHeight = avgHeight / (width*height);
    
    % Find peak height, number of peaks
    for i= 2:height-1 % ignoring the edges
        for j= 2:width-1 % ignoring the edges
            if data(i,j) > avgHeight && ...
                data(i-1,j-1) < data(i,j) && data(i-1,j) < data(i,j) && ...
                data(i-1,j+1) < data(i,j) && data(i,j-1) < data(i,j) && ...
                data(i,j+1) < data(i,j) && data(i+1,j-1) < data(i,j) && ...
                data(i+1,j) < data(i,j) && data(i+1,j+1) < data(i,j)
            peakHeight = max(peakHeight, data(i,j));
            numPeaks = numPeaks + 1;
            end
        end
    end
    
    % Output
    disp(['Number of Peaks: ' num2str(numPeaks)]);
    disp(['Peak Height: ' num2str(peakHeight)]);
    disp(['Average Height: ' num2str(avgHeight)]);

end
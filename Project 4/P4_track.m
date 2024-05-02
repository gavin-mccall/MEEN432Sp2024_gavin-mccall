%Track Maker
trackLength = 900;
trackRadius = 200;
arrayPoints = 1000; %Divisible by 4
trackWidth = 15;

Path.radius = trackRadius;
Path.l_st = trackLength;
Path.width = trackWidth;

xpath = [];
ypath = [];

%First StraightAway
for i = linspace(0,trackLength,arrayPoints / 4)
    xpath(end + 1) = i;
    ypath(end + 1) = 0;
end
%First Curve
for i = linspace(pi/2,-pi/2,arrayPoints / 4)
    xpath(end + 1) = trackRadius * cos(i) + trackLength;
    ypath(end + 1) = trackRadius * (1 - sin(i));
end

%Second StraightAway
for i = linspace(0,trackLength,arrayPoints / 4)
    xpath(end + 1) = trackLength - i;
    ypath(end + 1) = trackRadius * 2;
end

%Second Curve
for i = linspace(pi/2,-pi/2,arrayPoints / 4)
    xpath(end + 1) = -trackRadius * cos(i);
    ypath(end + 1) = trackRadius * 2 - trackRadius * (1 - sin(i));
end

%plot(xpath, ypath, 'r')

%hold on

% start an animated line feature
%h = animatedline;

% create a "car" of width w and height 2w
%w = 20;
%car = [- w/2, - w; w/2, -w; w/2, w; -w/2, w]';
%a = patch('XData',car(:,1),'YData',car(:,2));
%a.EdgeColor = [0 0 0];
%a.FaceColor = 'none';
%count = 0;

% perform an animated "simulation" - no dynamics, just kinematics
%First StraightAway
%for x = linspace(0, 900, 80000)
    %y = 0;
    %addpoints(h,x,y)

    %generate un-rotated car at new location x,y
    %car = [x - w/2, y - w; x + w/2, y-w; x+w/2, y+w; x-w/2, y+w];

    % rotate car according to slope of curve 
    %car2 = rotate(car'-[x;y], 0)' + [x;y]';

    %update car image
    %a.XData = car2(:,1);
    %a.YData = car2(:,2);
    %drawnow limitrate nocallbacks
%end
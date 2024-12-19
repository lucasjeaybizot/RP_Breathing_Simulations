clear

data_cube = nan(2,2048,100);
    
for j = 1:100
    data_cube(1,:,j) = [zeros(1,1024) linspace(0,-4,1024)];
    if j<50  
            data_cube(2,:,j) = circshift(linspace(-pi,pi,2048), round(2048/12) + 0);
    elseif j>=50 & j<60
            data_cube(2,:,j) = circshift(linspace(-pi,pi,2048), round(2048/12) + round(2048/6));
    elseif j>=60 & j<70
            data_cube(2,:,j) = circshift(linspace(-pi,pi,2048), round(2048/12) + round(2*2048/6));
    elseif j>=70 & j<80
            data_cube(2,:,j) = circshift(linspace(-pi,pi,2048), round(2048/12) + round(3*2048/6));
    elseif j>=80 & j<90
            data_cube(2,:,j) = circshift(linspace(-pi,pi,2048), round(2048/12) + round(4*2048/6));
    elseif j>=90
            data_cube(2,:,j) = circshift(linspace(-pi,pi,2048), round(2048/12) + round(5*2048/6));
    end
end

for i = 1:50
    save(sprintf('simul%02d_cube.mat', i), 'data_cube');
end

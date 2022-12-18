%Analysis Script 
%% MH_03_medium - Medium datast
GroundTruth_MH=readmatrix("EECE 5554\MH_03_medium.csv"); %Ground Truth 
Trajectory_MH=readmatrix("EECE 5554\MH_03_medium_traj_estimate.csv"); %Trajectory Estimate

%Position -> Trajectory_MH
Traj_tx=Trajectory_MH(:,2);
Traj_ty=Trajectory_MH(:,3);
Traj_tz=Trajectory_MH(:,4);

%Position -> GroundTruth_MH
GT_tx=GroundTruth_MH(:,2);
GT_ty=GroundTruth_MH(:,3);
GT_tz=GroundTruth_MH(:,4);

%3D plot of position [Estimated Trajectory_MH and GroundTruth_MH]
figure(1)
plot3(GT_tx,GT_ty,GT_tz,'r',Traj_tx,Traj_ty,Traj_tz,'b')
title('Machine Hall Room: Estimated Trajectory and Groundtruth');
xlabel('x(m)');
ylabel('y(m)');
zlabel('z(m)');
legend('Groundtruth','Estimated Trajectory');
grid on

%2D plot of position [Estimated Trajectory_MH and GroundTruth_MH]
figure(2)
plot(GT_tx,GT_ty,'r',Traj_tx,Traj_ty,'b')
legend('Groundtruth','Estimated Trajectory');
title('Machine Hall Room: Estimated Trajectory and Groundtruth');
xlabel('x(m)');
ylabel('y(m)');
grid on
legend('Groundtruth','Estimated Trajectory');
%% Vicon Room 1 - Medium Dataset Not bad
Trajectory_V1=readmatrix("EECE 5554\V1_02_medium_traj_estimate.csv");
GroundTruth_V1=readmatrix("EECE 5554\V1_02_medium.csv");

%Position -> Trajectory_V1
tx_V1=Trajectory_V1(:,2);
ty_V1=Trajectory_V1(:,3);
tz_V1=Trajectory_V1(:,4);

%Position -> Trajectory_V1
tx_V1_GT=GroundTruth_V1(:,2);
ty_V1_GT=GroundTruth_V1(:,3);
tz_V1_GT=GroundTruth_V1(:,4);

%3D plot of position [Estimated Trajectory_V1 and GroundTruth_V1]
figure(3)
plot3(tx_V1_GT,ty_V1_GT,tz_V1_GT,'r',tx_V1,ty_V1,tz_V1,'b')
title('Vicon Room 1: Estimated Trajectory and Groundtruth');
xlabel('x(m)');
ylabel('y(m)');
zlabel('z(m)');
legend('Groundtruth','Estimated Trajectory');
grid on

%2D plot of position [Estimated Trajectory_V1 and GroundTruth_V1]
figure(4)
plot(tx_V1_GT,ty_V1_GT,'r',tx_V1,ty_V1,'b')
legend('Groundtruth','Estimated Trajectory');
title('Vicon Room 1: Estimated Trajectory and Groundtruth');
xlabel('x(m)');
ylabel('y(m)');
grid on
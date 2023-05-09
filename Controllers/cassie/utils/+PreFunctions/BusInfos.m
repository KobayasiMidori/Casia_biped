function BusInfos()
cellInfo = { ...
    { ...
    'CassieInBus', ...
    '', ...
    '', ...
    'Auto', ...
    '-1', {...
    {'pelvis', 1, 'Bus: CassiePelvisInBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'leftLeg', 1, 'Bus: CassieLegInBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'rightLeg', 1, 'Bus: CassieLegInBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    } ...
    } ...
    { ...
    'CassiePelvisInBus', ...
    '', ...
    '', ...
    'Auto', ...
    '-1', {...
    {'sto', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    } ...
    } ...
    { ...
    'CassieLegInBus', ...
    '', ...
    '', ...
    'Auto', ...
    '-1', {...
    {'hipRollDrive', 1, 'Bus: ElmoInBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'hipYawDrive', 1, 'Bus: ElmoInBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'hipPitchDrive', 1, 'Bus: ElmoInBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'kneeDrive', 1, 'Bus: ElmoInBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'footDrive', 1, 'Bus: ElmoInBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    } ...
    } ...
    { ...
    'ElmoInBus', ...
    '', ...
    '', ...
    'Auto', ...
    '-1', {...
    {'controlWord', [1 1], 'uint16', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'torque', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    } ...
    } ...
    { ...
    'CassieOutBus', ...
    '', ...
    '', ...
    'Auto', ...
    '-1', {...
    {'pelvis', 1, 'Bus: CassiePelvisOutBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'leftLeg', 1, 'Bus: CassieLegOutBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'rightLeg', 1, 'Bus: CassieLegOutBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    } ...
    } ...
    { ...
    'CassiePelvisOutBus', ...
    '', ...
    '', ...
    'Auto', ...
    '-1', {...
    {'targetPc', 1, 'Bus: TargetPcOutBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'imu', [1 1], 'Bus: ImuOutBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'remote', [1 1], 'Bus: RemoteOutBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'battery', [1 1], 'Bus: BatteryOutBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    } ...
    } ...
    { ...
    'TargetPcOutBus', ...
    '', ...
    '', ...
    'Auto', ...
    '-1', {...
    {'etherCatStatus', [6 1], 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'etherCatNotifications', [21 1], 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'taskExecutionTime', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'overloadCounter', [1 1], 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'cpuTemperature', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    } ...
    } ...
    { ...
    'ImuOutBus', ...
    '', ...
    '', ...
    'Auto', ...
    '-1', {...
    {'acc_x', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'acc_y', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'acc_z', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'gyr_x', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'gyr_y', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'gyr_z', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'q0', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'q1', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'q2', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'q3', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'status_word', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...    
    } ...
    } ...
    { ...
    'RemoteOutBus', ...
    '', ...
    '', ...
    'Auto', ...
    '-1', {...
    {'forward', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'turn', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'move', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'ES', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'pid', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'switch24', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'switch48', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'op', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'reset_position', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'march', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'fail_safe', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...    
    {'frame_lost', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ... 
    {'rise', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...     
    } ...
    } ...
    { ...
    'BatteryOutBus', ...
    '', ...
    '', ...
    'Auto', ...
    '-1', {...
    {'battery_capacity', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'current', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'current_capacity', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'empty_', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'protect_status', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'voltage', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    } ...
    } ...
    { ...
    'CassieLegOutBus', ...
    '', ...
    '', ...
    'Auto', ...
    '-1', {...
    {'hipRollDrive', 1, 'Bus: ElmoOutBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'hipYawDrive', 1, 'Bus: ElmoOutBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'hipPitchDrive', 1, 'Bus: ElmoOutBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'kneeDrive', 1, 'Bus: ElmoOutBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'footDrive', 1, 'Bus: ElmoOutBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'shinJoint', 1, 'Bus: JointOutBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'tarsusJoint', 1, 'Bus: JointOutBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'ErrorCode', [5,1], 'uint16', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...    
    } ...
    } ...
    { ...
    'ElmoOutBus', ...
    '', ...
    '', ...
    'Auto', ...
    '-1', {...
    {'statusWord', [1 1], 'uint16', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'position', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'velocity', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'torque', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'dcLinkVoltage', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'gearRatio', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'stateCode', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    } ...
    } ...
    { ...
    'JointOutBus', ...
    '', ...
    '', ...
    'Auto', ...
    '-1', {...
    {'position', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'velocity', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    } ...
    } ...
    { ...
    'cassieDataBus', ...
    '', ...
    '', ...
    'Auto', ...
    '-1', {...
    {'position', [14, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'velocity', [14, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'torque', [10 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'actTorque', [10 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'state', [5 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'tau', [10 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'f_mode',[10 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...
    {'motor_dst_rlt',[10 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...
    {'imu',[3 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...
    {'fk_r',[10 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...
    {'fk_l',[10 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...
    {'IK_dst',[6 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...
    {'state_march_plan', [1, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'state_march_real', [1, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'v_est', [3, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'p_est', [3, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...    
    {'pid',[20 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...
    {'imu_org', [22, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'s', [1, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'force',[6 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...
    {'imu_yaw0',[1 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...
    {'s_rl',[2 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...
    {'yaw_est',[4 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...  
    {'motor_stateCode',[10 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...    
    {'walk_p0',[3 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...  
    {'eulZYX_multi',[3 1],'double',-1,'real','Sample','Fixed',[],[],'',''};... 
    {'walk_xzdir_wr',[3 1],'double',-1,'real','Sample','Fixed',[],[],'',''};... 
    {'walk_xzdir_wl',[3 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...     
    {'IK_target', [10, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'p_pid', [6, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...    
    {'motor_statusWord',[10 1],'double',-1,'real','Sample','Fixed',[],[],'',''};... 
    {'voltage', [10, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ... 
    {'temp', [10, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...    
    {'ErrorCode',[10 1],'double',-1,'real','Sample','Fixed',[],[],'',''};... 
    {'imu_status_word',[1 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...   
    {'walk_xv_tgt',[1 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...   
    {'walk_xv_dst',[1 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...   
    {'con_remote',[10 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...
    {'battery',[6 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...
    {'IK_ry',[4 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...       
    } ...
    } ...
    { ...
    'cassieAlgOutBus', ...
    '', ...
    '', ...
    'Auto', ...
    '-1', {...
    {'TargetP', [10, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'TargetF', [14, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    } ...
    } ...
    { ...
    'TrajectoryBus', ...
    '', ...
    '', ...
    'Auto', ...
    '-1', {...
    {'motor_dir', [10, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'motor_position', [10, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'motor_position_pas', [4, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'motor_velocity', [10, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'motor_velocity_pas', [4, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'motor_real_current', [10, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'motor_rated_current', [10, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'motor_voltage', [10, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'actor_dst_zero', [10, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'IK_dst', [6, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'eulZYX', [3, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'state_index', [1, 1], 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'etherCatStatus', [2, 1], 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'is_op', [1, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'state_march_plan', [1, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'state_march_real', [1, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'v_est', [3, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'p_est', [3, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...    
    {'imu_org', [22, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'s', [1, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'march_first_time', [1, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'imu_yaw0', [1, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...   
    {'s_rl',[2 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...
    {'yaw_est',[4 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...  
    {'walk_xv_tgt',[1 1],'double',-1,'real','Sample','Fixed',[],[],'',''};... 
    {'walk_xv_dst',[1 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...     
    {'joystick',[11 1],'double',-1,'real','Sample','Fixed',[],[],'',''};... 
    {'motor_stateCode',[10 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...   
    {'pos_rota',[3 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...  
    {'walk_p0',[3 1],'double',-1,'real','Sample','Fixed',[],[],'',''};... 
    {'flag_march',[1 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...    
    {'eulZYX_multi',[3 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...   
    {'walk_xzdir_w',[3 2],'double',-1,'real','Sample','Fixed',[],[],'',''};...  
    {'FK_r_l',[10 2],'double',-1,'real','Sample','Fixed',[],[],'',''};...     
    {'motor_statusWord',[10 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...   
    {'flag_last_step',[1 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...       
    {'ErrorCode',[10 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...        
    {'imu_status_word',[1 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...     
    {'con_remote',[10 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...   
    {'march_num_tgt',[1 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...    
    {'reset_num_tgt',[1 1],'double',-1,'real','Sample','Fixed',[],[],'',''};... 
    {'battery',[6 1],'double',-1,'real','Sample','Fixed',[],[],'',''};...
    {'IK_ry',[2 2],'double',-1,'real','Sample','Fixed',[],[],'',''};...      
    {'step_cnt',[1 1],'double',-1,'real','Sample','Fixed',[],[],'',''};... 
    } ...
    } ...
    { ...
    'IkControlBus', ...
    '', ...
    '', ...
    'Auto', ...
    '-1', {...
    {'pid_out', [4, 20], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'actor_dst_rlt', [10, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'out_current_cal', [10, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'IK_target', [10, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'temp', [10, 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ... 
    } ...
    } ...
    
    };



Simulink.Bus.cellToObject(cellInfo)
end
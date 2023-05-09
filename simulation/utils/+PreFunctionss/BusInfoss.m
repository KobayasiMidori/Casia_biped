function BusInfos()
cellInfo = { ...
    { ...
    'CassieInBus', ...
    '', ...
    '', ...
    'Auto', ...
    '-1', {...
    {'leftLeg', 1, 'Bus: CassieLegInBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'rightLeg', 1, 'Bus: CassieLegInBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
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
    {'rightLeg', 1, 'Bus: CassieLegOutBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'leftLeg', 1, 'Bus: CassieLegOutBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    } ...
    } ...
    { ...
    'CassiePelvisOutBus', ...
    '', ...
    '', ...
    'Auto', ...
    '-1', {...
    {'RC', [6 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'IMU', [1 1], 'Bus: ImuOutBus', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    } ...
    } ...
    { ...
    'ImuOutBus', ...
    '', ...
    '', ...
    'Auto', ...
    '-1', {...
    {'angularVelocity', [3 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'linearAcceleration', [3 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'orientation', [4 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'linearVelocity', [3 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
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
    } ...
    } ...
    { ...
    'ElmoOutBus', ...
    '', ...
    '', ...
    'Auto', ...
    '-1', {...
    {'position', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'velocity', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'torque', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'torqueLimit', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    {'gearRatio', [1 1], 'double', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
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
    
    };

Simulink.Bus.cellToObject(cellInfo)
end
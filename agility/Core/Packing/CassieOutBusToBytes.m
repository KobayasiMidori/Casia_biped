%CASSIEOUTBUSTOBYTES Convert a CassieOutBus bus to a byte array.

% Copyright 2018 Agility Robotics
% Generated automatically by BusModule.generatePackingSystem

classdef CassieOutBusToBytes < ...
    matlab.System & ...
    matlab.system.mixin.Propagates %#codegen

  % PROTECTED METHODS =====================================================
  methods (Access = protected)
    % SYSTEM CLASS METHODS ================================================
    function setupImpl(~)
      %SETUPIMPL Initialize System object.
    end % setupImpl

    function bytes = stepImpl(~, bus)
      %STEPIMPL System output and state update equations.

      bytes = [...
        typecast(bus.pelvis.targetPc.etherCatStatus', 'uint8')'; ...
        typecast(bus.pelvis.targetPc.etherCatNotifications', 'uint8')'; ...
        typecast(single(bus.pelvis.targetPc.taskExecutionTime)', 'uint8')'; ...
        typecast(bus.pelvis.targetPc.overloadCounter', 'uint8')'; ...
        typecast(single(bus.pelvis.targetPc.cpuTemperature)', 'uint8')'; ...
        uint8(bus.pelvis.battery.dataGood); ...
        typecast(single(bus.pelvis.battery.stateOfCharge)', 'uint8')'; ...
        typecast(single(bus.pelvis.battery.voltage)', 'uint8')'; ...
        typecast(single(bus.pelvis.battery.current)', 'uint8')'; ...
        typecast(single(bus.pelvis.battery.temperature)', 'uint8')'; ...
        uint8(bus.pelvis.radio.radioReceiverSignalGood); ...
        uint8(bus.pelvis.radio.receiverMedullaSignalGood); ...
        typecast(single(bus.pelvis.radio.channel)', 'uint8')'; ...
        uint8(bus.pelvis.vectorNav.dataGood); ...
        typecast(bus.pelvis.vectorNav.vpeStatus', 'uint8')'; ...
        typecast(single(bus.pelvis.vectorNav.pressure)', 'uint8')'; ...
        typecast(single(bus.pelvis.vectorNav.temperature)', 'uint8')'; ...
        typecast(single(bus.pelvis.vectorNav.magneticField)', 'uint8')'; ...
        typecast(single(bus.pelvis.vectorNav.angularVelocity)', 'uint8')'; ...
        typecast(single(bus.pelvis.vectorNav.linearAcceleration)', 'uint8')'; ...
        typecast(single(bus.pelvis.vectorNav.orientation)', 'uint8')'; ...
        bus.pelvis.medullaCounter; ...
        typecast(bus.pelvis.medullaCpuLoad', 'uint8')'; ...
        uint8(bus.pelvis.bleederState); ...
        uint8(bus.pelvis.leftReedSwitchState); ...
        uint8(bus.pelvis.rightReedSwitchState); ...
        typecast(single(bus.pelvis.vtmTemperature)', 'uint8')'; ...
        typecast(bus.leftLeg.hipRollDrive.statusWord', 'uint8')'; ...
        typecast(single(bus.leftLeg.hipRollDrive.position)', 'uint8')'; ...
        typecast(single(bus.leftLeg.hipRollDrive.velocity)', 'uint8')'; ...
        typecast(single(bus.leftLeg.hipRollDrive.torque)', 'uint8')'; ...
        typecast(single(bus.leftLeg.hipRollDrive.driveTemperature)', 'uint8')'; ...
        typecast(single(bus.leftLeg.hipRollDrive.dcLinkVoltage)', 'uint8')'; ...
        typecast(single(bus.leftLeg.hipRollDrive.torqueLimit)', 'uint8')'; ...
        typecast(single(bus.leftLeg.hipRollDrive.gearRatio)', 'uint8')'; ...
        typecast(bus.leftLeg.hipYawDrive.statusWord', 'uint8')'; ...
        typecast(single(bus.leftLeg.hipYawDrive.position)', 'uint8')'; ...
        typecast(single(bus.leftLeg.hipYawDrive.velocity)', 'uint8')'; ...
        typecast(single(bus.leftLeg.hipYawDrive.torque)', 'uint8')'; ...
        typecast(single(bus.leftLeg.hipYawDrive.driveTemperature)', 'uint8')'; ...
        typecast(single(bus.leftLeg.hipYawDrive.dcLinkVoltage)', 'uint8')'; ...
        typecast(single(bus.leftLeg.hipYawDrive.torqueLimit)', 'uint8')'; ...
        typecast(single(bus.leftLeg.hipYawDrive.gearRatio)', 'uint8')'; ...
        typecast(bus.leftLeg.hipPitchDrive.statusWord', 'uint8')'; ...
        typecast(single(bus.leftLeg.hipPitchDrive.position)', 'uint8')'; ...
        typecast(single(bus.leftLeg.hipPitchDrive.velocity)', 'uint8')'; ...
        typecast(single(bus.leftLeg.hipPitchDrive.torque)', 'uint8')'; ...
        typecast(single(bus.leftLeg.hipPitchDrive.driveTemperature)', 'uint8')'; ...
        typecast(single(bus.leftLeg.hipPitchDrive.dcLinkVoltage)', 'uint8')'; ...
        typecast(single(bus.leftLeg.hipPitchDrive.torqueLimit)', 'uint8')'; ...
        typecast(single(bus.leftLeg.hipPitchDrive.gearRatio)', 'uint8')'; ...
        typecast(bus.leftLeg.kneeDrive.statusWord', 'uint8')'; ...
        typecast(single(bus.leftLeg.kneeDrive.position)', 'uint8')'; ...
        typecast(single(bus.leftLeg.kneeDrive.velocity)', 'uint8')'; ...
        typecast(single(bus.leftLeg.kneeDrive.torque)', 'uint8')'; ...
        typecast(single(bus.leftLeg.kneeDrive.driveTemperature)', 'uint8')'; ...
        typecast(single(bus.leftLeg.kneeDrive.dcLinkVoltage)', 'uint8')'; ...
        typecast(single(bus.leftLeg.kneeDrive.torqueLimit)', 'uint8')'; ...
        typecast(single(bus.leftLeg.kneeDrive.gearRatio)', 'uint8')'; ...
        typecast(bus.leftLeg.footDrive.statusWord', 'uint8')'; ...
        typecast(single(bus.leftLeg.footDrive.position)', 'uint8')'; ...
        typecast(single(bus.leftLeg.footDrive.velocity)', 'uint8')'; ...
        typecast(single(bus.leftLeg.footDrive.torque)', 'uint8')'; ...
        typecast(single(bus.leftLeg.footDrive.driveTemperature)', 'uint8')'; ...
        typecast(single(bus.leftLeg.footDrive.dcLinkVoltage)', 'uint8')'; ...
        typecast(single(bus.leftLeg.footDrive.torqueLimit)', 'uint8')'; ...
        typecast(single(bus.leftLeg.footDrive.gearRatio)', 'uint8')'; ...
        typecast(single(bus.leftLeg.shinJoint.position)', 'uint8')'; ...
        typecast(single(bus.leftLeg.shinJoint.velocity)', 'uint8')'; ...
        typecast(single(bus.leftLeg.tarsusJoint.position)', 'uint8')'; ...
        typecast(single(bus.leftLeg.tarsusJoint.velocity)', 'uint8')'; ...
        typecast(single(bus.leftLeg.footJoint.position)', 'uint8')'; ...
        typecast(single(bus.leftLeg.footJoint.velocity)', 'uint8')'; ...
        bus.leftLeg.medullaCounter; ...
        typecast(bus.leftLeg.medullaCpuLoad', 'uint8')'; ...
        uint8(bus.leftLeg.reedSwitchState); ...
        typecast(bus.rightLeg.hipRollDrive.statusWord', 'uint8')'; ...
        typecast(single(bus.rightLeg.hipRollDrive.position)', 'uint8')'; ...
        typecast(single(bus.rightLeg.hipRollDrive.velocity)', 'uint8')'; ...
        typecast(single(bus.rightLeg.hipRollDrive.torque)', 'uint8')'; ...
        typecast(single(bus.rightLeg.hipRollDrive.driveTemperature)', 'uint8')'; ...
        typecast(single(bus.rightLeg.hipRollDrive.dcLinkVoltage)', 'uint8')'; ...
        typecast(single(bus.rightLeg.hipRollDrive.torqueLimit)', 'uint8')'; ...
        typecast(single(bus.rightLeg.hipRollDrive.gearRatio)', 'uint8')'; ...
        typecast(bus.rightLeg.hipYawDrive.statusWord', 'uint8')'; ...
        typecast(single(bus.rightLeg.hipYawDrive.position)', 'uint8')'; ...
        typecast(single(bus.rightLeg.hipYawDrive.velocity)', 'uint8')'; ...
        typecast(single(bus.rightLeg.hipYawDrive.torque)', 'uint8')'; ...
        typecast(single(bus.rightLeg.hipYawDrive.driveTemperature)', 'uint8')'; ...
        typecast(single(bus.rightLeg.hipYawDrive.dcLinkVoltage)', 'uint8')'; ...
        typecast(single(bus.rightLeg.hipYawDrive.torqueLimit)', 'uint8')'; ...
        typecast(single(bus.rightLeg.hipYawDrive.gearRatio)', 'uint8')'; ...
        typecast(bus.rightLeg.hipPitchDrive.statusWord', 'uint8')'; ...
        typecast(single(bus.rightLeg.hipPitchDrive.position)', 'uint8')'; ...
        typecast(single(bus.rightLeg.hipPitchDrive.velocity)', 'uint8')'; ...
        typecast(single(bus.rightLeg.hipPitchDrive.torque)', 'uint8')'; ...
        typecast(single(bus.rightLeg.hipPitchDrive.driveTemperature)', 'uint8')'; ...
        typecast(single(bus.rightLeg.hipPitchDrive.dcLinkVoltage)', 'uint8')'; ...
        typecast(single(bus.rightLeg.hipPitchDrive.torqueLimit)', 'uint8')'; ...
        typecast(single(bus.rightLeg.hipPitchDrive.gearRatio)', 'uint8')'; ...
        typecast(bus.rightLeg.kneeDrive.statusWord', 'uint8')'; ...
        typecast(single(bus.rightLeg.kneeDrive.position)', 'uint8')'; ...
        typecast(single(bus.rightLeg.kneeDrive.velocity)', 'uint8')'; ...
        typecast(single(bus.rightLeg.kneeDrive.torque)', 'uint8')'; ...
        typecast(single(bus.rightLeg.kneeDrive.driveTemperature)', 'uint8')'; ...
        typecast(single(bus.rightLeg.kneeDrive.dcLinkVoltage)', 'uint8')'; ...
        typecast(single(bus.rightLeg.kneeDrive.torqueLimit)', 'uint8')'; ...
        typecast(single(bus.rightLeg.kneeDrive.gearRatio)', 'uint8')'; ...
        typecast(bus.rightLeg.footDrive.statusWord', 'uint8')'; ...
        typecast(single(bus.rightLeg.footDrive.position)', 'uint8')'; ...
        typecast(single(bus.rightLeg.footDrive.velocity)', 'uint8')'; ...
        typecast(single(bus.rightLeg.footDrive.torque)', 'uint8')'; ...
        typecast(single(bus.rightLeg.footDrive.driveTemperature)', 'uint8')'; ...
        typecast(single(bus.rightLeg.footDrive.dcLinkVoltage)', 'uint8')'; ...
        typecast(single(bus.rightLeg.footDrive.torqueLimit)', 'uint8')'; ...
        typecast(single(bus.rightLeg.footDrive.gearRatio)', 'uint8')'; ...
        typecast(single(bus.rightLeg.shinJoint.position)', 'uint8')'; ...
        typecast(single(bus.rightLeg.shinJoint.velocity)', 'uint8')'; ...
        typecast(single(bus.rightLeg.tarsusJoint.position)', 'uint8')'; ...
        typecast(single(bus.rightLeg.tarsusJoint.velocity)', 'uint8')'; ...
        typecast(single(bus.rightLeg.footJoint.position)', 'uint8')'; ...
        typecast(single(bus.rightLeg.footJoint.velocity)', 'uint8')'; ...
        bus.rightLeg.medullaCounter; ...
        typecast(bus.rightLeg.medullaCpuLoad', 'uint8')'; ...
        uint8(bus.rightLeg.reedSwitchState); ...
        uint8(bus.isCalibrated); ...
        typecast(int16(bus.messages)', 'uint8')'];
    end % stepImpl

    function resetImpl(~)
      %RESETIMPL Reset System object states.
    end % resetImpl

    function name_1 = getInputNamesImpl(~)
      %GETINPUTNAMESIMPL Return input port names for System block.
      name_1 = '';
    end % getInputNamesImpl

    function name_1 = getOutputNamesImpl(~)
      %GETOUTPUTNAMESIMPL Return output port names for System block.
      name_1 = '';
    end % getOutputNamesImpl

    % PROPAGATES CLASS METHODS ============================================
    function sz_1 = getOutputSizeImpl(~)
      %GETOUTPUTSIZEIMPL Get sizes of output ports.
      sz_1 = [697, 1];
    end % getOutputSizeImpl

    function dt_1 = getOutputDataTypeImpl(~)
      %GETOUTPUTDATATYPEIMPL Get data types of output ports.
      dt_1 = 'uint8';
    end % getOutputDataTypeImpl

    function cp_1 = isOutputComplexImpl(~)
      %ISOUTPUTCOMPLEXIMPL Complexity of output ports.
      cp_1 = false;
    end % isOutputComplexImpl

    function flag_1 = isOutputFixedSizeImpl(~)
      %ISOUTPUTFIXEDSIZEIMPL Fixed-size or variable-size output ports.
      flag_1 = true;
    end % isOutputFixedSizeImpl
  end % methods
end % classdef
% construct a map
no_to_error_info_dict = containers.Map('KeyType','double','ValueType','char');
no_to_error_info_dict(1) = 'State changed';
no_to_error_info_dict(2) = 'Cable connected';
no_to_error_info_dict(3) = 'Scanbus finished';
no_to_error_info_dict(     4) = 'Distributed clocks initialized';
no_to_error_info_dict(     5) = 'DC slave synchronization deviation received';
no_to_error_info_dict(     8) = 'DCL initialized';
no_to_error_info_dict(     9) = 'DCM inSync';
no_to_error_info_dict(    21) = 'Successful slave state transition.';
no_to_error_info_dict(   100) = 'Queue raw command response notification';
no_to_error_info_dict( 65537) = 'Cyclic command: Working count error';
no_to_error_info_dict( 65538) = 'Master init command: Working count error';
no_to_error_info_dict( 65539) = 'Slave init command: Working count error';
no_to_error_info_dict( 65540) = 'EOE mbox receive: Working count error (deprecated)';
no_to_error_info_dict( 65541) = 'COE mbox receive: Working count error (deprecated)';
no_to_error_info_dict( 65542) = 'FOE mbox receive: Working count error (deprecated)';
no_to_error_info_dict( 65543) = 'EOE mbox send: Working count error';
no_to_error_info_dict( 65544) = 'COE mbox send: Working count error';
no_to_error_info_dict( 65545) = 'FOE mbox send: Working count error';
no_to_error_info_dict( 65546) = 'Frame response error: No response';
no_to_error_info_dict( 65547) = 'Slave init command: No response';
no_to_error_info_dict( 65548) = 'Master init command: No response';
no_to_error_info_dict( 65550) = 'Timeout when waiting for mailbox init command response';
no_to_error_info_dict( 65551) = 'Cyclic command: Not all slaves in op state';
no_to_error_info_dict( 65552) = 'Ethernet link (cable) not connected';
no_to_error_info_dict( 65554) = 'Redundancy: Line break detected';
no_to_error_info_dict( 65555) = 'Cyclic command: A slave is in error state';
no_to_error_info_dict( 65556) = 'Slave error status change';
no_to_error_info_dict( 65557) = 'Station address lost (or slave missing) - FPRD to AL_STATUS failed ';
no_to_error_info_dict( 65558) = 'SOE mbox receive: Working count error (deprecated)';
no_to_error_info_dict( 65559) = 'SOE mbox send: Working count error';
no_to_error_info_dict( 65560) = 'SOE mbox write responded with an error';
no_to_error_info_dict( 65561) = 'COE mbox SDO abort';
no_to_error_info_dict( 65562) = 'Client registration dropped, possibly call to ecatConfigureMaster by other thread (RAS)';
no_to_error_info_dict( 65563) = 'Redundancy: Line is repaired';
no_to_error_info_dict( 65564) = 'FOE mbox abort';
no_to_error_info_dict( 65565) = 'Invalid mail box data received';
no_to_error_info_dict( 65566) = 'PDI watchdog expired on slave, thrown by IST';
no_to_error_info_dict( 65567) = 'Slave not supported (if redundancy is activated and slave doesnt fully support autoclose';
no_to_error_info_dict( 65568) = 'Slave in unexpected state';
no_to_error_info_dict( 65569) = 'All slave devices are in operational state';
no_to_error_info_dict( 65570) = 'VOE mbox send: Working count error';
no_to_error_info_dict( 65571) = 'EEPROM checksum error detected';
no_to_error_info_dict( 65572) = 'Crossed lines detected';
no_to_error_info_dict( 65573) = 'Junction redundancy change';
no_to_error_info_dict(196610) = 'ScanBus mismatch';
no_to_error_info_dict(196611) = 'ScanBus mismatch. A duplicate HC group was detected';
no_to_error_info_dict(262146) = 'HC enhance detect all groups done';
no_to_error_info_dict(262147) = 'HC probe all groups done';
no_to_error_info_dict(262148) = 'HC topology change done';
no_to_error_info_dict(262149) = 'Slave disappears';
no_to_error_info_dict(262150) = 'Slave appears';

data_len = length(log_data.data);

for i=1:data_len
    if log_data.data(i, 50) > 0.5
        yy = ['time = ', num2str(log_data.data(i, 53)), '   ', no_to_error_info_dict(log_data.data(i, 50))];
        display(yy);
    end
end

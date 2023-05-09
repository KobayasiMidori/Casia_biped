classdef TrajectoryGenerator < handle
    properties
        T_;
        interval_num_;
        interval_unit_;
        shift_val_;
        end_;
        c_5_;
        c_4_;
        c_3_;
    end
    methods
        function obj = TrajectoryGenerator(total_time, interval_num)
            if nargin == 2
                obj.T_ = total_time;
                obj.interval_num_ = interval_num;
                obj.interval_unit_ = total_time / interval_num;
            end
        end
        
        function obj = set_position(obj, begins, ends)
            if nargin == 3
                obj.shift_val_ = begins;
                obj.end_ = (ends - begins);
                obj.c_5_ = (6*obj.end_)/(obj.T_*obj.T_*obj.T_*obj.T_*obj.T_);
                obj.c_4_ = (-15*obj.end_)/(obj.T_*obj.T_*obj.T_*obj.T_);
                obj.c_3_ = (10*obj.end_)/(obj.T_*obj.T_*obj.T_);
            end
        end
        
        function value = calc(obj, index)
            t_ = (obj.interval_unit_*index);
            value = 0;
            value = value + (t_*t_*t_)*obj.c_3_;
            value = value + (t_*t_*t_*t_)*obj.c_4_;
            value = value + (t_*t_*t_*t_*t_)*obj.c_5_;
            
            value = value + obj.shift_val_;
        end
        
        function value = calc_velo(obj, index)
            t_ = (obj.interval_unit_*index);
            value = 0;
            value = value + 3*(t_*t_)*obj.c_3_;
            value = value + 4*(t_*t_*t_)*obj.c_4_;
            value = value + 5*(t_*t_*t_*t_)*obj.c_5_;
        end
    end
end
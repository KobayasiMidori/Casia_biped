GL = load('GaitLibrary_output.mat');
GaitLibrary = GL.cassia_gait;
cassieGaitLibraryBusInfo = Simulink.Bus.createObject(GaitLibrary);
cassieGaitLibraryBus = eval(cassieGaitLibraryBusInfo.busName);
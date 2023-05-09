function RadioChannel = RButtonToChannel(Rbutton)
RadioChannel = zeros(6,1);
RadioChannel(1) = Rbutton.SBA;
RadioChannel(2) = Rbutton.LVA;
RadioChannel(3) = Rbutton.LSA;
RadioChannel(4) = Rbutton.LHA;
RadioChannel(5) = Rbutton.RHA;
RadioChannel(6) = Rbutton.RVA;
end
var
  Prop, Prop2: TTMProperty;     
  FEvent: TTMFacilityEvent;                                   
  FacilityEventsDesc: string;            
  i: Integer;                                        
                                        
procedure btnResetMachine(Sender: TcxButton);             
begin                                                    
  Prop := TTMProperty(PropertyByNameFlangeNo('MACHINE_HOURS', 0));   
  if Prop <> nil then ValidateValue('MACHINE_HOURS', 2, VarToStr(Prop.OutputValue));  
end;                                                       

procedure btnSetMotorHoursClick(Sender: TcxButton);
begin                                                    
  Prop := TTMProperty(PropertyByNameFlangeNo('MACHINE_HOURS', 0));   
  if Prop <> nil then ValidateValue('MACHINE_HOURS', 2, VarToStr(Prop.OutputValue - StrToFloat(edtMotorHourLocal.Text)));  
end;  

procedure btnSetReglamentHoursClick(Sender: TcxButton);
begin                                                    
  Prop := TTMProperty(PropertyByNameFlangeNo('MACHINE_HOURS', 3));   
  if Prop <> nil then ValidateValue('MACHINE_HOURS', 3, edtReglamentHours.Text);  
end;  

begin                            
  ClearForm;
  edtFacilityName.Text       := AFacility.Name;          
  edtEvent.Style.Color       := clWhite;                                  
  edtEvent.Hint              := '';
  edtEvent.Text              := '';                            
  FacilityEventsDesc         := ''; 
                                              
  imgPumpNotWorkingK1.Visible := False; 
  imgPumpWorkingK1.Visible    := False;
  imgPumpAlarmK1.Visible      := False;    
  imgPumpWorkingK2.Visible    := False;            
  imgPumpNotWorkingK2.Visible := False;  
  imgPumpAlarmK2.Visible      := False;        
         
  btnResetMotorHour.OnClick := @btnResetMachine; 
  btnSetMotorHours.OnClick  := @btnSetMotorHoursClick; 
  btnSetReglamentHours.OnClick  := @btnSetReglamentHoursClick; 
  
                                    
  for i := 0 to EventActiveSortList.Count-1 do
  begin                                     
    FEvent := TTMFacilityEvent(EventActiveSortList.Objects[i]);
    FacilityEventsDesc := GetEventsDesc(FacilityEventsDesc, FEvent);
    if edtEvent.Text = '' then
      edtEvent.Text := FacilityEventsDesc;
                                                           
    if FEvent.PropertyEvent <> nil then
    begin
      if FEvent.PropertyEvent is TTMPressureLinearProperty then
        case FEvent.FlangeNo of                                
          1: edtP1.Style.Color  := FEvent.EventType.Color;
          2: edtP2.Style.Color  := FEvent.EventType.Color;
          3: edtP3.Style.Color  := FEvent.EventType.Color;
        end;
    end;
  end;                       

  if (EventActiveSortList <> nil) and (FacilityEventsDesc <> '') then
    edtEvent.Style.Color := TTMFacilityEvent(EventActiveSortList.Objects[0]).EventType.Color;

  edtEvent.Hint := FacilityEventsDesc;
  

  Prop := TTMProperty(PropertyByNameFlangeNo('GAS_CONCENTRATION_SENSOR', 0));
  if (Prop <> nil) and (Prop.OutputValue <> null) then
    if Prop.OutputValue then
    begin
      edtGasConcentrationSensor.Text        := 'Загазованность';
      edtGasConcentrationSensor.Style.Color := 7105791;
    end
    else
    begin
      edtGasConcentrationSensor.Text        := 'Норма';
      edtGasConcentrationSensor.Style.Color := clMoneyGreen;
    end;     
                                                                   
  BindPropertyEditor(edtVacuumState,  'VACUUM_STATE_KOGS',   0, 0);
  BindPropertyEditor(edtVacuumMode,   'VACUUM_MODE_KOGS',    0, 0);   
   
  BindPropertyEditor(edtGasConcPercent,   'GAS_PERСENT',   0, 2);    
  BindPropertyEditor(edtMachineHours,     'MACHINE_HOURS', 0, 2);    
  BindPropertyEditor(edtMotorHourLocal,   'MACHINE_HOURS', 1, 2);   
  BindPropertyEditor(edtReglamentHours,   'MACHINE_HOURS', 3, 2);  
  
  BindPropertyEditor(edtAutoSwitchPipe,  'AUTOMAT_SWITCH', 1, 0);  
  BindPropertyEditor(edtAutoSwitchUVS,  'AUTOMAT_SWITCH', 2, 0);  
  BindPropertyEditor(edtAutoSwitchVent,  'AUTOMAT_SWITCH', 3, 0);
                                                                  
  Prop := TTMProperty(PropertyByNameFlangeNo('MACHINE_HOURS', 1));
  Prop2 := TTMProperty(PropertyByNameFlangeNo('MACHINE_HOURS', 3));
  if (Prop <> nil) and (Prop2 <> nil) and (Prop.OutputValue <> null) and (Prop2.OutputValue <> null) then
    if (Prop.OutputValue > Prop2.OutputValue) then edtMotorHourLocal.Style.Color := clRed; 
   
                                                                              
  //мнемосхема                                 
  Prop := TTMProperty(PropertyByNameFlangeNo('VACUUM_STATE',0));
  if (Prop <> nil) and (Prop.OutputValue <> null) then
     begin                       
       if (Prop.OutputValue = 6) or (Prop.OutputValue = 7) then
    begin
      imgPumpWorkingK1.Visible  := True;
    end;
  end;  

  BindPropertyEditor(edtTempOilPump1,    'TEMPERATURE', 1, 2); 
  BindPropertyEditor(edtTempOilPump2,    'TEMPERATURE', 2, 2);  
  BindPropertyEditor(edtTempGasS1,       'TEMPERATURE', 3, 2);  
  BindPropertyEditor(edtTempGasS2,       'TEMPERATURE', 4, 2); 
  BindPropertyEditor(edtTempGasS3,       'TEMPERATURE', 5, 2);   
  BindPropertyEditor(edtTempGasIn,       'TEMPERATURE', 6, 2); 
  BindPropertyEditor(edtTemperatureAir,  'TEMPERATURE', 7, 2);             
  BindPropertyEditor(edtTemperatureVCM,  'TEMPERATURE', 8, 2);   
  
  BindPropertyEditor(edtP1,  'PRESSURE_LINEAR', 1, 2);    
  BindPropertyEditor(edtP2,  'PRESSURE_LINEAR', 2, 2);  
  BindPropertyEditor(edtP3,  'PRESSURE_LINEAR', 3, 2); 
  
  BindPropertyEditor(edtAmperage1A,  'AMPERAGE', 1, 2);  
  BindPropertyEditor(edtAmperage1B,  'AMPERAGE', 2, 2); 
  BindPropertyEditor(edtAmperage1C,  'AMPERAGE', 3, 2);  
  BindPropertyEditor(edtAmperage2A,  'AMPERAGE', 4, 2); 
  BindPropertyEditor(edtAmperage2B,  'AMPERAGE', 5, 2); 
  BindPropertyEditor(edtAmperage2C,  'AMPERAGE', 6, 2); 
                                                         
                                      
  Prop := TTMProperty(PropertyByNameFlangeNo('VALVE_STATE', 1));
  if (Prop <> nil) and (Prop.OutputValue <> null) then
     case Prop.OutputValue of
      0: begin
           edtValve1.Text          := 'Открыта';
           edtValve1.Style.Color   := clMoneyGreen;
           imgValveWorking2.Visible := True;            
         end;                     
      1: begin
           edtValve1.Text          := 'Закрыт';
           edtValve1.Style.Color   := 10025724;
           imgValveWorking2.Visible := False;   
         end;   
      2: begin
           edtValve1.Text          := 'Открывается';
           edtValve1.Style.Color   := clMoneyGreen;
           imgValveWorking2.Visible := True;   
         end;               
      4: begin           
           edtValve1.Text          := 'Закрывается';
           edtValve1.Style.Color   := 10025724;
           imgValveWorking2.Visible := False;   
         end;    
      5: begin
           edtValve1.Text          := 'Авария';
           edtValve1.Style.Color   := 7105791;
         end;                        
    end;                          

  Prop := TTMProperty(PropertyByNameFlangeNo('VALVE_STATE', 2));
  if (Prop <> nil) and (Prop.OutputValue <> null) then 
    case Prop.OutputValue of
      0: begin
           edtValve2.Text          := 'Открыта';
           edtValve2.Style.Color   := clMoneyGreen;
           imgValveWorking1.Visible := True;   
         end;                     
      1: begin
           edtValve2.Text          := 'Закрыт';
           edtValve2.Style.Color   := 10025724;
           imgValveWorking1.Visible := False;   
         end;   
      2: begin
           edtValve2.Text          := 'Открывается';
           edtValve2.Style.Color   := clMoneyGreen;
           imgValveWorking1.Visible := True;   
         end;               
      4: begin           
           edtValve2.Text          := 'Закрывается';
           edtValve2.Style.Color   := 10025724;
           imgValveWorking1.Visible := False;   
         end;    
      5: begin
           edtValve2.Text          := 'Авария';
           edtValve2.Style.Color   := 7105791;
         end;                                               
    end;       
            
  Prop := TTMProperty(PropertyByNameFlangeNo('COMPRESSOR_STATE', 2));
  if (Prop <> nil) and (Prop.OutputValue <> null) then
    case Prop.OutputValue of
      0: begin
           edtK2State.Text          := 'В работе';
           edtK2State.Style.Color   := clMoneyGreen;                         
           imgPumpWorkingK2.Visible := True;
         end;
      1: begin
           edtK2State.Text        := 'Выключен';
           edtK2State.Style.Color := 10025724;
           imgPumpWorkingK2.Visible := False;
         end;
      3: begin
           edtK2State.Text        := 'Авария';                                    
           edtK2State.Style.Color := 7105791;
           imgPumpAlarmK2.Visible := True;              
         end;

    end;    
  
  Prop := TTMProperty(PropertyByNameFlangeNo('COMPRESSOR_STATE', 1));
  if (Prop <> nil) and (Prop.OutputValue <> null) then
    case Prop.OutputValue of
      0: begin
           edtK1State.Text          := 'В работе';
           edtK1State.Style.Color   := clMoneyGreen;
           imgPumpWorkingK1.Visible := True;
         end;
      1: begin                              
           edtK1State.Text          := 'Выключен';
           edtK1State.Style.Color   := 10025724;
           imgPumpWorkingK1.Visible := False;
         end;
      3: begin  
           edtK1State.Text          := 'Авария';
           edtK1State.Style.Color   := 7105791;
           imgPumpAlarmK1.Visible   := True;
         end; 
    end;                  
    
  BindPropertyEditor(edtOilLevel,  'LEVEL_STATE_ALARM', 1, 0);
  BindPropertyEditor(edtCondLevel, 'LEVEL_STATE_ALARM', 2, 0);
                                 

  Prop := TTMProperty(PropertyByNameFlangeNo('POWER_STATE', 1));
  if (Prop <> nil) and (Prop.OutputValue <> null) then
    if Prop.OutputValue then
    begin
      edtPower.Text        := 'Отсутствие';
      edtPower.Style.Color := 10025724;                                           
    end
    else
    begin
      edtPower.Text        := 'Наличие';
      edtPower.Style.Color := clMoneyGreen;
    end;      

  Prop := TTMProperty(PropertyByNameFlangeNo('HEATING', 1));
  if (Prop <> nil) and (Prop.OutputValue <> null) then
    if Prop.OutputValue then
    begin
      edtGasHeater.Text := 'Включен';
    end
    else
    begin
      edtGasHeater.Text := 'Выключен';    
    end;        

  Prop := TTMProperty(PropertyByNameFlangeNo('HEATING', 2));
  if (Prop <> nil) and (Prop.OutputValue <> null) then
    if Prop.OutputValue then
    begin
      edtUVSHeater.Text := 'Включен';
    end
    else
    begin
      edtUVSHeater.Text := 'Выключен';
    end;   

  BindPropertyEditor(edtVenState, 'VENTILATION', 1, 0);     

  Prop := TTMProperty(PropertyByNameFlangeNo('RELE_STATE', 1));
  if (Prop <> nil) and (Prop.OutputValue <> null) then
    if Prop.OutputValue then
    begin
      edtReleAlarm1.Text        := 'Сработал';
      edtReleAlarm1.Style.Color := 10025724;
    end
    else
    begin
      edtReleAlarm1.Text        := 'Норма';
      edtReleAlarm1.Style.Color := clMoneyGreen;
    end;  

  Prop := TTMProperty(PropertyByNameFlangeNo('RELE_STATE', 2));
  if (Prop <> nil) and (Prop.OutputValue <> null) then
    if Prop.OutputValue then
    begin
      edtReleAlarm2.Text        := 'Сработал';
      edtReleAlarm2.Style.Color := 10025724;
    end
    else
    begin
      edtReleAlarm2.Text        := 'Норма';
      edtReleAlarm2.Style.Color := clMoneyGreen;
    end;  
  
  if not imgPumpWorkingK1.Visible and not imgPumpAlarmK1.Visible then
    imgPumpNotWorkingK1.Visible := True;  
    
  if not imgPumpWorkingK2.Visible and not imgPumpAlarmK2.Visible then
    imgPumpNotWorkingK2.Visible := True; 
                                   
End.                                                             
package com.app.OnlineFIRsystem.emergencyComplaint;

public interface EmergencyComplaintDAO {
    public EmergencyComplaint findById(long id);

    public Iterable<EmergencyComplaint> findAll();

    public EmergencyComplaint save(EmergencyComplaint emergencyComplaint);
}
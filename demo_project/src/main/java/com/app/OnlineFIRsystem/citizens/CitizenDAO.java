package com.app.OnlineFIRsystem.citizens;

public interface CitizenDAO {
    public Citizen save(Citizen citizen);

    public Iterable<Citizen> findAll();

    public Citizen findById(long id);

    public Citizen findByComplaintId(long id);
}
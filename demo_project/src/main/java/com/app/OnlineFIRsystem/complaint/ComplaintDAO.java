package com.app.OnlineFIRsystem.complaint;

public interface ComplaintDAO {
    public Complaint save(Complaint complaint);

    public Iterable<Complaint> findAll();

    public Complaint findById(long id);

    public void deleteById(long id);

}
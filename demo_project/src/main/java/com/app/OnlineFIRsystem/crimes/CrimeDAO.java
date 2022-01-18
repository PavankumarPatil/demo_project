package com.app.OnlineFIRsystem.crimes;

public interface CrimeDAO {

    public Crime save(Crime crime);

    public Iterable<Crime> findAll();

    public void deleteById(long id);
}
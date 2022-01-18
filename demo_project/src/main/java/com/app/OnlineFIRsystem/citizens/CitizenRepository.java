package com.app.OnlineFIRsystem.citizens;

import org.springframework.data.repository.CrudRepository;

public interface CitizenRepository extends CrudRepository<Citizen, Long> {
    Citizen findByComplaintId(long id);
}
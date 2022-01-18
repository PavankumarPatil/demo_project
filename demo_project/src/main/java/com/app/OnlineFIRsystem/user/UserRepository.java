package com.app.OnlineFIRsystem.user;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Integer> {
    User findByUsername(String username);

    User findByPoliceId(long id);

    User findByCitizenId(long id);
}
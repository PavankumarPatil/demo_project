package com.app.OnlineFIRsystem;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;



import com.app.OnlineFIRsystem.emergencyComplaint.EmergencyComplaint;
import com.app.OnlineFIRsystem.people.People;
import com.app.OnlineFIRsystem.people.PeopleRepository;
import com.app.OnlineFIRsystem.people.PeopleServiceImpl;

import org.junit.jupiter.api.Test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;

@SpringBootTest
public class PeopleServiceTest {

    @Autowired
    PeopleServiceImpl peopleService;

    @MockBean
    PeopleRepository peopleRepository;

    @Test
    public void addSinglePeopleDetail() {
        long phoneNumber = 9876543210l;
        People people = new People(1, "rohit pawar", phoneNumber,
                new EmergencyComplaint(2, "No dogs to feed", "Investigation Pending"));

        when(peopleRepository.save(people)).thenReturn(people);
        People savedPeople = peopleRepository.save(people);

        assertEquals(savedPeople, peopleService.addSinglePeopleDetail(people), "It should add the people Detail");
    }
}
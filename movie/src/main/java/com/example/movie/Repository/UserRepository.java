package com.example.movie.Repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.movie.Entity.User;



@Repository
public interface UserRepository extends JpaRepository<User, Integer>{

	List<User> findByPhoneNumber(String phoneNumber);
}

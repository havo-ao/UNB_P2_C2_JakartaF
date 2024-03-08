package co.edu.unbosque.model.daos;

import java.util.ArrayList;
import java.util.UUID;

import co.edu.unbosque.model.entities.Booking;

public interface BookingDAO {
	ArrayList<Booking> findAll();
    Booking findById(UUID id);
    void save(Booking booking);
    void update(Booking booking);
    void deleteById(UUID id);
}

package co.edu.unbosque.model.daos;

import java.util.ArrayList;

import co.edu.unbosque.model.entities.Booking;

public interface BookingDAO {
	ArrayList<Booking> findAll();
    Booking findById(String id);
    void save(Booking booking);
    void update(Booking booking);
    void deleteById(String id);
    void cancelBooking(String id);
}

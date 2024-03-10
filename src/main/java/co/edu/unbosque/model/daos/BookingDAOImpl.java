package co.edu.unbosque.model.daos;

import java.util.ArrayList;

import co.edu.unbosque.model.dataSource.DataSource;
import co.edu.unbosque.model.entities.Booking;

public class BookingDAOImpl implements BookingDAO {
    @Override
    public ArrayList<Booking> findAll() {
        return DataSource.bookings;
    }

    @Override
    public Booking findById(String id) {
        return DataSource.bookings.stream()
                .filter(booking -> booking.getId().equals(id))
                .findFirst()
                .orElse(null);
    }

    @Override
    public void save(Booking booking) {
        DataSource.bookings.add(booking);
    }

    @Override
    public void update(Booking booking) {
        int index = DataSource.bookings.indexOf(booking);
        if (index != -1) {
            DataSource.bookings.set(index, booking);
        }
    }

    @Override
    public void deleteById(String id) {
        DataSource.bookings.removeIf(booking -> booking.getId().equals(id));
    }
}


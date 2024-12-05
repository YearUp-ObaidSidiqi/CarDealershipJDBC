package com.pluralsight.DataManager;

import com.pluralsight.Vehicle;

import javax.sql.DataSource;

public class VehicleDao {

    private final DataSource dataSource;

    public VehicleDao(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public static void getAllVehicles() {
        // Retrieve all vehicles
    }

    public static void addVehicle(Vehicle vehicle) {
        // Add a vehicle
    }

    public static void removeVehicle(int vin) {
        // Remove a vehicle by VIN
    }

    public static void updateVehicle(int vin, Vehicle vehicle) {
        // Update a vehicle by VIN
    }















}

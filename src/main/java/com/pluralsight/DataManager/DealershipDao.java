package com.pluralsight.DataManager;

import com.pluralsight.Dealership;
import org.apache.commons.dbcp2.BasicDataSource;

public class DealershipDao {

    private final BasicDataSource dataSource;


    public DealershipDao(BasicDataSource dataSource) {
        this.dataSource = dataSource;
    }

    public static void getAllDealerships() {
        // Retrieve all dealerships
    }

    public static void addDealership(Dealership dealership) {
        // Add a dealership
    }

    public static void removeDealership(int dealershipId) {
        // Remove a dealership by ID
    }

























}

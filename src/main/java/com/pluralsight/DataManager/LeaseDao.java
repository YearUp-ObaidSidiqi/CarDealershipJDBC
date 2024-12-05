package com.pluralsight.DataManager;

import com.pluralsight.LeaseContract;
import org.apache.commons.dbcp2.BasicDataSource;

public class LeaseDao {

    private final BasicDataSource dataSource;


    public LeaseDao(BasicDataSource dataSource) {
        this.dataSource = dataSource;
    }

    public static void addLeaseContract(LeaseContract leaseContract) {
        // Add a lease contract
    }

    public static void removeLeaseContract(int contractId) {
        // Remove a lease contract by ID
    }

    public static void getAllLeaseContracts() {
        // Retrieve all lease contracts
    }




}

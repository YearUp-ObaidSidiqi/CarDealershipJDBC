package com.pluralsight.DataManager;

import com.pluralsight.SalesContract;
import org.apache.commons.dbcp2.BasicDataSource;

public class SalesDao {
    private final BasicDataSource dataSource;


    public SalesDao(BasicDataSource dataSource) {
        this.dataSource = dataSource;
    }

    public static void addSalesContract(SalesContract salesContract) {
        // Add a sales contract
    }

    public static void removeSalesContract(int contractId) {
        // Remove a sales contract by ID
    }

    public static void getAllSalesContracts() {
        // Retrieve all sales contracts
    }


}

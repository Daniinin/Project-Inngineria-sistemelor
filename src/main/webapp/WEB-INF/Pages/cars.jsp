<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:pageTemplate pageTitle="Cars">
    <h1>Cars</h1>

    <%
        // preia listele din request
        java.util.List cars = (java.util.List) request.getAttribute("cars");
        Integer numberOfFreeParkingSpots = (Integer) request.getAttribute("numberOfFreeParkingSpots");
    %>

    <% if (cars != null && !cars.isEmpty()) { %>
    <div class="table-responsive">
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">License Plate</th>
                <th scope="col">Parking Spot</th>
                <th scope="col">Owner</th>
            </tr>
            </thead>
            <tbody>

            <% for (Object obj : cars) {
                parkinglot.entities.Car car = (parkinglot.entities.Car) obj;
            %>
            <tr>
                <td><%= car.getLicensePlate() %></td>
                <td><%= car.getParkingSpot() %></td>
                <td><%= car.getOwnerName() %></td>
            </tr>
            <% } %>

            </tbody>
        </table>
    </div>
    <% } %>

    <h5>Free parking spots: <%= numberOfFreeParkingSpots %></h5>

</t:pageTemplate>

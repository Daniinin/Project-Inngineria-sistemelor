<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:pageTemplate pageTitle="Users">
    <h1>Users</h1>

    <%
        // Luăm lista de utilizatori din request
        java.util.List users = (java.util.List) request.getAttribute("users");

        // Verificăm rolurile user-ului logat
        boolean canWriteUsers = request.isUserInRole("WRITE_USERS");
    %>

    <div class="container text-center">
        <% if (canWriteUsers) { %>
        <a class="btn btn-primary btn-lg" href="<%= request.getContextPath() %>/AddUser" role="button">Add User</a>
        <% } %>
    </div>

    <% if (users != null && !users.isEmpty()) { %>
    <div class="table-responsive">
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">Username</th>
                <th scope="col">Email</th>
            </tr>
            </thead>
            <tbody>

            <% for (Object o : users) {
                parkinglot.entities.User user = (parkinglot.entities.User) o;
            %>
            <tr>
                <td><%= user.getUsername() %></td>
                <td><%= user.getEmail() %></td>
            </tr>
            <% } %>

            </tbody>
        </table>
    </div>
    <% } %>

</t:pageTemplate>

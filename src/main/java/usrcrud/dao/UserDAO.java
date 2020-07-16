package usrcrud.dao;

import usrcrud.model.User;

import java.util.List;

public interface UserDAO {

    List<User> listUsers();

    void addUser(User user);

    void deleteUser(User user);

    void updateUser(User user);

    User getUserById(int id);


}

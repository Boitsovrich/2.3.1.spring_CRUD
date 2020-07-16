package usrcrud.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import usrcrud.dao.UserDAO;
import usrcrud.model.User;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    private UserDAO userDAO;

    @Autowired
    public void setUserDAO(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    @Transactional
    public List<User> listUsers() {  return userDAO.listUsers( );  }

    @Override
    @Transactional
    public void addUser(User user) {  userDAO.addUser(user);  }

    @Override
    @Transactional
    public void deleteUser(User user) {  userDAO.deleteUser(user);  }

    @Override
    @Transactional
    public void updateUser(User user) {  userDAO.updateUser(user);  }

    @Override
    @Transactional
    public User getUserById(int id) {  return userDAO.getUserById(id);  }

}

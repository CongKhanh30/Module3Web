package service;

import model.User;

import java.util.ArrayList;
import java.util.List;

public class UserService {
    List<User> users = new ArrayList<>();
    public UserService() {
        users.add(new User(1, "admin", "1", "user"));
        users.add(new User(2, "user1", "1", "user"));
        users.add(new User(3, "user2", "1", "user"));
    }

    public void add(User user) {
        this.users.add(user);
    }

    public boolean checkUser(String username, String password) {
        for (User user: users) {
            if(username.equals(user.getUsername()) && password.equals(user.getPassword())) {
                return true;
            }
        }
        return false;
    }

    public int getIdUser(String username, String password) {
        for (User user: users) {
            if(username.equals(user.getUsername()) && password.equals(user.getPassword())) {
                return user.getId();
            }
        }
        return -1;
    }
}
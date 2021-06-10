package net.javaguides.usermanagement.dao;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
 
import net.javaguides.usermanagement.model.User;
 
//Just to avoid DB calls in this example, Assume below data is interacting with DB
public class UserDAO {
    static HashMap<String, User> usersMap = new HashMap<String, User>();
 
    public UserDAO() {
            User user1 = new User();
            user1.setId("1");
            user1.setEmail("test1@gmail.com");
            user1.setName("user1");
            user1.setCountry("TRserver1");
           
            User user2 = new User();
            user2.setId("2");
            user2.setEmail("test2@yahoo.com");
            user2.setName("user2");
            user2.setName("TRserver2");
           
            usersMap.put("1", user1);
            usersMap.put("2", user2);
    }
 
    public List<User> getAllUsers() {
 
        List<User> userList = new ArrayList<User>(usersMap.values());
        return userList;
    }
 
    public User getUserForId(String id) {
        User user = usersMap.get(id);
        return user;
    }
 
    public User createUser(User user) {
        usersMap.put(user.getId(), user);
        return usersMap.get(user.getId());
    }
 
    public User updateUser(User user) {
        User existingUser= usersMap.get(user.getId());
        if (existingUser != null) {
            existingUser.setName(user.getName());
            existingUser.setEmail(user.getEmail());
            existingUser.setCountry(user.getCountry());
        } else {
            usersMap.put(user.getId(), user);
        }
        return usersMap.get(user.getId());
    }
 
    public User deleteUser(String id) {
        User userResponse = usersMap.remove(id);
        return userResponse;
    }
   }
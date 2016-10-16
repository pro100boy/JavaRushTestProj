package com.javarushtestproj.controller;

import com.javarushtestproj.entity.User;
import com.javarushtestproj.service.UserService;
import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class UserController {

    private static final Logger logger = Logger.getLogger(UserController.class);
    private List<User> usersList;

    public UserController() {
        System.out.println("UserController()");
    }

    @Autowired
    private UserService userService;

    @RequestMapping("createUser")
    public ModelAndView createUser(@ModelAttribute User user) {
        logger.info("Creating User. Data: " + user);
        return new ModelAndView("userForm");
    }

    @RequestMapping("editUser")
    public ModelAndView editUser(@RequestParam long id, @ModelAttribute User user) {
        logger.info("Updating the User for the Id " + id);
        user = userService.getUser(id);
        return new ModelAndView("userForm", "userObject", user);
    }

    @RequestMapping("saveUser")
    public ModelAndView saveUser(@ModelAttribute User user) {
        logger.info("Saving the User. Data : " + user);
        if (user.getId() == 0) { // if user id is 0 then creating the user other updating the user
            userService.createUser(user);
        } else {
            userService.updateUser(user);
        }
        return new ModelAndView("redirect:getAllUsers");
    }

    @RequestMapping("deleteUser")
    public ModelAndView deleteUser(@RequestParam long id) {
        logger.info("Deleting the User. Id : " + id);
        userService.deleteUser(id);
        return new ModelAndView("redirect:getAllUsers");
    }

    @RequestMapping(value = {"getAllUsers", "/"})
    public ModelAndView getAllUsers(@RequestParam(required = false) Integer page) {
        logger.info("Getting the all Users.");
        usersList = userService.getAllUsers();
        //return new ModelAndView("userList", "userList", userList);
        return new ModelAndView("redirect:list");
    }

    @RequestMapping(value = {"list", "/list"})
    public ModelAndView listOfUsers(@RequestParam(required = false) Integer page) {
        ModelAndView modelAndView = new ModelAndView("userList");

        PagedListHolder<User> pagedListHolder = new PagedListHolder<>(usersList);
        // чтобы количество страниц было 10 +- 1, т.к. длинный navbar - некрасиво
        pagedListHolder.setPageSize(usersList.size() > 10 ? usersList.size()/10 : 10);

        modelAndView.addObject("maxPages", pagedListHolder.getPageCount());

        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) page = 1;

        modelAndView.addObject("page", page);
        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(0);
        } else if (page <= pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(page - 1);
        }
        modelAndView.addObject("userList", pagedListHolder.getPageList());

        return modelAndView;
    }

    @RequestMapping("searchUser")
    public ModelAndView searchUser(@RequestParam("searchName") String searchName) {
        logger.info("Searching the User. User Names: " + searchName);
        usersList = userService.getAllUsers(searchName);
        return new ModelAndView("redirect:list");
    }
}
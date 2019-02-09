package com.project.springbootwebapp.controller;

import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.project.springbootwebapp.model.Todo;
import com.project.springbootwebapp.service.TodoService;

@Controller
@SessionAttributes("namee")
public class TodoController {

	@Autowired
	private TodoService service;

	@RequestMapping(value = "/list-todos", method = RequestMethod.GET)
	public String showTodosList(ModelMap model) {
//		String user = (String) model.get("name");
//		model.addAttribute("todos", service.retrieveTodos(user));
		String Name=(String)model.get("namee");
		System.out.println("Name"+Name);
		model.addAttribute("todos", service.retrieveTodos(Name));
		return "list-todos";
	}

	@RequestMapping(value = "/add-todo", method = RequestMethod.GET)
	public String showAddTodoPage(ModelMap model) {
//		model.addAttribute("todo", new Todo());
		return "todo";
	}

	@RequestMapping(value = "/add-todo", method = RequestMethod.POST)
	public String addTodo(ModelMap model,@RequestParam String desc) {
//
//		if (result.hasErrors())
//			return "todo";
//
		service.addTodo((String) model.get("namee"), desc, new Date(),
				false);
//		model.clear();// to prevent request parameter "name" to be passed
//		return "redirect:/list-todos";
		System.out.println("list todo"+desc);

		return "redirect:/list-todos";
	}

	@RequestMapping(value = "/update-todo", method = RequestMethod.GET)
	public String showUpdateTodoPage(ModelMap model, @RequestParam int id) {
		model.addAttribute("todo", service.retrieveTodo(id));
		return "todo";
	}

	@RequestMapping(value = "/update-todo", method = RequestMethod.POST)
	public String updateTodo(ModelMap model, @Valid Todo todo,
			BindingResult result) {
		if (result.hasErrors())
			return "todo";

		todo.setUser((String) model.get("name"));
		service.updateTodo(todo);

		model.clear();// to prevent request parameter "name" to be passed
		return "redirect:/list-todos";
	}

	@RequestMapping(value = "/delete-todo", method = RequestMethod.GET)
	public String deleteTodo(@RequestParam int id) {
		service.deleteTodo(id);

		return "redirect:/list-todos";
	}

}

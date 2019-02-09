package com.project.springbootwebapp.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Service;

import com.project.springbootwebapp.model.Todo;
@Service
public class TodoService {
	private static List<Todo> todos = new ArrayList<Todo>();
	private static int todoCount = 3;

	static {
		todos.add(new Todo(1, "Aayush", "Learn Spring MVC", new Date(),
				false));
		todos.add(new Todo(2, "Aayush", "Learn Struts", new Date(), false));
		todos.add(new Todo(3, "Aayushh", "Learn Hibernate", new Date(),
				false));
	}

	public List<Todo> retrieveTodos(String user) {
		List<Todo> filteredTodos = new ArrayList<Todo>();
		for (Todo todo : todos) {
			if (todo.getUser().equals(user))
				filteredTodos.add(todo);
		}
		return filteredTodos;
	}

	public Todo retrieveTodo(int id) {
		for (Todo todo : todos) {
			if (todo.getId() == id)
				return todo;
		}
		return null;
	}

	public void updateTodo(Todo todo) {
		System.out.print("Todos "+todo);
//		odos.remove(todo);
//		todos.add(todo);
		Iterator<Todo> iterator = todos.iterator();
		while (iterator.hasNext()) {
			Todo todoItr = iterator.next();
			if (todoItr.getId() == todo.getId()) {
				todoItr.setDesc(todo.getDesc());
				todoItr.setisDone(todo.getisDone());
				todoItr.setTargetDate(todo.getTargetDate());
				todoItr.setUser(todo.getUser());
				todoItr.setId(todo.getId());
				
			}
		}
	}

	public void addTodo(String name, String desc, Date targetDate,
			boolean isDone) {
		todos.add(new Todo(++todoCount, name, desc, targetDate, isDone));
	}

	public void deleteTodo(int id) {
		Iterator<Todo> iterator = todos.iterator();
		while (iterator.hasNext()) {
			Todo todo = iterator.next();
			if (todo.getId() == id) {
				iterator.remove();
			}
		}
	}
}
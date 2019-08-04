<h1>Todo List <strike><small>6 Juta Dollar</small></strike></h1>

<ul>
{% for todo in todos %}
    <li>{{ todo.todo }} ~ {{ todo.status == 0 ? 'Uncompleted' : 'Completed' }}  
        ( <a href="edit-todo/{{ todo.id }}">Edit</a> )
        ( <a href="delete-todo/{{ todo.id }}">Delete</a> )
    </li>
{% endfor %}
</ul>

{{ form('add-todo', 'role': 'form') }}
    <input type="text" placeholder="add new todo..." name="todo" />
    <button type="submit" class="btn btn=default">Add</button>
</form>
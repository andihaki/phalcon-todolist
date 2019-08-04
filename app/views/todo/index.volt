<h1>Todo List</h1>

<ul>
{% for todo in todos %}
    <li>{{ todo.todo }} ~ {{ todo.status == 0 ? 'Uncompleted' : 'Completed' }}  ( <a href="edit-todo">Edit</a> )</li>
{% endfor %}
</ul>

{{ form('add-todo', 'role': 'form') }}
    <input type="text" placeholder="add new todo..." name="todo" />
    <button type="submit" class="btn btn=default">Add</button>
</form>
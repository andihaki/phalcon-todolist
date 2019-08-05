{% extends 'shared/template.volt' %}
{% block contents_page %}


<h1 class="text-center">Todo List <strike><small>6 Juta Dollar</small></strike></h1>

<div class="row marketing">
{#
    <ul class="list-unstyled col-md-5 col-md-offset-2">
    {% for todo in todos %}
        <li>{{ todo.todo }} ~ {{ todo.status == 0 ? 'Uncompleted' : 'Completed' }}  
            ( <a href="edit-todo/{{ todo.id }}">Edit</a> )
            ( <a href="delete-todo/{{ todo.id }}">Delete</a> )
        </li>
    {% endfor %}
    </ul>
#}
<table class="table table-hover">
  <thead>
    <tr>
        <th>No</th>
        <th>Todo</th>
        <th>Status</th>
        <th>Action</th>
  </thead>
  <tbody>
    {% for index, todo in todos %}
        <tr>
            <td>{{ index + 1 }}</td>
            <td>{{ todo.todo }}</td>
            <td>{{ todo.status == 0 ? 'Uncompleted' : 'Completed' }}</td>
            <td><a href="edit-todo/{{ todo.id }}">Edit</a> | <a href="delete-todo/{{ todo.id }}">Delete</a></td>  
        </tr>
    {% endfor %}
  </tbody>
</table>
</div>

{{ form('add-todo', 'role': 'form', 'class': 'text-center') }}
    <input type="text" placeholder="add new todo..." name="todo" />
    <button type="submit" class="btn btn=default">Add</button>
</form>
{% endblock %}
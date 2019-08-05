{% extends 'shared/template.volt' %}
{% block contents_page %}

<h1 class="text-center">Todo List <strike><small>6 Juta Dollar</small></strike></h1>
{{ form('add-todo', 'role': 'form', 'class': 'text-center') }}    
    <div class="input-group">
      <input type="text" class="form-control" placeholder="Type new todo...">
      <span class="input-group-btn">
        <button class="btn btn-success" type="button">Add Todo</button>
      </span>
    </div><!-- /input-group -->
</form>

<div class="row marketing">
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
                <td style="text-decoration: {{todo.status == 1 ?  'line-through' : '' }};">{{ todo.todo }}</td>
                <td>{{ todo.status == 0 ? 'Uncompleted' : 'Completed' }}</td>
                <td><a href="edit-todo/{{ todo.id }}">Edit</a> | <a href="delete-todo/{{ todo.id }}">Delete</a></td>  
            </tr>
        {% endfor %}
    </tbody>
    </table>
</div>

{% endblock %}
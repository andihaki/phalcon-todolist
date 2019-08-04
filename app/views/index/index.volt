<div><a href="signup">Signup</a></div>
<div><a href="todolist">TodoList</a></div>

{% for user in users %}
    <div>{{ user.name}}</div>
{% endfor %}
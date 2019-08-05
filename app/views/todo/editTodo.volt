{% extends 'shared/template.volt' %}
{% block contents_page %}

<h1>Edit Todo</h1>

<p>Last Update: {{ last_update }} </p>
{{ form('update-todo', 'role': 'form') }}
    <input type="hidden" name="id" value={{ id }}>
    
    <div class="form-group">
        <label for="todo">Todo</label>
        <input class="form-control" type="text" name="todo" value="{{ todo|e }}" />
    </div>
    
    <div class="checkbox">
        <label>
            <input type="checkbox" value={{status}} name="status" {{ status ? "checked" : "" }} />
            Status 
        </label>
    </div>

    <button type="submit" class="btn btn-primary">Update</button>
</form>
{% endblock %}
{% block script %}
<script>
    // ganti status todolist
    // $("input[type='checkbox']").change(() => console.log('a'))
    let status = document.querySelector("input[type='checkbox']");
    status.addEventListener('change', function() {
        // console.log(status.checked);
        status.value = status.checked ? 1 : 0;
    })
</script>
{% endblock %}
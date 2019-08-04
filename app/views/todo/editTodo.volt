<h1>Edit Todo</h1>

<p>Last Update: {{ last_update }} </p>
{{ form('update-todo', 'role': 'form') }}
    <input type="hidden" name="id" value={{ id }}>
    
    <label for="todo">Todo</label>
    <input type="text" name="todo" value="{{ todo|e }}" />
    <br/>
    
    <label for="status">Status</label>
    <input type="text" name="status" value="{{ status }}" />
    <br/>

    <button type="submit">Update</button>
</form>
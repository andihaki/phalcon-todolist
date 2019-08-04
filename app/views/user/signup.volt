<h1>Signup</h1>
{{ form('register', 'role': 'form') }}
    <p>
        <label for="name">Nama</label>
        <input type="text" name="name">
    </p>
    <p>
        <label for="email">Email</label>
        <input type="email" name="email">
    </p>
    <button type="submit">Simpan</button>
</form>
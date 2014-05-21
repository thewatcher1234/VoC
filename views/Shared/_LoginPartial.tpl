%if get('Username','Hi') == 'Hi':
    <li>
        <div>
            Hello, <a href="/Account/Manage">{{Username}}</a>!
            @using (Html.BeginForm("LogOff", "Account", FormMethod.Post, new { id = "logoutForm" })) {
                @Html.AntiForgeryToken()
                <a href="javascript:document.getElementById('logoutForm').submit()">Log off</a>
        </div>
    </li>
%else:
    <li><a href="/Account/Register">Register</a></li>
    <li><a href="/Account/Login">Log In</a></li>
%end

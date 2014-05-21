% rebase('Shared/_Layout.tpl')
<div class="well">
    <form action="/Account/Login" method="post" name="login" class="form-horizontal">
        <legend>Login Form</legend>
        <p>Please insert your credentials:</p>
        <div class="form-group">
          <label for="inputUserName" class="col-lg-2 control-label">UserName</label>
          <div class="col-lg-10">
            <input type="text" class="form-control" id="inputUserName" placeholder="Username">
          </div>
        </div>
        <div class="form-group">
            <label for="inputPassword" class="col-lg-2 control-label">Password</label>
            <div class="col-lg-10">
                <input type="password" class="form-control" id="inputPassword" placeholder="Password">
            </div>
        </div>
        <br/><br/>
        <button type="submit" class="btn btn-success"> OK </button>
        <button type="button" class="btn btn-danger"> Cancel </button>
    </form>
    <br />
</div>
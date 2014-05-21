% rebase('Shared/_Layout.tpl',username=get('Username',None))
<div class="well">
    <p>Please insert your credentials:</p>
    <form action="/Account/Register" method="post" name="signup" class="form-horizontal">
        <fieldset>
            <legend>Sign up</legend>
            <div class="form-group">
                <label for="inputUsername" class="col-lg-2 control-label">Username</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control" id="inputUsername" placeholder="Username">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword" class="col-lg-2 control-label">Password</label>
                <div class="col-lg-10">
                    <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                </div>
            </div>
            <div class="form-group">
                <label for="inputEmail" class="col-lg-2 control-label">Email</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control" id="inputEmail" placeholder="Email">
                </div>
            </div>

            <br/><br/>
            <button type="submit" class="btn btn-success"> OK </button>
            <button type="button" class="btn btn-danger "> Cancel </button>
        </fieldset>
    </form>
    <br />
</div>
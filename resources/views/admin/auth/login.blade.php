<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
    <title>Login &dash; Admin</title>
    <link rel="icon" type="image/x-icon" href="{{ asset('uploads/favicon.png') }}"/>

    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700" rel="stylesheet">
    <link href="{{ asset('dist-cork/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="{{ asset('dist-cork/assets/css/iziToast.min.css') }}">
    <link href="{{ asset('dist-cork/assets/css/plugins.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('dist-cork/assets/css/authentication/form-2.css') }}" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->

    <link rel="stylesheet" type="text/css" href="{{ asset('dist-cork/assets/css/forms/theme-checkbox-radio.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('dist-cork/assets/css/forms/switches.css') }}">

</head>
<body class="form">


    <div class="form-container outer">
        <div class="form-form">
            <div class="form-form-wrap">
                <div class="form-container">
                    <div class="form-content">

                        <h1 class="">Sign In</h1>
                        <p class="">Log in to your admin account.</p>

                        <form class="text-left" method="POST" action="{{ route('admin_login_submit') }}">
                            @csrf
                            <div class="form">
                                <div id="username-field" class="field-wrapper input">
                                    <label for="username">EMAIL</label>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                                    <input id="username" name="email" type="email" class="form-control" placeholder="Email" value="{{ old('email') }}">

                                </div>

                                <div id="password-field" class="field-wrapper input mb-2">
                                    <div class="d-flex justify-content-between">
                                    <label for="password">PASSWORD</label>

                                    <a href="{{ route('admin_forget_password') }}" class="forgot-pass-link">Forgot Password?</a>

                                    </div>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-lock"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg>

                                    <input id="password" name="password" type="password" class="form-control" placeholder="Password">

                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" id="toggle-password" class="feather feather-eye"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="12" r="3"></circle></svg>
                                </div>
                                <div class="d-sm-flex justify-content-between">
                                    <div class="field-wrapper">
                                        <button type="submit" class="btn btn-primary" value="">Log In</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
    <script src="{{ asset('dist-cork/assets/js/libs/jquery-3.1.1.min.js') }}"></script>
    <script src="{{ asset('dist-cork/bootstrap/js/popper.min.js') }}"></script>
    <script src="{{ asset('dist-cork/assets/js/iziToast.min.js') }}"></script>
    <script src="{{ asset('dist-cork/bootstrap/js/bootstrap.min.js') }}"></script>

    <!-- END GLOBAL MANDATORY SCRIPTS -->
    <script src="{{ asset('dist-cork/assets/js/authentication/form-2.js') }}"></script>

    @if ($errors->any())
        @foreach ($errors->all() as $error)
            <script>
                iziToast.show({
                    message: '{{ $error }}',
                    color: 'red',
                    position: 'topRight',
                });
            </script>
        @endforeach
    @endif

    @if (session('success'))
        <script>
            iziToast.show({
                message: '{{ session("success") }}',
                color: 'blue',
                position: 'topRight',
            });
        </script>
    @endif

    @if (session('error'))
        <script>
            iziToast.show({
                message: '{{ session("error") }}',
                color: 'red',
                position: 'topRight',
            });
        </script>
    @endif

</body>
</html>

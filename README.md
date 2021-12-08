O-Auth Application
This is a simple user auth application, which uses devise Gem and bootstrap 5 NavBar to manage all the User-Management Features.

Database Authenticatable: hashes and stores a password in the database to validate the authenticity of a user while signing in. The authentication can be done both through POST requests or HTTP Basic Authentication.
Omniauthable: adds OmniAuth support.
Confirmable: sends emails with confirmation instructions and verifies whether an account is already confirmed during sign in.
Recoverable: resets the user password and sends reset instructions. Registerable: handles signing up users through a registration process, also allowing them to edit and destroy their account.
Rememberable: manages generating and clearing a token for remembering the user from a saved cookie.
Trackable: tracks sign in count, timestamps and IP address. Validatable: provides validations of email and password. It's optional and can be customized, so you're able to define your own validations.
Lockable: locks an account after a specified number of failed sign-in attempts. Can unlock via email or after a specified time period.It uses utility classes for typography and spacing to space content out within the larger container.

More Devise Functionality is on it's way stay tunned :)

Click on the Demo Button to see the app: [http://o-authy.herokuapp.com/users/sign_in](url)

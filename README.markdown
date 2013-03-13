# ConfSkel

Store and edit information about your conference for consumption by
views and third-party services. Provides a data model and administration
panel that should accommodate most conferences.

## Installation

1. Fork this project
1. Clone your fork, e.g. `git clone https://github.com/bendyworks/confskel`
1. Install dependencies by running `bundle` in the project's directory
   (e.g. `cd confskel && bundle`)
1. Overwrite `app/assets/logo.png` with your conference's logo
1. Overwrite `app/assets/images/speaker_default.png` with the image you
   wish to use when a speaker doesn't have an image (a default is
provided otherwise)
1. Set `config.site_title` to your conference's title in
	 /config/initializers/active_admin.rb (should be around line 30)
1. If you use rvm: change the `.rvmrc` to match your new project's
	 desired gemset (if you don't use rvm, don't worry about it :)

### Setting up Amazon S3 (for images)

Uploading conference images requires an S3 account.

1. Set up [an account](https://aws.amazon.com/s3/)
1. Obtain your "Access Key ID" and "Secret Access Key" from the [AWS
   Credentials
Page](https://portal.aws.amazon.com/gp/aws/securityCredentials)
1. Add these credentials to `config/credentials.yml`. See
	 `config/credentials.yml.example` for an example

### Setting up Heroku

To get a copy of this site up and running on Heroku, assuming you're in
the project's directory you made when [installing](#installation), run
the following in your terminal:

1. `heroku apps:create your_conference_name`
1. `heroku config:set AWS_ACCESS_KEY_ID=your_access_key`
1. `heroku config:set AWS_SECRET_ACCESS_KEY=your_secret_key`
1. `git push heroku master`

## Creating the Font-End

The front end development and design is likely to vary a lot from site
to site, that's why this site only includes administration.  Designers
and front end developers should be able to get right to work, just
writing views/styles/front end behaviors, without needing to change any
models/controllers.  Some things that might be useful:

### Helpful hints

* `FIXME` comments mark items you should change before starting up your
  site
* `rake routes` and controller methods are your friend when trying to
  figure out what to name your views, and what data is provided to views

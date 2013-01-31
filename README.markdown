# ConfSkel

Store and edit information about your conference for consumption by
views and third-party services. Provides a data model and administration
panel that should accommodate most conferences.

## Installation

### Setting up Amazon S3 (for images)

Uploading conference images requires an S3 account.

1. Set up [an account](https://aws.amazon.com/s3/)
1. Obtain your "Access Key ID" and "Secret Access Key" from the [AWS
	 Credentials Page](https://portal.aws.amazon.com/gp/aws/securityCredentials)

### Setting up Heroku

To get a copy of this site up and running on Heroku, run the following
in your terminal:

1. `git clone https://github.com/bendyworks/confskel && cd confskel`
1. `bundle`
1. `heroku apps:create your_conference_name`
1. `heroku config:set AWS_ACCESS_KEY_ID=your_access_key`
1. `heroku config:set AWS_SECRET_ACCESS_KEY=your_secret_key`
1. `git push heroku master`

## Creating the Font-End

## Reference
### List of endpoints/actions

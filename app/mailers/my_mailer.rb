class MyMailer < ActionMailer::Base

  def sendgrid
    @sendgrid ||= SendGrid::API.new(api_key: "YOUR_API_KEY")
  end

  def new_user(user)
    template_id = "eeabb084-9e59-4705-8ef0-6d9affb7b879"

    data = {
      "personalizations": [
        {
          "to": [
            {
              "email": user.email
            }
          ],
          "substitutions": {
            "-name-": "USER_NAME",
            "-content-": user.name
          },
          "subject": "Welcome to RailsMOOC"
        }
      ],
      "from": {
        "email": "no-reply@railsmooc.com"
      },
      "template_id": template_id
    }

    sendgrid.client.mail._("send").post(request_body: data)
  end
end
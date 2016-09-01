# SendGrid Smalltalk

[SendGrid](https://sendgrid.com/) API Library to send emails very easily using Smalltalk.
You can get started in minutes using Metacello and FileTree.

# Features
* [Web API's Mail](https://sendgrid.com/docs/API_Reference/Web_API/mail.html)
* [Marketing Email API](https://sendgrid.com/docs/API_Reference/Marketing_Emails_API/index.html) (supported Categories, Emails, Lists)

# Requirement

### Smalltalk
* [Pharo](http://pharo.org/) 4.0, 5.0

# How to install

```smalltalk
Metacello new
    baseline: 'SendGrid';
    repository: 'github://newapplesho/sendgrid-smalltalk:v1.0.3/pharo-repository';
    load.
```

or

```
Gofer new
url:'http://smalltalkhub.com/mc/newapplesho/sendgrid-smalltalk/main';
    package: 'ConfigurationOfSendGrid';
    load.
(Smalltalk at: #ConfigurationOfSendGrid) load.
```

# How to use

## Web API's Email

You can read  official documentation on the Web API's Mail feature [here](https://sendgrid.com/docs/API_Reference/Web_API/mail.html).

### Email Body (text)

```smalltalk
mail := (SGMail apiUser: 'your_sendgrid_username' apiKey:'your_sendgrid_password').
mail from: 'foo@example.com'.
mail fromName: 'Smalltalker'.
mail to: 'bar@example.com'.
mail subject:'SendGrid Test Mail'.
mail text:'My first email through SendGrid. Sent from Pharo Smalltalk.'.

client :=SendGridClient new.
client send: mail.
```

or


```smalltalk
mail := (SGMail apiUser: 'your_sendgrid_username' apiKey:'your_sendgrid_password').
mail from: 'foo@example.com'.
mail fromName: 'Smalltalker'.
mail to: 'bar@example.com'.
mail subject:'SendGrid Test Mail'.
mail text:'My first email through SendGrid. Sent from Pharo Smalltalk.'.
mail send.
```

or

```smalltalk
mail := SGMail default.
mail from: 'foo@example.com'.
mail fromName: 'Smalltalker'.
mail to: 'bar@example.com'.
mail subject:'SendGrid Test Mail'.
mail text:'My first email through SendGrid. Sent from Pharo Smalltalk.'.

client :=SendGridClient new.
client send: mail.
```

### Email Body (html)

```smalltalk
mail := (SGMail apiUser: 'your_sendgrid_username' apiKey:'your_sendgrid_password').
mail from: 'foo@example.com'.
mail fromName: 'Smalltalker'.
mail to: 'bar@example.com'.
mail subject:'SendGrid Test Mail'.
mail html:'<h1>My first email through SendGrid</h1><p>Sent from Pharo Smalltalk</p>'.
mail send.
```


## Marketing Email API

### Lists

#### add

```smalltalk
sg := (SGMEAPILists apiUser: 'your_sendgrid_username' apiKey:'your_sendgrid_password').
sg add:'foobar'. "print it ==>  a JsonObject('message'->'success' )"
```

#### edit

```smalltalk
sg := (SGMEAPILists apiUser: 'your_sendgrid_username' apiKey:'your_sendgrid_password').
sg renameListFrom: 'foobar' to: 'foobar2'. 
```

#### get

```smalltalk
(SGMEAPILists apiUser: 'your_sendgrid_username' apiKey:'your_sendgrid_password') get.
```

#### delete

```smalltalk
(SGMEAPILists apiUser: 'your_sendgrid_username' apiKey:'your_sendgrid_password') 
	delete:'foobar'.
```


### Emails

#### add

```smalltalk
json := JsonObject new.
json at:'name' put:'test'.
json at:'email' put:'foobar@example.com'.

(SGMEAPICategories apiUser: 'your_sendgrid_username' apiKey:'your_sendgrid_password') 
	list: 'foobar'; 
	datum: (Array with: json asJsonString); add.
```

#### get

```smalltalk
(SGMEAPICategories apiUser: 'your_sendgrid_username' apiKey:'your_sendgrid_password') 
	list: 'foobar'; get.
```

#### count

```smalltalk
(SGMEAPICategories apiUser: 'your_sendgrid_username' apiKey:'your_sendgrid_password') 
	list: 'foobar'; count.
```

#### delete

```smalltalk
(SGMEAPICategories apiUser: 'your_sendgrid_username' apiKey:'your_sendgrid_password') 
 list: 'foobar';
 email:'foobar@example.com'; 
 delete.
```

### Categories

```smalltalk
(SGMEAPICategories apiUser: 'your_sendgrid_username' apiKey:'your_sendgrid_password') list.
```

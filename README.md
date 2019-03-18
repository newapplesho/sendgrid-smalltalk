# SendGrid Smalltalk

[SendGrid](https://sendgrid.com/) client library to send emails very easily using [Pharo](http://pharo.org/) Smalltalk.

Forked from [sendgrid-smalltalk](https://github.com/newapplesho/sendgrid-smalltalk).

## Features

### V3

* [V3 API (adding!)](https://sendgrid.com/docs/API_Reference/api_v3.html)
  * Send
  * Blocks and Spam report
  * Substitision, Personalization and Dynamic Templates

### V2 (outdated)

* [Web API's Mail](https://sendgrid.com/docs/API_Reference/Web_API/mail.html)
* [Marketing Email API](https://sendgrid.com/docs/API_Reference/Marketing_Emails_API/index.html) (supported Categories, Emails, Lists)

## Supported Pharo Versions

* [Pharo](http://pharo.org/) 5.0, 6.0, 6.1

## How to install

```smalltalk
Metacello new
    baseline: 'SendGrid';
    repository: 'github://sorabito/sendgrid-smalltalk/pharo-repository';
    load.
```

## How to use

### Basic Mail Send

#### Settings

```smalltalk
SGSettings default v3ApiKey: 'SG.xxxxxxxxxxxxxxxxx'.
```

#### Sending a text mail

```smalltalk
mail := SGMail default.
mail from: 'foo@example.com'.
mail fromName: 'Smalltalker'.
mail to: 'bar@example.com'.
mail subject:'SendGrid Test Mail'.
mail text:'My first email through SendGrid. Sent from Pharo Smalltalk.'.
mail send.
```

#### Sending a html mail

```smalltalk
mail := SGMail default.
mail from: 'foo@example.com'.
mail fromName: 'Smalltalker'.
mail to: 'bar@example.com'.
mail subject:'SendGrid Test Mail'.
mail html:'<h1>My first email through SendGrid</h1><p>Sent from Pharo Smalltalk</p>'.
mail send.
```


### Mail Send with Templates

You can send sophisticated e-mails using registered handlebars templates.

#### Registering a template

```smalltalk
template := (SGMailTemplate name: 'SampleMail-1') ensureRegistered.
template ensureVersionNamed: 'v1' setting: [:v | 
	v subject: '{{event}} ({{date}})'.
	v textContent: '
{{initialGreetings}}!

{{body}}
---
{{signature}}'.
]. "-> SGMailTemplate('d-18e84a9799fa4885b11d34a84e9e2384','SampleMail-1')"
```

#### Getting templates

```smalltalk
mail := SGMail default.
mail allDynamicTemplates. "-> an Array(SGMailTemplate('d-18e84a9799fa4885b11d34a84e9e2384','SampleMail-1'))"

mailTemplate := mail templateNamed: 'SampleMail-1'.
mailTemplate versions. "->  an OrderedCollection(*SGMailTemplateVersion('c255155a-8fc5-471b-82cf-6e5192073245','v1'))"
mailTemplateVersion := mailTemplate activeVersion. " -> *SGMailTemplateVersion('c255155a-8fc5-471b-82cf-6e5192073245','v1')"
mailTemplateVersion loadContents textContent. "-> returns a template text content registered above"
```

#### Sending an aggregated mail with two personalizations

```smalltalk
mail := SGMail forDynamicTemplate.
mail fromName: 'Info'.
mail from: 'info@softumeya.com'.
mail addPersonalizationDo: [ :p |
	p addToEntryDo: [ :ent | ent address: 'aaa@aaa.com'; name: 'AAA'].
	p templateData:  { 
		'event' -> 'Smalltalk-meetup'.
		'date' -> '2019/03/10'.
		'initialGreetings' -> ('Hello ', p to first name).
		'body' -> 'aaaaa'.
		'signature' -> '[:masashi | ^umezawa]'.
	} asDictionary 
].
mail addPersonalizationDo: [ :p |
	p addToEntryDo: [ :ent | ent address: 'bbb@bbb.com'; name: 'BBB'].
	p templateData:  { 
		'event' -> 'Smalltalk-auction'.
		'date' -> '2019/03/12'.
		'initialGreetings' -> ('Hello ', p to first name).
		'body' -> 'bbbbb'.
		'signature' -> '-- MU'.
	} asDictionary 
].
mail sendByTemplateNamed: 'SampleMail-1'. 
```

### Marketing Email API (V2)

#### Lists

##### add

```smalltalk
sg := (SGMEAPILists apiUser: 'your_sendgrid_username' apiKey:'your_sendgrid_password').
sg add:'foobar'. "print it ==>  a JsonObject('message'->'success' )"
```

##### edit

```smalltalk
sg := (SGMEAPILists apiUser: 'your_sendgrid_username' apiKey:'your_sendgrid_password').
sg renameListFrom: 'foobar' to: 'foobar2'. 
```

##### get

```smalltalk
(SGMEAPILists apiUser: 'your_sendgrid_username' apiKey:'your_sendgrid_password') get.
```

##### delete

```smalltalk
(SGMEAPILists apiUser: 'your_sendgrid_username' apiKey:'your_sendgrid_password') 
	delete:'foobar'.
```


#### Emails

##### add

```smalltalk
json := JsonObject new.
json at:'name' put:'test'.
json at:'email' put:'foobar@example.com'.

(SGMEAPICategories apiUser: 'your_sendgrid_username' apiKey:'your_sendgrid_password') 
	list: 'foobar'; 
	datum: (Array with: json asJsonString); add.
```

##### get

```smalltalk
(SGMEAPICategories apiUser: 'your_sendgrid_username' apiKey:'your_sendgrid_password') 
	list: 'foobar'; get.
```

##### count

```smalltalk
(SGMEAPICategories apiUser: 'your_sendgrid_username' apiKey:'your_sendgrid_password') 
	list: 'foobar'; count.
```

##### delete

```smalltalk
(SGMEAPICategories apiUser: 'your_sendgrid_username' apiKey:'your_sendgrid_password') 
 list: 'foobar';
 email:'foobar@example.com'; 
 delete.
```

#### Categories

```smalltalk
(SGMEAPICategories apiUser: 'your_sendgrid_username' apiKey:'your_sendgrid_password') list.
```

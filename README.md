# BlogPulse

A modern blogging platform built with Ruby on Rails that allows users to create, share, and engage with articles through likes, comments, and personalized profiles.

## Features

### Authentication

* User registration and login using Devise
* Secure password management
* Username-based profiles

### Blog Posts

* Create, edit, and delete posts
* Rich text content support
* Cover image uploads using Active Storage
* Author ownership protection

### Community Engagement

* Like and unlike posts
* Comment on articles
* Delete your own comments
* View engagement on posts

### User Profiles

* Dedicated profile page for every user
* View all posts published by a user
* Easy navigation between authors and articles

### Authorization

* Users can only edit or delete their own posts
* Users can only delete their own comments
* Protected routes for authenticated actions

### Deployment

* PostgreSQL database
* Dockerized Rails application
* Deployed on Render

---

## Tech Stack

### Backend

* Ruby on Rails 8
* PostgreSQL
* Devise Authentication

### Frontend

* ERB Templates
* Custom CSS
* Responsive Layout

### Storage

* Active Storage

### Deployment

* Docker
* Render

---

## Database Design

### User

* username
* email
* encrypted_password

### Post

* title
* body
* cover_image
* user_id

### Comment

* body
* user_id
* post_id

### Like

* user_id
* post_id

---

## Installation

Clone the repository:

```bash
git clone https://github.com/KayJay-26/Blog_Application.git
cd Blog_Application
```

Install dependencies:

```bash
bundle install
```

Setup database:

```bash
rails db:create
rails db:migrate
rails db:seed
```

Start the server:

```bash
rails server
```

Visit:

```text
http://localhost:3000
```

---

## What I Learned

Building BlogPulse helped me gain practical experience with:

* Rails MVC architecture
* Authentication with Devise
* Database associations
* Active Storage
* Authorization and access control
* RESTful routing
* PostgreSQL integration
* Deployment with Docker and Render
* UI design and customization

---

## Future Improvements

* Email verification
* Search functionality
* Rich text editor
* User avatars
* Bookmarking posts
* Post categories and tags
* Improved mobile responsiveness

---

## Live Demo

https://blog-application-3u8w.onrender.com

---

## Author

**Khrithik J**
Built as a full-stack Ruby on Rails learning project focused on understanding real-world web application development.


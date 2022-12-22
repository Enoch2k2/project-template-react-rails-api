<!-- # User -> Hikes -> Location -->

### Models
User
---
username : string
password_digest : string
has_many hikes
has_many locations through the hikes

Hikes
---
review : text
belong_to user
belong_to the location

Locations
---
trail_name : string
city : string
has many hikes
has many users through hikes

Have at least three models on the backend, that include the following:
  * At least two one-to-many relationships.
  * At least one reciprocal many-to-many relationship (implemented by using 2 has-many-through relationships). Note: in order to accomplish this, your project must include a joins table. This joins table must include a user submittable attribute.
  * Full CRUD actions for at least one resource.
  * Minimum of create and read actions for EACH resource.

Have at least three different client-side routes using React Router. Be sure to include a nav bar or other UI element that allows users to navigate between routes.

Implement authentication/authorization, including password protection. A user must be able to:
  * sign up with a new user account,
  * log in to the site with a secure password and stay logged in via user ID in the session hash, and
  * log out of the site.
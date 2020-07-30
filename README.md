# NINTENDO MANIA 

Project nintendo mania is gonna create a web site like [downloadroms.io](https://www.downloadroms.io/roms/super-nintendo/), to allow retro gamers to download and play their favorite games. Initially, we're gonna cover the SNES Roms. We will follow its architeture but not the layout.

Technically, it has been built in **ruby version 2.6.5p114** and framework **Rails 6.0.3.1**.

[Check Nintendo Nania on heroku](https://ancient-bayou-79761.herokuapp.com/)

The first objective is getting it up with the first eight popular games shown on the [downloadroms.io](https://www.downloadroms.io/roms/super-nintendo/) snes index.

This first version will not have a super user allowed to upload roms, only me, the developer, can do it from my local machine.

It is [cloudinary](https://cloudinary.com/) version free which saves all images shown on my application.

**Status of the project:**

On fron-end:

Mobile first applied on index page.

Building stylesheet of the show view according to mobile first concept.

Below you see the layouts. It is totally responsive.

On a vertical mobile:

![On mobile vertical](https://res.cloudinary.com/dilwtauny/image/upload/v1593373780/readme%20nintendo%20mania/layout_mobile_nintendo_mania1_aou6ih.jpg)

On a horizontal mobile:

![On mobile horizontal](https://res.cloudinary.com/dilwtauny/image/upload/v1593373842/readme%20nintendo%20mania/layout_mobile_nintendo_mania2_xf7p2j.jpg)

...

![On mobile horizontal 2](https://res.cloudinary.com/dilwtauny/image/upload/v1593373870/readme%20nintendo%20mania/layout_mobile_nintendo_mania3_on9tk2.jpg)

And on its Desktop version.

![On desktop](https://res.cloudinary.com/dilwtauny/image/upload/v1593374209/readme%20nintendo%20mania/layout_nintendo_mania_desktop_maxuyo.jpg)

Even if the main way to dowload these games is on a Desktop, it is a good idea to prevent future SEO to consider the site responsive and then placing it together with the first sites of a search.

Technical considerations:

This application follows a Model View Controller architecture (the MVC).
The files containing the games are stored in a Google Storage Service.
The application has in its database just the link to the cloud service, but it is hidden inside a private method.

There is not bootstrap styles here, The programmer did it by his own in order to exercise.

Second Objective: Implementing a search method to allow retrogamers looking for their favorite game by inserting a substring or a complete one inside the search box on header. DONE!

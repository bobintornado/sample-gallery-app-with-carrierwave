# Sample Gallery App With CarrierWave

## Content 

This repo is a sample project using CarrierWave and PostgreSQL array dealing with multiple images features. 

\#No_Nested_Forms

## Features 
* Create a new gallery by uploading multiple images
* Upload more images into existing gallery
* Delete specific image from existing gallery (one at a time)

## Technique 

By using array, this project implment the the remove single image by 


``` ruby

def remove_image_at_index(index)
  remain_images = @gallery.images
  deleted_image = remain_images.delete_at(index)
  deleted_image.try(:remove!)
  @gallery.images = remain_images
end

```

And add more images by 


``` ruby 

def add_more_images(new_images)
  images = @gallery.images
  images += new_images
  @gallery.images = images
end

```

## Corresponding Blog Post

[Multiple Images Uploading With CarrierWave and PostgreSQL Array](http://bobintornado.github.io/rails/2015/12/29/Multiple-Images-Uploading-With-CarrierWave-and-PostgreSQL-Array.html)

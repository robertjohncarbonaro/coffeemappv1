# CoffeeMapp App by Robert John Carbonaro

![ezgif com-video-to-gif](https://user-images.githubusercontent.com/73760607/115765988-510f0b00-a39f-11eb-9e50-f53e696d60e2.gif)





Approach:

* Set up Mapkit, implemented locationmanager

* I uplaoded all the relevant info.plist data to allow user location to be used

* Created a foursquare account and generated first json using given credentaials

* JSON was  complex and featured a combination of nested dictionaries, and arrays, I used http://quicktype.io/ to generate types & De-serialization code directly from the JSON. This would also help future-proof the application.

* Created custom annotation view with image and callout accessory. 

* Data is parsed, remaining venue item creates a custom annotation view with image and callout accessory.The tableview is also populated

* Updated didSelectRowAt to zoom to location of selected item (Eg: Costa Coffe) and show annotation.


![coffee-shop-2](https://user-images.githubusercontent.com/73760607/115766448-ea3e2180-a39f-11eb-9729-37d9aa38f525.png)


Coffee Icon downloaded from; https://www.flaticon.com/free-icon/coffee-shop_4108029?term=coffee%20map&page=1&position=1&page=1&position=1&related_id=4108029&origin=search

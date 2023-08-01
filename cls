[1mdiff --git a/definitions.txt b/definitions.txt[m
[1mindex b01a20a..77ea637 100644[m
[1m--- a/definitions.txt[m
[1m+++ b/definitions.txt[m
[36m@@ -22,3 +22,24 @@[m [mschema[m
 - loops through a group of strings and outputs them in the order that they were passed as paramenters[m
 - Each time cycle is called, the next string that was passed as a parameter is output[m
 [m
[32m+[m[32mselected_or_first_available_variant[m
[32m+[m[32m- is an attribute of products object, used to return the variant object of the selected product[m
[32m+[m
[32m+[m[32mFeatured Image[m
[32m+[m[32m- is an attribute of products or variants used to retrieve images uploaded to products[m
[32m+[m
[32m+[m
[32m+[m[32mForm Types[m
[32m+[m[32m- {% form 'active_customer_password %}[m
[32m+[m[32m- {% form 'contact' %}[m
[32m+[m[32m- {% form 'currency' %}[m
[32m+[m[32m- {% form 'customer' %}[m
[32m+[m[32m- {% form 'create_customer' %}[m
[32m+[m[32m- {% form 'customer_address' %}[m
[32m+[m[32m- {% form 'customer_logon' %}[m
[32m+[m[32m- {% form 'guest_login' %}[m
[32m+[m[32m- {% form 'new_comment' %}[m
[32m+[m[32m- {% form 'product' %}[m
[32m+[m[32m- {% form 'recover_customer_password' %}[m
[32m+[m[32m- {% form 'reset_customer_password' %}[m
[32m+[m[32m- {% form 'storefront_password' %}[m
[1mdiff --git a/templates/index.json b/templates/index.json[m
[1mindex 285319f..a2f045f 100644[m
[1m--- a/templates/index.json[m
[1m+++ b/templates/index.json[m
[36m@@ -4,7 +4,7 @@[m
       "type": "hero",[m
       "settings": {[m
         "image": "",[m
[31m-        "title": "Welcom to Elena",[m
[32m+[m[32m        "title": "Welcome To Elena",[m
         "description": "<p>We are happy to welcome you to our official store</p>",[m
         "button_label": "Learn more",[m
         "button_link": "https://google.com/"[m
[36m@@ -13,7 +13,7 @@[m
     "featured-collection": {[m
       "type": "featured-collection",[m
       "settings": {[m
[31m-        "featured-collection": "",[m
[32m+[m[32m        "featured_collection": "summer-collection",[m
         "title": "Featured Summer Collection"[m
       }[m
     }[m
[1mdiff --git a/templates/product.liquid b/templates/product.liquid[m
[1mindex f6997ad..f0737ef 100644[m
[1m--- a/templates/product.liquid[m
[1m+++ b/templates/product.liquid[m
[36m@@ -1,29 +1 @@[m
[31m-{% assign current_variant = product.selected_or_first_available_variant %}[m
[31m-{% assign featured_image = current_variant.featured_image | default: product.featured_image %}[m
[31m-<img src="{{ featured_image | img_url: 'large' }}" alt="{{ featured_image.alt | escape }}" id="ProductPhotoImg">[m
[31m-{% for image in product.images %}[m
[31m-  <a href="{{ image.src | img_url: 'large' }}">[m
[31m-    <img src="{{ image.src | img_url: 'compact' }}" alt="{{ image.alt | escape }}">[m
[31m-  </a>[m
[31m-{% endfor %}[m
[31m-<h1>{{ product.title }}</h1>[m
[31m-<form action="/cart/add" method="post" enctype="multipart/form-data" id="AddToCartForm">[m
[31m-  <select name="id" id="productSelect">[m
[31m-    {% for variant in product.variants %}[m
[31m-      {% if variant.available %}[m
[31m-        <option value="{{ variant.id }}">[m
[31m-          {{ variant.title }} - {{ variant.price | money_with_currency }}[m
[31m-        </option>[m
[31m-      {% else %}[m
[31m-        <option disabled="disabled">[m
[31m-          {{ variant.title }} - sold out[m
[31m-        </option>[m
[31m-      {% endif %}[m
[31m-    {% endfor %}[m
[31m-  </select>[m
[31m-  {{ current_variant.price | money }}[m
[31m-  <label for="Quantity">quantity</label>[m
[31m-  <input type="number" id="Quantity" name="quantity" value="1" min="1">[m
[31m-  <button type="submit" name="add" id="AddToCart">Add to cart</button>[m
[31m-</form>[m
[31m-<div>{{ product.description }}</div>[m
[32m+[m[32m{% section 'product-template' %}[m
\ No newline at end of file[m

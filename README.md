# Flower_Identification_and_count
Flower counting technique is used to get an approximation of the count of number of flowers using MATLAB.Counting of the flowers is done by enhancement techniques following by the segmentation of our region of interest and then counting the resultant segmented elements.
## Purpose 
--> The main purpose of this algorithm is to Count the number of flowers which isdone by enhancement techniques following by the segmentation of our region of interest and then counting the resultant segmented elements. We are using a variety of sample set in various environment backgrounds, different size, shape, climate and colour, Due to different angles of photo capturing some of the region of interest might get blurred out, for which we have to implement a variety of image processing techniques to get a better approximation.

## Improvements
--> In this new system I first used image enhancement technics like image acquisition and then converted the coloured image into grey level image along with histograms of the same image and then spatial domain enhancement techniques have been applied such as brightness adjusting operations( increase and decrease the brightness), histogram equalization, point processing technique, power law transform, image negative, thresholding, converting grey level image into binary, PSNR technique, Entropy, Edge detection and extracting the features and finally using feature analysis to count objects

### Files included 
-`imagenhancement.m` Used for spatial enhancement of flower images, point processing technique (power law transform), Thresholding along with histograms

-`identification.m`  Includes RGB plan conversion, feature analysis, segmentation and count 

-`dataset` Images from backyard and few are from farm 

### Analysis and Results

<img width="630" alt="Screenshot 2022-03-12 at 10 46 29 PM" src="https://user-images.githubusercontent.com/78052106/158028539-86a3f46f-b739-4ef9-958a-443b677cd8b6.png">

<img width="630" alt="Screenshot 2022-03-12 at 11 04 04 PM" src="https://user-images.githubusercontent.com/78052106/158028541-9b373cc5-34fc-42d5-aa6c-33607583e224.png">

<img width="630" alt="Screenshot 2022-03-12 at 11 04 14 PM" src="https://user-images.githubusercontent.com/78052106/158028543-56472777-67a6-4ced-8c5b-4a918b856a1e.png">

<img width="630" alt="Screenshot 2022-03-12 at 11 04 38 PM" src="https://user-images.githubusercontent.com/78052106/158028546-fa267d5f-7847-4f05-be79-7b77e844167a.png">

<img width="630" alt="Screenshot 2022-03-12 at 11 04 45 PM" src="https://user-images.githubusercontent.com/78052106/158028549-2cc984a1-ca08-4ce7-b87c-db498035c6a4.png">

<img width="600" alt="Screenshot 2022-03-12 at 11 05 04 PM" src="https://user-images.githubusercontent.com/78052106/158028560-17f20200-b27e-4333-b6da-7c03a5493c2b.png">

<img width="600" alt="Screenshot 2022-03-12 at 11 05 28 PM" src="https://user-images.githubusercontent.com/78052106/158028561-9858f018-e14a-4747-933d-652e86565b1b.png">

<img width="600" alt="Screenshot 2022-03-12 at 11 05 47 PM" src="https://user-images.githubusercontent.com/78052106/158028565-d692755f-52a7-4951-989b-95c76f43bfa9.png">

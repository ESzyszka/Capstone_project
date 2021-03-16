# PJM recognition with Convolutional Neural Networks


This folder contains implementation of a hand gesture recogniser for Polish Sign Language (Pol. Polski Język Migowy (PJM) ). The project was submited as part of the undergraduate thesis at Minerva Schools at KGI in the departament of Computer Science and can be read as a full paper [here](https://www.overleaf.com/read/tvrgdjxgcfjw) or in the form of a blog post [here](https://reverent-kirch-795d34.netlify.app/  ).


### Project pipeline
If one wishes to replicate the project the following pipeline and file list gives the overview of the building blocks of the project. In case of any questions or interest in research collaborations reach out using this email: ewa.szyszka@minerva.kgi.edu


![pipeline_github](https://i.ibb.co/7CCZDC3/pipeline-github.png) 


### File overview


1. PJM_Keyboard 
2. DCGAN.ipynb
3. Training_VGG_16.ipynb
4. Finger Detection and Tracking <br/>
   (a) FingerDetection.py <br/>
   (b) my_mode.h5 <br/>
5. experiment_HV.py
6. key_frames.py
7. blog






### 1. PJM_keyboard

This folder contains the implementation of the PJM keyboard prototype. 
A video demo available [here]() 

![Keyboard](https://i.ibb.co/hVxZGnR/Screenshot-2021-03-14-at-15-38-11.png) 
![KS](https://i.ibb.co/s2sBk8y/Screenshot-2021-03-14-at-19-38-32.png)

![Keyboard_app_view](https://i.ibb.co/1ZYQnjk/Screenshot-2021-03-14-at-16-04-27.png)




### 2. DCGAN.ipynb

The script generates new images given the PJM100 dataset. 
The results are published [here](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi%3A10.7910%2FDVN%2FDG1GTX&version=DRAFT)
Furthermore, a pdf including detailed information about DCGAN training results can be found in the https://www.notion.so/DCGAN-training-details-05b74e631b42460b81b18fb6a502bcf2

![DCGAN images](https://i.ibb.co/cDX12JX/Screenshot-2021-03-14-at-16-13-25.png)




### 3. Training_VGG_16.ipynb


### 4. Finger Detection and Tracking 

FingerDetection.py is the main detection program implemented in python.
It has the following functionalities:

(a) skin color detection
(b) convex hull and centre point of the hand
(c) Type of hand movement clasifier [eg. 'Middle_vertical_movement','Middle_horizontal_movement' ]
(d) Press a key trigger to run the CNN classification

The other file my_mode.h5 in the folder is an exported sample trained on a smaller subset of data. Here you can see the overview table of the training for the entire PJM100 data:

![summary](https://i.ibb.co/2vTsnsd/f00d0c3c-4f77-425e-9271-bd4583f889c1.jpg)

### 5. experiment_HV.py

Series of experiments conducted aiming at implementing the type of movement detection such as:

- Middleverticalmovement 
- Middlehorizontalmovement 
- Leftverticalmovement 
- Rightverticalmovement 
- Upperhorizontalmovement 
- Lowerhorizontalmovement 
- Stillness 

### 6. key_frames.py

This is a script which captures and crops automatically selected region on the screen. This script was used in the project for the purpose of data generation. 

### 7. blog

This folder contains files for a [blog post](https://reverent-kirch-795d34.netlify.app/)

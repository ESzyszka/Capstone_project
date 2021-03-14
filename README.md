# PJM recognition with Convolutional Neural Networks


This folder contains implementation of a hand gesture recogniser for Polish Sign Language. Often refered to in literature as PJM. The project was submited as part of the undergraduate thesis at Minerva Schools at KGI in the departament of Computer Science and can be read as a full paper [here](https://www.overleaf.com/read/tvrgdjxgcfjw) or in the form of a blog post [here]().


### Project pipeline
If one wishes to replicate the project the following pipeline and file list gives the overview of the project. In case of any questions or interest in research collaborations reach out to via contact email: ewa.szyszka@minerva.kgi.edu


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






### PJM_keyboard

This folder contains the implementation of the PJM keyboard prototype. A video demo available here: 

![Keyboard](https://i.ibb.co/hVxZGnR/Screenshot-2021-03-14-at-15-38-11.png) 
![KS](https://i.ibb.co/s2sBk8y/Screenshot-2021-03-14-at-19-38-32.png)

![Keyboard_app_view](https://i.ibb.co/1ZYQnjk/Screenshot-2021-03-14-at-16-04-27.png)




### DCGAN.ipynb

The script generates new images given the PJM100 dataset. 
The results are published [here](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi%3A10.7910%2FDVN%2FDG1GTX&version=DRAFT)
Furthermore, a pdf including detailed information about training can be found in the https://www.notion.so/DCGAN-training-details-05b74e631b42460b81b18fb6a502bcf2

![DCGAN images](https://i.ibb.co/cDX12JX/Screenshot-2021-03-14-at-16-13-25.png)




#### 

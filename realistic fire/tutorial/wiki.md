<!-- Page info -->
{{Title|Realistic Fire Animation}}
{{Category|Manual}}
{{Category|Tutorials}}
{{Category|Tutorials Advanced}}
<!-- Page info end -->

==Introduction==
{{l|File:Realistic_fire_tutorial_completed.png|right|The result of this tutorial}} This tutorial will guide you in making a ''realistic fire animation with {{l|Synfig}}''. 

Be sure to check out the [http://www.vimeo.com/11610662 resulting animation], and have a look at the {{l|Doc:Realistic Fire Animation#Gallery|gallery}} below to see other videos exploiting this technique!



This tutorial is not "advanced" as in "difficult", but it requires that you are familiar with the Synfig {{l|Doc:Interface|interface}} and {{l|Doc:Quick_Overview|tools}}, as these will not be covered here. Start with the more {{l|Category:Tutorials_Basic|basic tutorials}} and keep an eye on the {{l|Category:Manual}} if you are not familiar with terms such as "{{l|Blend_Method_Parameter}}" or "{{l|Encapsulate}}". The duration of this tutorial is estimated between 30 and 50 minutes for an average Synfig user.

For alternative set-ups, additional settings, variants and more, kindly refer to the {{l|Doc_talk:Realistic_Fire_Animation|talk page}}.



The '''basic idea of the technique''' we'll be using is inspired from the tutorial "[http://graffiti.hbfx.com/?p=219&lang=en-us Fire in Photoshop]", by Eros:
* a vertically moving background, filled with black & white clouds (i.e.: noise). The light areas will become bright, yellow flames, and the dark ones will become red-ish flames.
* a fixed mask to darken the top of the fire, hence extinguishing the flames (i.e: a black & white vertical gradient)
* an orange color layer to turn on the heat

You can optionally download the {{l|File:Realistic_fire_tutorial.sifz‎|result Synfig file}}, available under Creative Commons (by nc sa).

==step 1: a static fire==
[[File:Realistic_fire_tutorial_flame_intensity.png|200px|thumb|right|The ''intensity mask'' layer]]

Start with a blank Synfig file, any size will do. To match a good-looking widescreen ratio this tutorial uses 360x203.

# Add a new black & white {{l|Noise Gradient Layer}}, name it '''base noise''' and change its ''size'' to 20x35pt... as flames are vertically oriented.
# On top of '''base noise''', add a {{l|Linear Gradient Layer}}, name it '''intensity mask''', and move the gradient ''point 1'' & ''point 2'' to leave some white space on top and some black space below, as illustrated in the picture. Change its ''blend mode'' to {{l|Blend_Method_Parameter#Subtract|subtract}}.
# On top of '''intensity mask''', add a {{l|Solid Color Layer}}, name it '''fire color'''. Change its ''color'' to some warm orange, we used #ff6700, and its blend mode to {{l|Blend_Method_Parameter#Color|color}}.
# Change the ''amount'' of both '''fire color''' and '''intensity mask''' to achieve an effect you like. We used amounts of 0.7 color and 1.4 mask to achieve the result illustrated in the picture at the end of step 1.
[[File:Raging fire tutorial step1.png|center|Result after step 1]]

==step 2: bring it to life!==
Bringing this fire to life is about moving the ''base noise'' upwards. Therefore we

# {{l|Encapsulate}} '''base noise''' and rename the new group into '''moving base'''. Make it move upward by {{l|Convert|converting}} its ''origin'' to {{l|Convert#Linear|Linear}} and setting the origin ''slope'' to 0x200pt.

At this point you can {{l|Preview}} a few frames, to appreciate the effect of moving flames... and quickly notice how dull and boring it looks: the flames fade away when rising but lack of movement and surprise. Let's add some!



The idea of the technique used in this tutorial is to brighten zones that will become hot, yellow flames, and darken zones that will be dark, red flames. As '''moving base''' does just that being a black and white cloud, we'll apply the same steps again to add some irregularities:

# {{l|Canvas_Layer_Menu|Duplicate}} the '''moving base''' layer, rename the new group into '''irregularities''', its contained noise to '''irregularities noise''' and raise it above '''moving base'''. Change all the settings we adapted before: 
#* Change '''irregularities noise''' ''RandomNoiseSeed'' to anything else (eg. drop the last figure) and ''size'' to 5x15pt
#* Change '''irregularities''' origin ''slope'' to 50x350pt, ''amount'' to 0.5 and ''zoom'' to 1.2

A snapshot of these last settings is given in the picture at the end of step 2.
[[File:Realistic_fire_tutorial_step2.png|center|Result after step 2]]

==step 3: some hot zones==
[[File:Realistic_fire_tutorial_flame_source.png|200px|thumb|right|The ''flame source'' layer]]
To complete this tutorial, we will add some hot spots at the base (figuring the source of the flames) and left of the fire, to make it less rectilinear. This is done by slightly brightening some areas underneath the '''fire color''' layer.

# Add, above '''irregularities''' group, a new {{l|Linear Gradient Layer}}. Rename it '''flame source''' and move its gradient ''point 1'' & ''point 2'' to leave no white space at the bottom of the frame, and huge black area on top, as illustrated in the "flame source layer" picture. Change its ''amount'' to 0.6 and ''blend'' mode to {{l|Blend_Method_Parameter#Add|Add}}. 
# Below layer '''fire color''' create a new {{l|BLine Tool|BLine Region}} (no need for an outline) of a shape where you want brighter flames (have a look at the picture at the end of this step for an example) and rename it '''high flames region'''. Changes its {{l|Feather Parameter}} to 50pt, its ''blend'' mode to {{l|Blend_Method_Parameter#Add|Add}}, and its ''color'' to some light gray (eg #8c8c8c).

{{l|File:Realistic_fire_tutorial_step3.png|center|Result at the end of step 3}}



Congratulations. You're (already) done! Render and enjoy.

You can optionally download the result {{l|File:Realistic_fire_tutorial.sifz‎|Synfig file of the tutorial}}, available under Creative Commons (by nc sa)... but you just made your own so there's no need!

==Fine tuning & fooling around==
Various settings allow you to achieve very different fire types and effects. Contribute to this section or discuss them in the {{l|Doc_talk:Realistic_Fire_Animation|talk page}}!


Some "easy" tailoring include:
* play with the ''gradient'' of '''base noise''' to change the ratio between bright and dark flames.
* tune the '''irregularities''' ''zoom'', ''amount'' and ''blend mode'' to get a wild aggressive fire (0; 0.4; hard light) or something more voluptuously quiet (1.9; 0.5; composite)  
* make your high flames more realistic by coloring the '''high flames region''' with a vertical gradient, dark grey on top, white at the bottom.
* simulate wind (ie. change the direction of the flames) by adapting the ''slope'' of '''moving base''' and '''irregularities''.

[[File:Realistic_fire_tutorial_rainbow.png|200px|thumb|right|Be cautious playing with the fire!]]
A few fun but less realistic tunings:
* play with the ''color'' of '''fire color''' to get a blue or pink fire.
* check ''turbulent'' of '''base noise''' and/or '''irregularities noise''' to get a psychedelic effect.
* set any place of the picture to fire just by adding a light gray spot below '''fire color''' anywhere, just as we did '''high flames region''' in step 3.

==Gallery==
You used this technique? Leave a link here and a few hints in the {{l|Doc_talk:Realistic_Fire_Animation|talk page}}!
* Everything burned... even the text, in [http://www.vimeo.com/11569415 Raging Fire], the source of which can be found in the [http://synfig.org/forums/ Synfig forum].


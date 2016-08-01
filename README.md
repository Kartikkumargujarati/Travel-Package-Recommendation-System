# Travel-Package-Recommendation-System


ABSTRACT:

Recent years have witnessed an increased interest in recommender systems. Despite significant progress in this field, there still remain numerous avenues to explore. Indeed, this paper provides a study of exploiting online travel information for personalized travel package recommendation. A critical challenge along this line is to address the unique characteristics of travel data, which distinguish travel packages from traditional items for recommendation. To that end, in this paper, we first analyze the characteristics of the existing travel packages and develop a tourist-area-season topic (TAST) model. This TAST model can represent travel packages and tourists by different topic distributions, where the topic extraction is conditioned on both the tourists and the intrinsic features (i.e., locations, travel seasons) of the landscapes. Then, based on this topic model representation, we propose a cocktail approach to generate the lists for personalized travel package recommendation. Furthermore, we extend the TAST model to the tourist-relation-area-season topic (TRAST) model for capturing the latent relationships among the tourists in each travel group. Finally, we evaluate the TAST model, the TRAST model, and the cocktail recommendation approach on the real-world travel package data. Experimental results show that the TAST model can effectively capture the unique characteristics of the travel data and the cocktail approach is, thus, much more effective than traditional recommendation techniques for travel package recommendation. Also, by considering tourist relationships, the TRAST model can be used as an effective assessment for travel group formation.

EXISTING SYSTEM:

There are many technical and domain challenges inherent in designing and implementing an effective recommender system for personalized travel package recommendation.
1.	 Travel data are much fewer and sparser than traditional items, such as movies for the recommendation, because the costs for a travel are much more expensive than for watching a movie.
2.	 Every travel package consists of many landscapes (places of interest and attractions), and, thus, has intrinsic complex spatiotemporal relationships. For example, a travel package only includes the landscapes which are geographically colocated together. Also, different travel packages are usually developed for different travel seasons. Therefore, the landscapes in a travel package usually have spatial-temporal autocorrelations. 
3.	Traditional recommender systems usually rely on user explicit ratings. However, for travel data, the user ratings are usually not conveniently available.

DISADVANTAGES OF EXISTING SYSTEM:

•	The recommendation has a long period of stable value.
•	To replace the old ones based on the interests of the tourists.
•	Values of travel packages can easily depreciate over time and a package usually only lasts for a certain period of time.

PROPOSED SYSTEM:

In this paper, we aim to make personalized travel package recommendations for the tourists. Thus, the users are the tourists and the items are the existing packages, and we exploit a real-world travel data set provided by a travels for building recommender systems. we develop a tourist-area-season topic (TAST) model, which can represent travel packages and tourists by different topic distributions. In the TAST model, the extraction of topics is conditioned on both the tourists and the intrinsic features (i.e., locations, travel seasons) of the landscapes.  Based on this TAST model, a cocktail approach is developed for personalized travel package recommendation by considering some additional factors including the seasonal behaviors of tourists, the prices of travel packages, and the cold start problem of new packages.

ADVANTAGES OF PROPOSED SYSTEM:

•	Represent the content of the travel packages and the interests of the tourists.
•	TAST model can effectively capture the unique characteristics of travel data.
•	The cocktail recommendation approach performs much better than traditional techniques.

MODULES:

1.	User Module.
2.	Server Module.
3.	Package recommendations.
4.	TAST Model
5.	
MODULES DESCRIPTION:

User Module:
In this module, Users are having authentication and security to access the result from the system. Before accessing or searching the details user should have the account in that otherwise, they should register first.

Server Module:
In this module, provide the detailed information about the unique characteristics of travel package data. We aim to make personalized travel package recommendations for the tourists. Thus, the users are the tourists and the items are the existing packages, and we exploit a real-world travel data set provided by a travel company in China for building recommender systems.

Package recommendations:
We collect some unique characteristics of the travel data. First, it is very sparse, and each tourist has only a few travel records. The extreme sparseness of the data leads to difficulties for using traditional recommendation techniques, such as collaborative filtering. For example, it is hard to find the credible nearest neighbors for the tourists because there are very few co-travelling packages.

TAST Model:
First, it is necessary to determine the set of target tourists, the travel seasons, and the travel places. Second, one or multiple travel topics ( e.g.,“The Sunshine Trip”) will be chosen based on the category of target tourists and the scheduled travel seasons. Each package and landscape can be viewed as a mixture of a number of travel topics. Then, the landscapes will be determined according to the travel topics and the geographic locations. Finally, some additional information (e.g., price, transportation, and accommodations) should be included. According to these processes, we formalize package generation as a What-Who-When-Where (4W) problem.

REFERENCE:
Qi Liu, Enhong Chen, Hui Xiong, Yong Ge, Zhongmou Li, and Xiang Wu ,“A Cocktail Approach for Travel Package Recommendation”, IEEE TRANSACTIONS, VOL. 26, NO. 2, FEBRUARY 2014.


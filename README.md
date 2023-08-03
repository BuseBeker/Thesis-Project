# T.C. AYDIN ADNAN MENDERES UNIVERSITY FACULTY OF ENGİNEERING DEPARTMENT OF COMPUTER ENGINEERING 

CSE401 License Thesis 1, 2022-2023 Fall Semester 

Supervisor: Prof. Dr. Yılmaz KILIÇASLAN 

By:
Kardelen Gel, Student ID: 181805057

Buse Latife Beker, Student ID: 181805067

## VERSION 1

## PLAGIARISM STATEMENT 

 This report was written by members of the group and in our own words, with the exception 
of expressly cited and accepted quotations from published and unpublished sources. We are 
aware that the inclusion of materials from other works or the expression of such materials 
without reference will be considered plagiarism according to the University Regulations. The 
source of any pictures, graphs, maps, or other drawings is indicated as the source of any 
published or unpublished material that is not due to our own experiments, observations, or 
sample collection. 

## ACKNOWLEDGEMENT 

 We would like to thank Prof. Dr. Yılmaz Kılıçaslan and Asst. Prof. Fatih Soygazi for their 
guidance during the project development phase. 

## KEYWORDS 

Automata, Morphology, Phonology, Morphophonological Analysis, Synthetic Data 
Generator, Shift-Reduce Parser, Test

## ABSTARCT 
 Our aim is to develop a morphophonological analysis program that analyzes the words in 
Turkish, and to develop a synthetic data generator to which we connect this analyzer after 
performing the necessary tests. This data generator will be a data generator that aims to output 
questions that can be generated from a given sentence. 

## ÖZET 
 Amacımız, Türkçedeki kelimeleri analiz eden bir morfofonolojik analiz programı geliştirmek 
ve gerekli testleri yaptıktan sonra bu analizörü bağladığımız sentetik bir veri üreteci 
geliştirmektir. Bu veri oluşturucu, belirli bir cümleden üretilebilecek soruların çıktısını almayı 
amaçlayan bir veri oluşturucu olacaktır.

# 1. INTRODUCTION 
## 1.1. Description of the problem 
 
 We can say that one of the ways of obtaining information preferred by people today is 
Chatbots. We decided to create a Chatbot by carrying out a study in the context of this 
subject and to develop a project on what improvements we can make on this Chatbot. 

## 1.2. Project Goal 
 Our goal for the fall semester is to develop a morphophonological analyzer that can 
analyze Turkish words morphologically and phonologically and to test this program. In 
addition, we aim to create a synthetic data generator to which we will connect this 
analyzer. 

## 1.3. Project Output 
 As a result of our studies, a morphophonological analyzer that can analyze Turkish 
words was developed and tests were carried out. A test dataset of 2014 words was used 
and an accuracy rate of 87% was achieved. In addition, a synthetic data generator was 
developed that can generate questions based on sentences with less complexity. The 
data generator is still at the basic level and further developments and improvements will 
continue as the project continues. 

## 1.4. Project Activities and Schedule 
 Weekly evaluations of the project were collected, as well as progressed by keeping in 
touch with other project groups. 

# 2. DESIGN 
## 2.1.Automata 
 An automaton with suffix transitions for nouns and verbs in Turkish has been 
developed. 

![0 1](https://github.com/BuseBeker/Thesis-Project/assets/72763515/2cb34112-0cb0-4c18-b8da-b93c0cf98f91)

## 2.2. Morphophonological Analyzer 
 A morphophonology program has been developed that analyzes the words in Turkish 
morphologically and phonologically. 

![2](https://github.com/BuseBeker/Thesis-Project/assets/72763515/57130b22-6af6-477e-b6b4-232711a763a6)

## 2.3. Test 
 The analyzer was tested using a data set of 2014 words and an accuracy rate of 87% 
was achieved. Factors causing inconsistency in the test are still in the research phase. 

![3](https://github.com/BuseBeker/Thesis-Project/assets/72763515/1bd7bd65-0526-470b-a237-07b83a7986c2)

## 2.4. Synthetic Data Generator 
 A synthetic data generator has been developed that can generate possible questions 
based on the sentence "Çocuk elma yiyor". 

![4](https://github.com/BuseBeker/Thesis-Project/assets/72763515/3bcd6e7f-d2da-4614-ad8b-908d7e966908)

# 3. CONCLUSIONS 
 In the project, an automaton, which included suffix transitions for Turkish words, was 
arranged and it was introduced to the program by determining which suffixes could 
come in which word group. An analyzer program that can analyze words was created 
with the help of this automaton. A test application was written in order to clearly see the 
effect of improvements and improvements on the application, and finally, a synthetic 
data generator was created that generates questions from a given sentence to which that 
sentence can be answered. 

A dataset containing 2014 words was used in the test application. Data are words 
derived from verbs and nouns. In this way, the analyzer was tested step by step and the 
effect of the change was observed. It has been noticed here that the analyzer gives the 
same output twice during the analysis of some words. This problem has been noted to 
be resolved later in the project. 

A synthetic data generator was developed that generates questions that can be asked 
based on the sentence 'çocuk elma yiyor'. A synthetic data generator, which is still at a 
very basic level, will continue to be developed and improved in the continuation of the 
project.

# 4. REFERENCES 
- Kılıçaslan, Yılmaz, Açıkgöz, Önder and Özlem Aydın (2014). Three-Layered MorphoPhonological Analyzer For Turkish. Journal of International Scientific Publications: 
Materials,Methods and Technologies.

---

# T.C. AYDIN ADNAN MENDERES UNIVERSITY FACULTY OF ENGİNEERING DEPARTMENT OF COMPUTER ENGINEERING

CSE402 License Thesis 2, 2022-2023 Spring Semester

Supervisor: Prof. Dr. Yılmaz KILIÇASLAN

By:
Kardelen Gel, Student ID: 181805057

Buse Latife Beker, Student ID: 181805067

## VERSION 2

## PLAGIARISM STATEMENT
 This report was written by members of the group and in our own words, with the exception 
of expressly cited and accepted quotations from published and unpublished sources. We are 
aware that the inclusion of materials from other works or the expression of such materials 
without reference will be considered plagiarism according to the University Regulations. The 
source of any pictures, graphs, maps, or other drawings is indicated as the source of any 
published or unpublished material that is not due to our own experiments, observations, or 
sample collection.

## ACKNOWLEDGEMENT

 We would like to thank Prof. Dr. Yılmaz Kılıçaslan and Asst. Prof. Fatih Soygazi for their 
guidance during the project development phase.

## KEYWORDS

Morphophonological Analysis, Shift-Reduce Parser, Question Generator, Chatbot, Deep 
Learning, mT5 Model, BLEU-1, ROUGE-L

# ABSTARCT
 Our aim is to make improvements on our project that we worked on in the previous period 
and to develop a question generation by using the latest version of the morphophonological 
analysis program we obtained as a result of these improvements. We also plan to do this using 
real texts. In general, we work with the aim of producing chatbots that can ask us questions 
rather than a chatbot that answers questions.

# ÖZET
 Amacımız, önceki dönem üzerinde çalıştığımız projemiz üzerinde iyileştirmeler yapmak ve 
bu iyileştirmeler sonucunda elde ettiğimiz morfofonolojik analiz programının son versiyonunu 
kullanarak bir question generation geliştirmektir. Aynı zamanda bunu gerçek metinler 
kullanarak yapmayı planlıyoruz. Genel olarak baktığımız zaman sorulara cevap veren bir 
chatbottan ziyade bize soru sorabilecek chatbotlar üretmek hedefiyle çalışıyoruz.


# 1. INTRODUCTION 
## 1.1. What was done in the License Thesis 1 course?
 In this course, we developed a morphophonological analysis program that analyzes 
words in Turkish. We did this with the help of an automaton in which we defined the 
suffix transitions in Turkish. In addition, we supported our analyzer with a very large 
dictionary and tried to get the highest efficiency possible. We tested the analysis 
program we created with a tester program. In addition, we took the first step towards 
developing a synthetic data generator that we will create by connecting this analyzer.

## 1.2. Shortcomings of the project
 Although we tried to develop as comprehensive a study as possible, we had some 
shortcomings. If we need to talk about these shortcomings;

First of all, the automaton was just an automaton built on nouns and verbs. As a result, 
there were deficiencies in the dictionary and among our allomorphs. So our automaton 
did not have reserved transitions for adjectives, adverbs, conjunctions and prepositions. 
In addition, the so-called infinitive suffix was not available in our vending machine. 
When we looked at the dictionary, we encountered two groups, separated only as nouns 
and verbs. However, adverbs, adjectives, conjunctions, and prepositions had to be added 
there, too.

## 1.3. Improvements made
 Based on the shortcomings we identified, we made some improvements in our 
automaton, transitions and dictionary.

First, we defined new transitions for adjectives, adverbs, conjunctions and prepositions 
in our automaton and included them as well. In addition, we created a transition for the 
infinitive suffix and included it in our automaton. After doing this, we added the 
necessary allomorphs and words that we should include in these transitions.

Additions made;

![1](https://github.com/BuseBeker/Thesis-Project/assets/72763515/830d5912-2caa-4454-9594-f34c6eb6d074)
![2](https://github.com/BuseBeker/Thesis-Project/assets/72763515/cfc62fdf-4938-4fed-8e94-bd744739d8da)
![3](https://github.com/BuseBeker/Thesis-Project/assets/72763515/eb1c24c0-9262-4c58-b840-5cd5e2840593)

## 1.4. Latest version in Analyzer
 As a result of all our determinations and improvements, we have obtained an analysis 
program that can analyze 6 different word types, including nouns, verbs, adjectives, 
adverbs, conjunctions and prepositions. We strengthened our program by supporting it 
with our dictionary, which is very rich in terms of all these word types.

# 2. PROJECT DEVELOPMENT
## 2.1.Question Generator 
Artificial intelligence involves the simulation of intelligent behavior in machines to 
create machines that can mimic human intelligence in important ways such as 
understanding language, reasoning, and problem solving. Conversational chatbots, also 
known as chatbots or dialog systems, are software programs designed to simulate 
conversation with human users. Chatbots can handle a wide variety of queries and tasks, 
such as answering questions, scheduling appointments, or making recommendations. 
Chatbots have become an increasingly popular tool in recent years and help people in 
many ways.

In this context, we focused on a chatbot development project. However, unlike today's 
chatbots, we focused on developing a chatbot that can ask us questions rather than 
answering the questions asked. In the previous period, we made a basic introduction to 
create this. This term, we have advanced our work and tried to create a software program 
that can ask us questions. We created this program using shift-reduce parser. Here is our 
expectation from the parser; taking a sentence as input and outputting the questions that 
this sentence can answer.

First, let's talk about what the shift-reduce parser does. Parser consists of 3 parts; Base 
part, Shift part and Reduce part.

Base part; The part where the parser determines when and under what conditions the 
work done will end.

![4](https://github.com/BuseBeker/Thesis-Project/assets/72763515/94d2486c-4e64-450f-bfbc-97ca97ee671a)

Shift part; The parser does the job of pulling the information from the current input and 
pushing that information to the stack. What we mean by the current input here is the 
words in the sentence we give as input. We analyze these words thanks to the 
morphophonological analyzer program we created in the previous period.

![5](https://github.com/BuseBeker/Thesis-Project/assets/72763515/7c67a026-e48b-42ff-8c87-757d4421e6ea)

The reduce part deals with the stack, not the string. Since our aim is to reach a single 
unified structure, we try to combine syntactic structures in this section.

![6](https://github.com/BuseBeker/Thesis-Project/assets/72763515/5a06eb2d-9a5f-4595-bbe3-c6912ee88aab)

We need a syntax to perform the merge operation that we mentioned in the Reduce 
section. We achieve this by creating a Phrase Structure Rules section in the parser. Here 
we have created a syntax with very wide boundaries. Because we are just at the 
beginning of our work, trying to add constraints could affect our progress in this process. 
We continued our work, thinking that it would be more appropriate to apply restrictions 
where this flexibility we allow causes problems in the future.

![7](https://github.com/BuseBeker/Thesis-Project/assets/72763515/3f5140a4-5517-45c1-b1e1-85e6b86046bc)

We have stated that we expect the parser to output the questions that can be asked to 
the given sentence. In order to achieve this, first of all, we had to determine the question 
words that each word in the sentence we gave as input could produce. We tried to make 
this determination with a question generator program. This program returns us which 
question sentence can be answered according to the type of words in the sentence we 
give as input. We do this thanks to the generate_q_lists procedure in the question 
generator file. 

For example, if we think through a simple sentence, like 'çocuk geldi'; The word 'çocuk' 
is in the noun category. In this case, the question sentences to be produced for the word 
child are as follows:

![8](https://github.com/BuseBeker/Thesis-Project/assets/72763515/9d571a95-b6bf-43d9-b821-0d01d96840fd)

The word 'geldi' is in the verb category and the interrogative sentence it can produce is 
as follows:

![9](https://github.com/BuseBeker/Thesis-Project/assets/72763515/16abcc04-3e6c-42a7-948c-668a57e9c416)


In this way, it was possible to produce questions such as ‘kim geldi', 'hangisi geldi',
‘çocuk ne yaptı’ etc.


If we add an adverb or adjective to this sentence; In other words, 'çocuk koşarak geldi' 
or 'küçük çocuk geldi', in this case, the adjective and adverb categories in the 
generate_q_lists section will have to be looked at and the number of questions will 
increase accordingly.

 Questions suitable for the adverb and adjective in the sentence will also be produced, 
such 'hangi çocuk geldi', 'küçük çocuk nasıl geldi', 'hangi çocuk nasıl geldi'.

![10](https://github.com/BuseBeker/Thesis-Project/assets/72763515/9a670897-bfa7-4ec7-bf3d-b70217711fe8)

The question sentences returned from the generate_q_lists procedure are subjected to 
cartesian product in the question generator program. Thus, we reach all possible 
question sentences.

![11](https://github.com/BuseBeker/Thesis-Project/assets/72763515/a49f3670-ac96-481e-9efd-8fc3a8b4f24b)

## 2.2. Question Generator Results
 In the question generator file, we stated that we reached all possible question sentences 
by cartesian multiplication of the question sentences obtained by the generate_q_lists 
procedure. After reaching this stage, these questions were printed in a txt file in order 
to see this output completely. In addition, a tokenizer was included in the parser in order 
to prevent word-by-word separation when giving a sentence as input. Thanks to this 
tokenizer, we can give the sentence we want to input as a single string.


Here are the codes and output results for these additions:

![12](https://github.com/BuseBeker/Thesis-Project/assets/72763515/d1a96222-cb27-4887-b90b-680f25423639)

![13](https://github.com/BuseBeker/Thesis-Project/assets/72763515/b12889da-93ea-4896-911c-d316f5726c66)

![14](https://github.com/BuseBeker/Thesis-Project/assets/72763515/63b85b9b-c4a2-4638-8d7f-d7a056efea3d)

![15](https://github.com/BuseBeker/Thesis-Project/assets/72763515/bf5cf089-9b81-4ab6-8f34-26ebc35101a2)


## 2.3. Deep Learning for NLP

Until this part of the project, we were interested in generating questions on Prolog. In 
the next part, we will be interested in determining how usable these questions, namely 
the data we have obtained, are.

First of all, if we need to give a brief summary of the research we have done within the 
scope of this project; It is possible to say that machine learning and deep learning are 
very useful in many different areas of artificial intelligence, especially in natural 
language processing. Based on the articles we read about ChatGPT; We can say that 
machine learning and deep learning techniques are the preferred standard approach to 
develop artificial intelligence. In particular, one of the points we underlined during our 
research was that deep learning techniques allow GPT to understand the context of the 
text and produce answers close to the answers that people would give, which is one of 
the things that makes GPT unique among language processing tools.

Based on the research we have done and the guidance of our course instructors; we 
directed our work with the aim of training a deep learning model with the help of the 
generated questions and increasing the previous production success. One of the reasons 
why we prefer deep learning here is that in most of the researches; deep learning 
techniques can be used to improve the performance of chatbots and natural language 
processing algorithms. Considering that our aim in the project is to increase the success 
of an existing production, it would be quite correct to continue our work with deep 
learning techniques.

Before using deep learning techniques on our project, we did research on deep learning. 
The summary of our research is as follows:

There are 3 basic points that we can specify as critical in deep learning. The first is data. 
Especially in recent years, the increase in data and the emergence of big data has 
increased the use of deep learning methods. In fact, we will be dealing with the data part 
of the work while using deep learning in this project.

The second critical point is proccessing power. There is a serious processing power 
shortage in the application of deep learning, especially to big data. Due to the excess of 
data, a normal machine has trouble using deep learning techniques comfortably. At this 
point, the quality of the data we use is of great importance.

The third critical point is optimization algorithms. If we are to talk about this project, 
we will not deal with this part. The important point for us is the data part.
So how do we use deep learning on our project? In this project, we will be assisted by 
the mt5 model, a model developed to solve NLP tasks with a large amount of data. To 
be more specific; There is already a study that generates questions using the mt5 model. 
(https://github.com/obss/turkish-question-generation)

Our aim here is to train this study with our own data and see if we get a more successful 
result. In other words, we will try to develop a more successful question-answer system 
with the help of the questions we produce using NLP methods. In summary, our goal is 
to increase the data with the help of our own work. We need to make an important note 
here: Since our study is a rule-based natural language processing study, it not only 
increases the data quantitatively, but also allows us to determine what qualities of data 
we will produce. This is a very important and valuable point.

The values obtained from the current study are as follows:

![16](https://github.com/BuseBeker/Thesis-Project/assets/72763515/ee752e96-5812-4b5d-abbc-96e77cec3cce)

 BLEU-1 and ROUGE-L criteria were used as success criteria. What are these criteria? 
The BLEU-1 is a measure of how close the result from a machine is to the result from 
a human. The closer these two results are to each other, the better. The ROUGE-L 
criterion is actually another criterion used to compare machine and human output. It is 
based on Longest Common Subsequence (LCS). It is especially used to measure the 
summation success of text summarization systems. A high ROUGE-L value indicates 
high summation success.

When we look at the values in this study, we see that the success is not very high. Is 
this due to the data used? To what extent does the use of a higher quality dataset increase 
success, or is the data we produce a quality data that will lead to increased success? 
When we train the model with our own data, we will have the answers to all these 
questions.

So how does this study train data? Let's start by saying that it uses the Hugging Face 
library first. Hugging Face is one of the leading initiatives in NLP. We can say that its 
general purpose is to facilitate the use of machine learning and to provide users with the 
opportunity to work faster and more readily.

In addition, various libraries such as json, logging, os, torch and transformers were also 
used in the study.

![17](https://github.com/BuseBeker/Thesis-Project/assets/72763515/9c208d21-7a32-4c43-9b32-4c8f0e94a640)

 One of the important parts for us in the study is the data loading part.
 
![18](https://github.com/BuseBeker/Thesis-Project/assets/72763515/f34de545-d06e-44b5-abb6-c9a256d5e30d)

In this section, we tried to load the dataset we created for training or testing purposes. 
This code also does the job of returning the loaded dataset.

# 3. CONCLUSIONS

In this course; First of all, improvements were made on our morphophonological 
analysis program. With the help of the errors encountered as a result of the tests, missing 
points were determined and necessary additions were made. Some of these additions 
were made to the automata, and some to the file containing my allomorphs.

Afterwards, the shift-reduce parser, which we started programming to generate 
questions, was developed. Added question generator and tokenizer to parser. Thanks to 
the generated_q_list procedure in the question generator file, the question sentences to 
be produced against the entered word were determined.

Due to the difference in the word types encountered in the sentence in question 
generation, the dictionary section has been edited. New words belonging to different 
word types such as adjectives, adverbs, prepositions and conjunctions were added, not 
limited to nouns and verbs.

After these edits and improvements, the question was produced and saved in a txt file.

Researches were conducted on deep learning and natural language processing, and 
articles were researched and read about ChatGPT, one of the most popular chatbots of 
the last period. Then, the results of the current study and study, in which deep learning 
techniques were used to train data, were examined. In this context, we aimed to reach 
an information about the adequacy of our data by training the same study with our own 
data and comparing our results with the current results. However, due to the 
inadequacies of our personal computers, we could not perform the train operation and 
we could not make the comparison we wanted to make.

# 4. REFERENCES

- Kılıçaslan, Yılmaz, Açıkgöz, Önder and Özlem Aydın (2014). Three-Layered MorphoPhonological Analyzer For Turkish. Journal of International Scientific Publications: 
Materials,Methods and Technologies.

- obss/turkish-question-generation: Automated question generation and question 
answering from Turkish texts using text-to-text transformers (github.com)

- obss/mt5-small-3task-both-tquad2 · Hugging Face

- "Automated question generation and question answering from Turkish text" by FATİH 
ÇAĞATAY AKYÖN, ALİ DEVRİM EKİN ÇAVUŞOĞLU et al. (tubitak.gov.tr)

- Bleu vs rouge (slideshare.net)

- What are Hugging Face Transformers? | Databricks on AWS (com.s3-website-us-west1.amazonaws.com)

- A Review of AI-Driven Conversational Chatbots Implementation Methodologies and 
Challenges (1999–2022), Chien-Chang Lin , Anna Y. Q. Huang and Stephen J. H. Yang 

- ChatGPT and a New Academic Reality: AI-Written Research Papers and the Ethics of 
the Large Language Models in Scholarly Publishing, Brady D. Lund, Ting Wang, 
Nishith Reddy Mannuru, Bing Nie , Somipam Shimray , Ziang Wang

- Attention is not all you need: the complicated case of ethically using large language 
models in healthcare and medicine, Stefan Harrer

- CSE402 course registrations on ADUZEM portal

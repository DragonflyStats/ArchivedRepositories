Data Engineering
==================
Darren Kelly 14163535

![Aero](https://github.com/ULStats/MA4128Assessment-2018/blob/master/Technology-Wallpaper-6.jpg)

Overview
==================
Data engineering is a practice across of a number of disciplines which includes engineering computing systems, computer software, or taking information through the analysis of data. This following essay will briefly go through what data engineers do.

Data Engineers
=================

Data engineers are the data proffessionals who prepare the "big data" infrastructure and build massive reservoirs for big data. It is a new enough role that each organization defines a little differently. However, broadly speaking their job is to manage the data and make sure it can be channeled as required. They develop, construct, test and maintain architectures such as databases and large-scale data processing systems. Once continuous pipelines are installed to – and from – these huge “pools” of filtered information, data scientists can pull relevant data sets for their analysis. 

A data engineer allow data scientists to do their jobs more effectively, e.g. at Netflix data engineers may build and maintain the infrastructure that allows data scientists to experiment with recommendation algorithms, and in other companies, the data engineering is the whole shebang, e.g. at Twitter, the biggest challenge is how to make data flow as quickly and efficiently as possible. A data engineer gathers and collects the data, stores it, does batch processing or real-time processing on it, and serves it via an API (Application Program Interface) to a data scientist who can easily query it.

What they do
===============
There are a lot of Big Data tools that a data engineer can do, and it is important that they can back up their choice of using a particular tool. A good data engineer has huge knowledge of databases and use best engineering practices. These include handling and logging erros, monitoring the system, building human-fault-tolerant pipelines, understanding what is necessary to scale up, addressing continuous integration, knowledge of database administration, maintaining data cleaning, and ensuring a deterministic pipeline. Then, they write complex queries on that, make sure it is easily optimizing the performance of their company's big data ecosystem. They might also run some ETL (Extract, Transform and Load) on top of big datasets and create big data warehouses that can be used for reporting or analysis by data scientists. Beyond that, because data engineers focus more on the design and architecture, they are typically not expected to know any machine learning or analytics for big data.

Big Data
==============
Big data, in the most general case refers to a quantity of data, that either can’t be stored on a single server, or computing something over this data using a single server, would take too long. Historically, the scale of data was small enough to fit on one server. As a result, the tools that developed, e.g. Relational Database Management Systems (RDMS) were largely meant for single node deployments (this isn’t really true since distributed computing models existed since the 1960s and distributed databases like Teradata existed since the 1970s- but these were very niche). Even though our compute and storage capacities were increasing exponentially, the data generated was growing even faster.

Data Warehouses
=================
I have mentioned earlier that sometimes the job of the data engineer is to make data accessible, so for instance the data scientist can run queries on top of this data. For this to happen the data needs to be stored, this is stored in a data warehouse. A data warehouse is a consolidation of all the data in an organization in order to make it easier to analyze. The raw data is often heterogenous in its format and location. 

To give you a sense of some of the subtleties in working with data warehouses, consider that for transactional databases, data is stored in normalized form, so that the data does not become anomalous. To perform complex queries on normalized data, requires joins. Joins, in general ,are expensive, and at the big data scale, when the data is located on multiple servers, across the network, joins become prohibitively expensive. A solution to this is to denormalize the data. However, denormalizing the data, typically leads to increased storage space.

Conclusion
===============
All in all I believe, that the role of a data engineer is crucial in the running of a company. With data becoming more and more important everyday, companies are desperately trying to analyse this data which makes the area of data engineering extremely important and the role of a data engineer crucial.  


###Export Halo users to Single SignOn(SSO)

Version: *1.0*
<br />
Author: *Usha Hebbar* - *uhebbar@cloudpassage.com*

<!-- Below here write a high-level summary of what this tool does and why it is useful. A few sentences or so. NOTE: You may need to enter TWO returns to create a line break -->
This Ruby script reads all Halo users and puts it in to a csv file. This file can be imported by any SSO provider such as One Login to import all the users into their system. 


####List of Files
<!-- list below here all libraries, scripts, other files provided with this tool. 
Use asterisk-space at the beginning of a line to make a bullet item.  -->
```
* export_halo_users_to_sso.rb -- The main Ruby script
```
 


####Requirements and Dependencies
<!-- Leave the above heading as-is, and write below here the required packages, gems, libraries, other entities that this program needs to run.
Use asterisk-space if you want to make a bullet item.   -->
* The Ruby interpreter must be installed on the machine that executes the script.
* These Ruby gems are required: oauth2, rest-client, json, csv. You can use the following command to install them:

        gem install oauth2,rest-client,json,csv
* Enter your halo api-key, secret key and key id into your script.

####Installation 
<!-- Delete this heading if you put installation info into the "Usage" section) -->
<!--  Otherwise describe below here how to install. Use number-period-space at the beginning of a line to make a numbered step. --> 
1. In the Halo portal create new Halo users which you'll eventually import into the SSO provider.
1. In the Halo Portal, create at least a read-only access Halo API key.



####Usage
<!-- This should be your main section. Show a typical usage statement, syntax diagram, or step-by-step usage instructions.  -->
<!-- Indent code blocks and command-line examples 4 spaces -->
<!-- Better yet, enclose your code block in triple backticks (```) and specify its language -- see example ReadMe
<!-- Show output examples, if useful --> 
<!-- Create subsections if desired. Use 3 hashmarks and asterisks for subheadings, e.g., "###*Required Customizations*"  or "###*Sample Output*" or "###*Extending MyGitHubTool*" -->

You need to run this script in order to get a csv file that contains all halo users information in csv format. That csv file can be imported by any SSO providers.

#####*Example Commands*
* To run the script:

```
ruby export_halo_users_to_SSO.rb
```
#####*Script Output*
The script writes output to a file in CSV format. The output contains, Halo users' first name, last name, email address and username. Now, SSO provider can import this .csv file to import all halo users into their system.

####Acknowledgements
The author wishes to thank Eric Hoffmann for code review.  



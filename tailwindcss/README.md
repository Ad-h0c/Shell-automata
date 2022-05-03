# Shell script to install the tailwind css

##

### What is tailwindcss?

__Google definition:__ Tailwind CSS is self-described as a utility first CSS framework. Rather than focusing on the functionality of the item being styled, Tailwind is centered around how it should be displayed. This makes it easier for the developer to test out new styles and change the layout.

### The problem and solution:

Now moving on to the problem, although tailwind css is a greaty utility css framework, installing everytime we make a project can be real pain. It's especially true in the learning phase. So I decided to write a small script to execute series of tailwind css comands.

Before moving forward, you should know about npm and how does it work. And along with npm there is an external tool that I have used to make installation look elegant. Also you should know how to edit json file. While the script install everything for you, you will have put some effort at couple times though its literally spoon-feeding.

The neccesary tool you need for this script to run is npm which comes in package when you install node.js.

If you've never installed node.js please follow this link.

[Node.js](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)

The next tool you will be needing is pv.

__Google definition:__ pv is a terminal-based (command-line based) tool in Linux that allows us for the monitoring of data being sent through pipe. The full form of pv command is Pipe Viewer. pv helps the user by giving him a visual display of the following, Time Elapsed.

You don't need to worry about this tool cause as long as you run the script it will automatically install it.


### Installation:

After cloning the repository, you may need to change the script to an executable file. Which can done by the following command.

`chmod +x tailwindcss.sh`

Don't forget to add prefix sudo if you don't have enough permissions.

Finally,

`./tailwindcss.sh`

As the installation will be done inside new directory, make sure to run the shell script where you want to create the project.

This is it. Follow the instructions for smooth instllation.

Also, do remember you may need to put efforts couple for installation as this is not perfect script yet.



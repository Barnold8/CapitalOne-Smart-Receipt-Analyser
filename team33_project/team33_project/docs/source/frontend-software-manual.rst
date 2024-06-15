************************
Frontend software manual
************************

Introduction
============

This manual serves as a guide for maintaining and updating our mobile application, providing detailed information on the application's structure, components and features.

Our project frontend is primarily built in Vue and Ionic. These frameworks provided a suitable toolkit for building our application, and allowed us to create an easy to use, satisfying user experience on IOS and Android devices.

This manual is intended for developers or technical staff responsible for maintenance and development of the application. It provides an overview of the application’s architecture, codebase, capabilities and limitations.


Versions used
=============

-	Vue.js: 3.2.47
-	Chart.js: 4.2.1
-	Vue-chartjs: 5.0.1
-	Axios: 1.2.1
-	Capacitor: 4.1.1
-	Ionic: 6.0.0


Definitions of Project Specific Terminology and Jargon
======================================================

| **Receipt** \- A shopping receipt that is given to a supermarket customer after purchase

| **Vue**  \- A JavaScript framework for building user interfaces with reusable components that encapsulate HTML, CSS, and JavaScript logic. It follows a single-file component pattern, promoting modularity and reusability. Vue is known for its simplicity, flexibility, and scalability, making it popular for modern web applications. Our software is made in Vue.

| **Ionic**  \- A framework used for developing mobile applications using JavaScript. The main advantage of Ionic is its ability to build once and run on any device. We used it to ensure the application will run on IOS and Android devices.

| **Component**  \- A reusable unit of user interface that encapsulates HTML, CSS, and JavaScript logic. It follows a single-file component pattern, where it's defined in a single file with template, script, and style sections

| **Chart**  \- Any visual aid used to display data to the user. Used in this application to display spending data using the Chart.js Library

| **Chart.js**  \- JavaScript library used for creating aesthetic and dynamic graphs and charts for data visualization

| **Vue\-chartjs**  \-  JavaScript library used to simplify using Chart.js charts within Vue.

| **Capacitor**  \- A cross-platform app development framework that uses web technologies to create native-like mobile apps. It provides APIs for accessing device features and allows developers to leverage their web development skills for building mobile apps with native-like functionality.


Architecture of the Frontend
============================

Views
^^^^^

The views directory is used for all the 'pages' that the user will see. These include the Home Page, Summary Page and Analytics Page. These pages make up the bulk of the application, and most of their interactions and direction will be here. They control the main application flow, and so we grouped them together to allow for quick recognition of the main UI elements.

Controllers
^^^^^^^^^^^

The 'controllers' directory holds all the infrastructure to sign up, log in, and navigate the app. OpenControl.vue is the first loaded page and will check to see if a user has a login token or not. If not, they will be shown the login/signup pages, which are also in this directory. Finally, AppControl contains the NavBar component, which is used on every page to navigate the application. It was done this way to allow the NavBar to be displayed on everything without having to manually add it.

Components
^^^^^^^^^^

Most objects in Vue can be represented as 'components,' and in the context of this project these are stored in frontend/components. These reusable objects are used throughout the program as they can be created using parameters from the page they are sitting on.  We use these in the form of 'charts' from the Chart.js library. This library is used to create charts that visualize the given data and was chosen for its flexibility and aesthetics.A typical component is made up of:
-	HTML Template
    -	This is used to describe the layout and content of the component
-	Script
    -	This is the dynamic JavaScript part of the object
-	Style
    -	Basic CSS is used to style each of the components

A basic example of a component can be seen in the 'BarChart.vue' file, which holds the template, script and styling used for any generic bar chart that we use in the application. Since A basic example of a component can be seen in the 'BarChart.vue' file, which holds the template, script and styling used for any generic bar chart that we use in the application. Since components can be created and destroyed, it is good practice to parameterize them for reusability.

.. code-block:: html
    
  <template>
    <div class="bar-chart-container">
      <canvas ref="canvas" width="canvasWidth" height="canvasHeight"></canvas>
    </div>
  </template>

.. code-block:: html
    
  <script>
    import { Bar } from 'vue-chartjs'
    import Chart from 'chart.js/auto';

    export default {
      extends: Bar,
      data(){
      },
      props: {
      },
      mounted(){
      },
      methods: {
      }
    }

  </script>


The above code is the HTML template used in the BarChart component, containing just a single div holding a canvas used for the actual chart. The div can be styled like a normal div.

The JavaScript of the BarChart component is more complex, as any components necessary are imported. This allows for components made of other components, allowing for flexibility and reusability of code. Props are the attributes of components, and can be set on initialization of the object, or can be hard-set in the component file. 

.. code-block:: JavaScript

  props: {
    chartData: {
      type: Object,
      required: true
    },
    colors: {
      type: Array,
      default: () => ['#FF7F50'. '#FFD700', ..]
    },
    ChartOptions: {
      type: Object,
      default: () => ({
        responsive: true,
        maintainAspectRatio: false,
        scales: {
          xAxes: [
            {
              ticks: {
                beginAtZero: true
              }
            }
          ]
        },
        indexAxis: 'y'
      })
    }
  },

In this file, the props include the data of the chart, the colors that will be used, and the chart options that are used to change the attributes of the chart object. The chartData prop has the attribute 'required' meaning it has to be passed to the component at creation time, as shown here:

.. code-block:: html

  <BarChart :chartData="categoryAmounts"></BarChart>


**Chart styling**

.. code-block:: JavaScript

  const chart = new Chart(ctx, {
        type: 'bar',
        data: {
          labels: ['Label 1','Label 2','Label 3'],
          datasets: [{
             label: 'My Dataset'.
             data: [10,20,30],
             backgroundColor: 'rgba(75,192,192,0.8)',
             borderColor: 'rgba(75,192,192,1)'.
             borderWidth: 1
          }]
        },
      options: {
        scales: {
          y: {
            beginAtZero: true,
            max: 50
          }
        },
      }
      plugins: {
        title:{
          display: true,
          text, 'My Chart Title',
          font: {
            size: 18
          }
        }
      }
    }
  )



Some of the commonly used parameters when styling charts include:


type:
^^^^^
     This parameter specifies the type of chart to be rendered, such as 'bar', 'line', 'pie', etc.

data:
^^^^^
     This parameter defines the data to be displayed on the chart, including labels, datasets, and their corresponding values.

options: 
^^^^^^^^
    This parameter allows you to customize various options to style the chart, including colors, fonts, animations, and layout. Some common options include:

backgroundColor: 
^^^^^^^^^^^^^^^^
    Specifies the background color of chart elements, such as bars, lines, or data points.

borderColor:
^^^^^^^^^^^^
     Specifies the border color of chart elements.
     
hoverBackgroundColor:
^^^^^^^^^^^^^^^^^^^^
     Specifies the background color of chart elements when hovered over.

font: 
^^^^
    Specifies the font properties for chart labels, including family, size, style, and weight.
layout:
^^^^^^^
     Specifies the layout options for charts, such as spacing between bars, padding, and margins.

animation:
^^^^^^^^^^
     Specifies the animation options for chart elements, such as duration, easing, and delay.

plugins: 
^^^^^^^^
     This parameter allows you to use plugins to extend the functionality of Chart.js and add additional styling options, such as custom tooltips, legends, or other interactive features.

responsive: 
^^^^^^^^^^
     This parameter determines whether the chart should be responsive and adjust its size based on the container's dimensions.

options.scales: 
^^^^^^^^^^^^^^^
     This parameter allows you to configure the scales (e.g., X-axis and Y-axis) of the chart, including options such as ticks, grid lines, and labels.

options.legend: 
^^^^^^^^^^^^^^^
    This parameter allows you to customize the appearance and position of the chart's legend, including options such as labels, position, and alignment.

Layouts
=======

Finally, the layouts directory is used to hold to hold the Header and NavBar components. This are used on most pages throughout the app, so separation of them from the rest of the components allows for easy recognition and editing without needed to change each page individually


Dependencies
============

First and foremost, Node.js and npm (Node Package Manager) must be installed on the system. Vue.js can then be installed using npm. Chart.Js can also be installed using npm, or it can be included as a script tag in the HTML file. For Ionic, the Ionic CLI (Command Line Interface) must be installed globally using npm. Capacitor can be installed using npm as well. Additionally, the application may have other dependencies, such as specific plugins or libraries, that need to be installed to enable certain features or functionalities. It is important to regularly check and update these dependencies to ensure the application is up-to-date and secure.

Deployment
==========

When in the directory containing package-lock.json, running 'npm run serve' in the terminal will start the application assuming all the node modules are updated, and the application can compile correctly.  The following will be displayed if the application runs successfully.

    1)	Ensure Node.js is installed on your system 
    2)	Navigate to the root directory containing ‘package-lock.json’ in the command line
    3)	Run the command ‘npm update’ to download all the required modules
    4)	Run the command ‘npm run serve’ to run the application
    5)	Follow the one of the links shown – The ‘Local’ link can only be accessed from your machine, while the ‘Network’ link can be accessed from any machine on your local network.

.. code-block:: 

  App running at:
  - Local:   http://localhost:8080/
  - Network: http://10.15.6.120:8080/

Following either of the links will take you to the Login/Signup Page as long as a token isn't stored locally. If it is, it can be deleted by heading to the developer console Application->Local Storage->localhost:8080 and deleting the capacitor token. (These instructions are provided for Google Chrome, but the principle should apply to all web browsers)

.. list-table:: **Test accounts are as follows:**
   :widths: 25 25 25 25 25
   :header-rows: 1

   * - Username
     - 1
     - 2
     - 3
     - 4
   * - Password
     - 123
     - 123
     - 123
     - 123


.. image:: images/picture7.png
    :alt: Alternative text

Upon logging into the application, if no receipts are found on that user account for the day, you will be shown the CTAHomePage and the Capacitor Token will be stored. 

.. image:: images/picture8.png
    :alt: Alternative text

.. image:: images/picture9.png
    :alt: Alternative text

From here, the application can be used, tested and modified. The token will be stored locally, so if you wish to return to the Login/Signup page, it must be deleted from the cache.



**Integration**
Sending receipts to the backend and receiving data back is handled by the postRequest function in HomePage.vue. If a response status is good, then the data will be sent to be processed by convertRespToArray, where it can be visualized properly to the user.


.. code-block:: JavaScript

  async postRequest(image){
    this.sent = true
    const resp = await axios.post('http://188/166/76.134/api/upload-receipt',{img: image.base64String}, this.tokenHeader)
    if(resp.status == 200){
        this.convertRespToArray(resp.data)
        this.recategorise = true
    }
  },

Additionally, the getRecent function is responsible for getting the most recent receipt from the server given the date

.. code-block:: JavaScript

  getRecent(){
    
      var date = (new Date()).toISOString().split('T')[0];
      return axios.past('http://188.166.76.134/api/receipt-range?DateStart=' + date, null, this.tokenHeader)
  },

Maintenance/Additions
=====================

One of the key features of Ionic is the use of Ionic Pages. An Ionic Page is a component that represents a single screen in a mobile app. Each page is a self-contained unit that has its own functionality and is responsible for rendering a specific part of the app's user interface.

To add a graph to an Ionic Page, create a new chart in the script section of the page, then add that component as part of the page's HTML.

Colors can be changed in each components dedicated .Vue file.

To add a new Ionic Page, create a Vue file in the “views” folder. This file should contain all of the components that you wish to display on the page. In the script section of this file, any components used should be imported from the correct vue file.


Links to further documentation
==============================

-	Chart.js Chart.js | Chart.js. Available at: https://www.chartjs.org/docs/latest/ (Accessed: 01-05-2023).
-	Ionicframework Introduction to ionic: Ionic documentation, Open-Source UI Toolkit to Create Your Own Mobile Apps. Available at: https://ionicframework.com/docs (Accessed: 01-05-2023).
-	Cross-platform native runtime for web apps: Capacitor documentation Capacitor. Available at: https://capacitorjs.com/docs (Accessed: 01-05-2023).
-	Vue.js Introduction | Vue.js. Available at: https://vuejs.org/guide/introduction.html (Accessed: 01-05-2023).

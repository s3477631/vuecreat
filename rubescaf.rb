require 'fileutils'

class Setup
 attr_accessor :root_dir, :dir_name

def initialize(dir_name, root_dir)

    @dir_name = dir_name
    @root_dir = root_dir
    FileUtils.mkdir_p "#{root_dir}/#{dir_name}"

    FileUtils.mkdir_p "#{root_dir}/#{dir_name}/classes"
    FileUtils.mkdir_p "#{root_dir}/#{dir_name}/modules"
    FileUtils.mkdir_p "#{root_dir}/#{dir_name}/gems"

end
def changedir
    FileUtils.cd("#{root_dir}/#{dir_name}")
    FileUtils.touch('app.html')
    File.open("app.html", "w")
    File.write("app.html",  "
        <!DOCTYPE html>
        <html>
        <head>
        <link href='https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900' rel='stylesheet'>
        <link href='https://cdn.jsdelivr.net/npm/@mdi/font@3.x/css/materialdesignicons.min.css' rel='stylesheet'>
        <link href='https://cdn.jsdelivr.net/npm/vuetify@2.x/dist/vuetify.min.css' rel='stylesheet'>
        <meta name='viewport' content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, minimal-ui'>
        </head>
        <body>
        <div id='app'>  
        <v-app>
        <v-content>
        <v-card class='primary'>
        <v-card-title>
        hey guys
        </v-card-title>
        <v-text-field>
        </v-text-field>
        </v-card> 
        </v-content>
        </v-app>
        </div>

   <script src='https://cdn.jsdelivr.net/npm/vue@2.x/dist/vue.js'></script>
   <script src='https://cdn.jsdelivr.net/npm/vuetify@2.x/dist/vuetify.js'></script>
  
            <script>    
                new Vue({
                    el: '#app',
                    vuetify: new Vuetify(),
                    data: {
                        message: 'Hello Friends!', //commas in general are important - the use of javascript-esque semi-colons not so much (lint wont like it, but it should run)
                        Days: 2
            
                    }, 
        
        //lifecycle hooks 
                  
                   methods: {
                       myFirstFunction: function(){
                         // we call this from our button click 
                this.message = 'stop and smile - cos it works!'
              //vue focuses on using this. to call data or functions. Another example: 'this.myFirstFunction()' from another function (in any of the lifecycle hooks) will call: myFirstFunction. Similarly we can access our data i.e: 
                this.Days = 4; //doesn't really matter if I put a semi-colon on the end or not      delete it and see. :) 
                           }
                        }
                  
        //           computed: {
                   //this is like a method on 'roids' basically a method that caches values and attaches an inbuilt event listener to changes in data (for which it updates the cached value) 
        //             }, 
                    
        //             watch: {
        // watch may sound like it works in a similar fashion. But it doesn't.
        // any function/object/piece of data can be checked for new/old values in watch - its simply an event listener that spits out old and new values with more work required to store/manipulate end results. Its incredibly useful for advanced data abstraction, yet can be costly to system resources if used incorrectly.
        //               }, 
        //             filter{
        //               }, 
                    
                    
                      
        
                  
                  //have a go performing basic functions/calcutions
        
        //TASKS
                // message: 3*54  for example
                // below message add a new global variable called: 'Days'
                // use curly braces to display a message & days in the dom 
               //  create a delete button to reinforce the concepts learnt! 
                
                })
                
            </script>
          
          </body>
        </html>
        
        ")
end

end


puts "Please Name Your Ruby Project"
dir_name = gets.chomp

puts "Where would you like to save it?"
root_dir = gets.chomp

test = Setup.new(dir_name, root_dir)

test.changedir








 
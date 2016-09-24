void setup()
    {
       ///dates    
     
     String start= "20090101";
     String end = "20090202";
     
     // year 2011 only
     String[] startDates= {"20110101","20110201","20110301","20110401","20110501","20110601","20110701","20110801","20110901","20111001","20111101","20111201",
                           "20120101","20120201","20120301","20120401","20120501","20120601","20120701","20120801","20120901","20121001","20121101","20121201",
                           "20130101","20130201","20130301","20130401","20130501","20130601","20130701","20130801","20130901","20131001","20131101","20131201"
                                                      
                         };
     String[] endDates= {"20110131","20110228","20110331","20110430","20110531","20110630","20110731","20110831","20110930","20111031","20111130","20111231",
                         "20120131","20120228","20120331","20120430","20120531","20120630","20120731","20120831","20120930","20121031","20121130","20121231",
                         "20130131","20130228","20130331","20130430","20130531","20130630","20130731","20130831","20130930","20131031","20131130","20131231"
   
 
                         };
    
     // canvas
     size(width,height);
     smooth();
     background(255);
     fill(255,0,0);
     noStroke();
     rect(0,0,width/2,height);
     
     //titles etc
     /*
     textFont(myHelvetica53);
     textAlign(LEFT,TOP);
     fill(255);
     text("DATA      &",leftMargin/3,topMargin/3);
     text("BIG  DATA",leftMargin/3,topMargin/3+45);
     textFont(myHelvetica14);
     
     
     textAlign(LEFT,TOP);
     fill(255,0,0);
     text("Data Correlation:",width/2+leftMargin/3,topMargin/3);
     text("SPL: Checkouts in books with the  ",width/2+leftMargin/3,topMargin/3+heightChange);    
     text("word 'Data' & 'Big Data' ",width/2+leftMargin*5/3,topMargin/3+2*heightChange); 
     text("NYT: Number of times 'data'& 'big data'  ",width/2+leftMargin/3,heightChange*3+topMargin/3);
     text("turned up in the article search  ",width/2+leftMargin*5/3,4*heightChange+ topMargin/3);
     */
     
     /// messing around with titles
     
     
     textFont(myHelvetica35);
     textAlign(LEFT,TOP);
     fill(255);
     text("DATA      &",leftMargin/3,topMargin/3);
     text("BIG  DATA",leftMargin/3,topMargin/3+35);
     textFont(myHelvetica12);
     textAlign(LEFT,TOP);
     fill(255,0,0);
     text("Data Correlation:",width/2+leftMargin/3,topMargin/3);
     text("SPL: Checkouts in books with the  ",width/2+leftMargin/3,topMargin/3+heightChange);    
     text("word 'Data' & 'Big Data' ",width/2+leftMargin*5/3,topMargin/3+2*heightChange); 
     text("NYT: Number of times 'data'& 'big data'  ",width/2+leftMargin/3,heightChange*3+topMargin/3);
     text("turned up in the article search  ",width/2+leftMargin*5/3,4*heightChange+ topMargin/3);
     
     
     
     textFont(myHelvetica12);
     textAlign(CENTER,CENTER);
     fill(255,0,0);
     text("By Mohit Hingorani || MAT259 || Assignment 3",0.75*width,height-bottomMargin/3);
     
     textFont(myHelvetica16);
     textAlign(CENTER,CENTER);
     fill(255);
     text("Seattle Public Library ",width/4,height-2*bottomMargin);
     
     
     textFont(myHelvetica16);
     textAlign(CENTER,CENTER);
     fill(255,0,0);
     text("New York Times ",3*width/4,height-2*bottomMargin);
     //getting years (barWidth11-barWidth13)
     int yearCount=2011;
     while(yearCount<2014)
            {
             textFont(myHelvetica16);
             textAlign(LEFT,TOP);
             fill(255);
             text(yearCount,leftMargin/3,(yearCount-2010)*barWidth*12-5*barWidth);
             
             textFont(myHelvetica16);
             textAlign(RIGHT,TOP);
             fill(255,0,0);
             text(yearCount,width-leftMargin/3,(yearCount-2010)*barWidth*12-5*barWidth);
             yearCount++;
            }
     /////// lines       
     for (i=0;i<5;i++)
         { 
           stroke(255,0,0);
           line(width-leftMargin/3,i*barWidth*12-5*barWidth-4,width-(leftMargin+barWidth*4),i*barWidth*12-5*barWidth-4);       
           stroke(255);
           line(leftMargin/3,i*barWidth*12-5*barWidth-4,leftMargin+barWidth*4,i*barWidth*12-5*barWidth-4);
         }      
          
     // initializing the tables
     
     data = new Table();
     bigdata = new Table();
     
     data= loadTable("movie/data.csv","header");
     bigdata= loadTable("movie/bigdata.csv","header");
     
     //extracting tables from DATA CSV files
     
     //creating the datamatrix
      dataMatrix = new float [rows];
      bigDataMatrix = new float [rows];
      dataNumbers= new int[rows];
      bigDataNumbers=new int [rows];
      
      
      //extracting form the CSV file
      
      for (i=0;i<rows;i++)
          {
            dataMatrix[i]= data.getInt(i,2);
          }
      for (i=0;i<rows;i++)
          {  
            if (i<rows-4)
                bigDataMatrix[i] = 0;
            else    
                bigDataMatrix[i]= bigdata.getInt(i-32,2);
          }    
      
      //finding the maximum number of books
      
      maxDataBooks=dataMatrix[0];
      for(i=0;i<rows;i++)
          {
          if (maxDataBooks<dataMatrix[i])
              {
                maxDataBooks=dataMatrix[i];
              }
           }
     for (i=0;i<rows;i++)
          {
            dataMatrix[i]= dataMatrix[i]/maxDataBooks;
          }          
           
   //messing with NYT
   
     for (int i= 0 ; i<words.length;i++)
         {  
        for(int counter=0; counter<36;counter++)
            {
            frequency= getArticleKeywordCount( words[i], startDates[counter], endDates[counter]); 
            println(frequency);
            
            if(i==0)
                {
                  dataNumbers[counter]=frequency;
                }
            if(i==1)
                {
                  bigDataNumbers[counter]=frequency;
                }
                
           
            
            }
         }  
    
          
    //end of the last setup bracket
    }    
  
     
     
     
    


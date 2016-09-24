void draw()
      {
        
       
       //drawing data for SPL
       for (i=0;i<rows;i++)
            {
              stroke(255,0,0);
              strokeWeight(0.8);
              // fill(255);
              fill(220);
              //rect x,y,width,height 
             rect(width/2-5*dataMatrix[i]*maxDataBooks,5*topMargin+i*barWidth,5*dataMatrix[i]*maxDataBooks,barWidth ) ;
            }   
        
        for (i=0;i<rows;i++)
            {
              stroke(255,0,0);
              strokeWeight(0.8);
              fill(255);
              //rect x,y,width,height 
             rect(width/2-5*bigDataMatrix[i],5*topMargin+i*barWidth,5*bigDataMatrix[i],barWidth ) ;
            }
        
        
        for (int i= 0 ; i<words.length;i++)
         {  
          for(int counter=0; counter<36;counter++)
              {
                
                drawDataNYT(dataNumbers[counter],counter);
              }
         }  
      
       for (int i= 0 ; i<words.length;i++)
         {  
          for(int counter=0; counter<36;counter++)
              {
                
                drawBigDataNYT(bigDataNumbers[counter],counter);
              }
         }     
  ///////////////adding interactivity////////////////
       
        if (  mouseY>(5*topMargin) && mouseY<(5*topMargin +barWidth*rows)  )
            { 
              
              pointer = (mouseY-(5*topMargin))/20;
              //left side
              
              if ( mouseX < (width/2)-(bigDataMatrix[pointer]*5) && mouseX < (width/2 -dataMatrix[pointer]*5))
                  {                  
                   fill(255,0,0,222);
                   textFont(myHelvetica12);
                   textAlign(LEFT,CENTER);  
                   text(int(dataMatrix[pointer]*maxDataBooks),mouseX-20,mouseY);                                  
                   
                  }
              if ( mouseX < (width/2) && mouseX >= width/2 -(bigDataMatrix[pointer]*5) ) 
                  {                  
                   fill(255,0,0,222);
                   textFont(myHelvetica12);
                   textAlign(LEFT,CENTER);  
                   text(int(bigDataMatrix[pointer]),mouseX-20,mouseY);
                  }    
              
              // right side   
              
              if (mouseX > width/2+(bigDataNumbers[pointer]/10) && mouseX < (width/2 + dataNumbers[pointer]/10))
                  {                  
                   fill(255,255,255,222);
                   textFont(myHelvetica12);
                   textAlign(LEFT,CENTER);  
                  // if (useX>(width/2)+dataNumbers[pointr]/12)                
                   text(dataNumbers[pointer],mouseX+10,mouseY);
            
                  }    
               else if (mouseX > width/2 && mouseX < width/2+(bigDataNumbers[pointer]/10))
                   {
                     fill(255,255,255,222);
                     textFont(myHelvetica12);
                     textAlign(LEFT,CENTER); 
                     text(bigDataNumbers[pointer],mouseX+10,mouseY);
                   }   
            }     
           
        ////trial for nyt//////
        /*
        for (i=0;i<rows;i++)
            {
              stroke(255);
              fill(255,0,0);
              //rect x,y,width,height 
             rect(width/2,5*topMargin+i*barWidth,5*dataMatrix[i]*maxDataBooks/2,barWidth ) ;
            }
            
        */    
        // end of the last bracket
        
      //save("completedata.jpg") ; 
      saveFrame("data/#####.tif");
      }
      

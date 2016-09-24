void drawDataNYT(int localFrequency,int localCounter)
                    {
                      stroke(255);
                      strokeWeight(0.8);
                      // fill(255,0,0);
                      fill(220,0,0);
                      rect(width/2,5*topMargin+localCounter*barWidth,localFrequency/10,barWidth ) ;
                    }
void drawBigDataNYT(int localFrequency,int localCounter)
                    {
                      stroke(255);
                      strokeWeight(0.8);
                      fill(255,0,0);
                      rect(width/2,5*topMargin+localCounter*barWidth,localFrequency/10,barWidth ) ;
                    }                    

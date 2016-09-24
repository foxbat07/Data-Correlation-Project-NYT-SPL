//Data & Big Data
//by mohit hingorani
// assignment 3 correlating data
//Seattle Public Library Data
//starting form scratch
import org.json.*;

String baseURL = "http://api.nytimes.com/svc/search/v2/articlesearch";
String APIkey = "362412324bfd4d15c3937caa04125f28:9:68817159";

//font helvetica
PFont myHelvetica12 = createFont("Helvetica",12,true);
PFont myHelvetica16 = createFont("Helvetica",16,true);
PFont myHelvetica53 = createFont("Helvetica",51,true);
PFont myHelvetica14 = createFont("Helvetica",14,true);
PFont myHelvetica35 = createFont("Helvetica",35,true);
//background sizes  
int scale=2;
int width= 1080/scale;
int height= 1920/scale;
//margins
int topMargin = width/20;
int bottomMargin = width/20;
int leftMargin = width/20;
int rightMargin = width/20; 

int pointer;
//white is 255  (think of it as too bright)(max light)
//black is 0    (think of it as dark) (no light)

Table data,bigdata;
int rows=36;
int brows=4;
float maxDataBooks;
float maxBigDataBooks;
int i;
float [] dataMatrix =null;
float [] bigDataMatrix =null;
int barWidth=20;
String[] words= {"data","big+data"};


int frequency;
int [] bigDataNumbers=null;
int [] dataNumbers= null;
int heightChange=14;

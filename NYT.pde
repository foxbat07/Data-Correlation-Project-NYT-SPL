int getArticleKeywordCount(String word, String beginDate, String endDate) {

  int total = 0;
  String filename = "nyttmp2.json";

  try  {
    String request = "";
    request += baseURL + ".json";
    request += "?q=" + word;
    request += "&facet_field=source";
    request += "&facet_filter=true";
    request += "&begin_date=" + beginDate;
    request += "&end_date=" + endDate;
    request += "&api-key=" + APIkey;
    
    println(request);
    
    JSONObject  root = loadJSONObject(request);
    JSONObject  response = root.getJSONObject("response");
    JSONObject  facets = response.getJSONObject("facets");
    JSONObject  source = facets.getJSONObject("source");
    total = source.getInt("total");
    
  } catch (Exception e)  {
    e.printStackTrace();
  }

  return total;
};
 

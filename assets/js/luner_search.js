function lunr_search(term, e) {
    e.preventDefault();
    // console.log("Searching for: " + term);
    // console.log("Event: " + e);
    // console.log("Event target: " + e.target);
    // window.location.href = '/search_result.html?value=' + encodeURIComponent(term);    
    document.getElementById('lunrsearchresults').innerHTML = '<ul></ul>';
    if (term) {    
      document.getElementById('lunrsearchresults').innerHTML = "<p>Search results for '" + term + "'</p>" + document.getElementById('lunrsearchresults').innerHTML;
      //put results on the screen.
      var results = idx.search(term);
      if (results.length > 0) {
        //console.log(idx.search(term));
        //if results
        for (var i = 0; i < results.length; i++) {
          // more statements
          var ref = results[i]['ref'];
          var url = documents[ref]['url'];
          // console.log("URL1: " + url);
          // url = url.replace("/blog/", "/3d-printing/blog/");
          // console.log("URL2: " + url);
          // var title = documents[ref]['title'];
          var issue = documents[ref]['issue'];
          var body = documents[ref]['body'].substring(0, 160) + '...';
          document.querySelectorAll('#lunrsearchresults ul')[0].innerHTML = document.querySelectorAll('#lunrsearchresults ul')[0].innerHTML + "<li class='lunrsearchresult'><a href='" + url + "'><span class='issue'>" + issue + "</span><br /><span class='body'>" + body + "</span><br /><span class='url'>" + url + "</span></a></li>";
        }
      } else {
        document.querySelectorAll('#lunrsearchresults ul')[0].innerHTML = "<li class='lunrsearchresult'>No results found...</li>";
      }
    }
    return false;
  }
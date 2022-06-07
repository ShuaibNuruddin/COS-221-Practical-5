const root=document.getElementById('contents')
//d913c8e6-1db7-4120-8264-aef954cb1655
var req=new XMLHttpRequest();
req.open("GET",'https://api.cricapi.com/v1/currentMatches?apikey=d913c8e6-1db7-4120-8264-aef954cb1655&offset=0',true);/*Asynchronous, To be able to load multiple news data from the api at the same time*/
//req.open("GET",'http://localhost/proj/PA3/php/api.php',true);
req.onload=function(){
    if(req.readyState==4 && req.status==200){
        var dat=JSON.parse(req.response)
        dat.data.forEach(match =>{
            var content=document.createElement('div')
            content.setAttribute('class','content')
            var name=document.createElement('h4')
            var status=document.createElement('a')
            status.href="../match_stats.html";
            var matchType=document.createElement('p')
            var vanue=document.createElement('p')
            var date=document.createElement('p')
            name.innerText=match.name
            status.innerText=match.status
            vanue.innerText=match.venue
            matchType.innerText="Turnament: "+match.matchType
            date.innerText=match.dateTimeGMT
            content.appendChild(name)
            content.appendChild(vanue)
            content.appendChild(date)
            content.appendChild(matchType)
            content.appendChild(status)
            root.appendChild(content)
        })
    }
    if(req.response==""){
        var content=document.createElement('h1')
         content.textContent="No Live Matches"
         content.style.color='red'
         root.appendChild(content)
    }
}
req.send()
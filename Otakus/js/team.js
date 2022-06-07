const root=document.getElementById('contents')
//d913c8e6-1db7-4120-8264-aef954cb1655
var req=new XMLHttpRequest();
req.open("GET",'https://api.cricapi.com/v1/countries?apikey=d913c8e6-1db7-4120-8264-aef954cb1655&offset=0',true);/*Asynchronous, To be able to load multiple news data from the api at the same time*/
//req.open("GET",'http://localhost/proj/PA3/php/api.php',true);
req.onload=function(){
    if(req.readyState==4 && req.status==200){
        var dat=JSON.parse(req.response)
        dat.data.forEach(team =>{
            var content=document.createElement('div')
            content.setAttribute('class','content')
            var name=document.createElement('h4')
            var id=document.createElement('p')
            var flag=document.createElement('img')
            name.innerText=team.name
            id.innerText=team.id
            flag.src=team.genericFlag;
            flag.alt="Country Flag"
            flag.setAttribute('width','80px')
            flag.setAttribute('height','60px')
            content.appendChild(name)
            content.appendChild(flag)
            content.appendChild(id)
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
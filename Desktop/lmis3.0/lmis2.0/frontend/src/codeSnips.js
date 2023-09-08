const d3Chart = useRef();
  useEffect(()=>{
    fetch("https://data.cityofnewyork.us/resource/tg4x-b46p.json")
    .then(response =>response.json())
    .then(data => {
     // console.log(data)
      const permits = data.filter(e=>{
        return e.eventtype === "Shooting Permit"
        
      })
      // console.log(permits);
      const dates = [... new Set(permits.map(e=>e.enteredon.slice(0,10)))]
      //console.log(dates);

      let countsByDate = [];

      dates.map(t=>{
        let date = t
        let count = 0
        permits.map(e=>{
          let timeStamp = e.enteredon.slice(0,10)
          if(timeStamp === date){
            count++
          }

        })
        const counts = {date:date, count:count}
        countsByDate.push(counts)

        console.log(countsByDate);
        const margin = {top:50,right:30,bottom:30,top:30}
        const width = parseInt(d3.select('#charter').style('width'))
        const height = parseInt(d3.select('#charter').style('height'))
      })

    })


  })
React         = require('react')
{Map, Marker} = require('google-maps-react')

Contact = ->
  <div>
    <h1> <strong> Rezervace - 737 815 130 </strong></h1>
    <p> Restaurace Dobromysl<br/>
    1. máje 829/10<br/>
    779 00 Olomouc<br/> <br/>
    (Mezi zastávkami <br/>
    Nám. republiky a U Dómu<br/>
    naproti Domu armády)<br/> </p>

      <Map google={window.google}
        style={position: 'absolute'}
        className={'map'}
        initialCenter={{lat: 49.596505, lng: 17.258909}}
        zoom={20}>
        <Marker
          name={'Restaurace Dobromysl'}
          position={{lat: 49.596505, lng: 17.258909}} />
      </Map>
  </div>

module.exports = {Contact}

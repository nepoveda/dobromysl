React         = require('react')
{Map, Marker} = require('google-maps-react')

Contact = ->
  <div>
    <h1> <strong> Rezervace - 737 815 130 </strong></h1>
    <p> Restaurace Dobromysl<br/>
    1. máje 829/10<br/>
    779 00 Olomouc<br/> <br/>
    Email: <a href="mailto: dobromysl@araboth.cz"> dobromysl@araboth.cz</a></p>

    <p><strong> Provozovatel: </strong> <br/>
      Araboth s.r.o <br/>
      U stavu 195, <br/>
      783 14 Bohuňovice <br/>
      Ičo:052 866 38 <br/>
    </p>

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

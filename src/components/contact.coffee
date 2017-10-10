React         = require('react')
{Map, Marker} = require('google-maps-react')
{Row, Col, Grid } = require('react-bootstrap')

Contact = ->
  <div>
    <h1> <strong>Kontaktní informace:</strong> </h1> <br/>
          <p> <strong> Rezervace: </strong>  737 815 130 </p>

          <p><strong> Adresa: </strong> <br/> </p>
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

          <strong> Provozní doba: </strong><br/>
          <table className="openingHours" >
            <tr>
              <td> Pondělí </td>
              <td> 10 - 17 </td>
            </tr>
            <tr>
              <td> Úterý </td>
              <td> 10 - 17 </td>
            </tr>
            <tr>
              <td> Středa </td>
              <td> 10 - 21 </td>
            </tr>
            <tr>
              <td> Čtvrtek </td>
              <td> 10 - 21 </td>
            </tr>
            <tr>
              <td> Pátek </td>
              <td> 10 - 21 </td>
            </tr>
            <tr>
              <td> Sobota </td>
              <td> 11 - 17 </td>
            </tr>
          </table>

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

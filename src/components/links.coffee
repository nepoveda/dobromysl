React    = require('react')
{Thumbnail, Row, Col, Grid } = require('react-bootstrap')

Links = ->
  <div>
    <h1> Bez čeho bychom se neobešli: </h1>
    <Grid fluid={true}>
      <Row className="row-centered">
        <Col xs={6} md={3} className="col-centered">
          <Thumbnail target="_blank" src="assets/images/loga/dame-jidlo.png"  href="https://www.damejidlo.cz/restaurace-dobromysl#menu" />
        </Col>
        <Col xs={6} md={3} className="col-centered">
          <Thumbnail target="_blank" src="assets/images/loga/krusnohor.jpg" href="http://www.krusnohor.eu/"  />
        </Col>
        <Col xs={6} md={3} className="col-centered">
          <Thumbnail target="_blank" src="assets/images/loga/sirupy.png" href="http://www.batkovysirupy.cz/cz/" />
        </Col>
      </Row>
      <Row className="row-centered">
        <Col xs={6} md={3} className="col-centered">
          <Thumbnail target="_blank" src="assets/images/loga/sonnentor.jpg" href="http://www.sonnentor.cz/"  />
        </Col>
        <Col xs={6} md={3} className="col-centered">
          <Thumbnail target="_blank" src="assets/images/loga/absinth.jpg" href="http://www.bairnsfather.net/" />
        </Col>
      </Row>
    </Grid>
  </div>

module.exports = {Links}

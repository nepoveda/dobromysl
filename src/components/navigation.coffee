React    = require('react')
{Navbar, Nav, NavItem, NavDropdown, MenuItem} = require('react-bootstrap')

Navigation = (props) ->
  <Navbar fluid staticTop>
    <Navbar.Header>
    </Navbar.Header>

    <Nav bsStyle='tabs' justified>
      <NavItem eventKey={1} href="#" onClick={-> props.onSetScreen('o-nas')}>Kdo jsme</NavItem>
      <NavItem eventKey={2} href="#" onClick={-> props.onSetScreen('menu')}>Menu</NavItem>

      <NavDropdown eventKey={3} title="Fotky" id="galery">
        <MenuItem eventKey={3.1} onClick={-> props.onSetScreen('galerie-jidlo-a-piti')}>Jídlo a pití</MenuItem>
        <MenuItem eventKey={3.2} onClick={-> props.onSetScreen('galerie-prostory')}>Prostory</MenuItem>
      </NavDropdown>

      <NavItem eventKey={4} onClick={-> props.onSetScreen('rozvoz')}>Rozvoz</NavItem>
      <NavItem eventKey={5} onClick={-> props.onSetScreen('odkazy')}>Odkazy</NavItem>
      <NavItem eventKey={6} onClick={-> props.onSetScreen('kontakt')}>Kontakty/Rezervace</NavItem>
    </Nav>
  </Navbar>

module.exports = {Navigation}

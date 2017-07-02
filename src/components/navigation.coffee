React    = require('react')
{Navbar, Nav, NavItem, NavDropdown, MenuItem} = require('react-bootstrap')

Navigation = (props) ->
  <div>
      <Navbar fluid={true} staticTop={true}>
          <Nav bsStyle="tabs" justified >
            <NavItem onClick={-> props.onSetScreen('o-nas')}> Kdo jsme </NavItem>
            <MenuItem onClick={-> props.onSetScreen('menu')}> Menu </MenuItem>
            <NavDropdown title="Fotky" id="galery">
              <MenuItem onClick={-> props.onSetScreen('galerie-jidlo-a-piti')}> Jídlo a pití </MenuItem>
              <MenuItem onClick={-> props.onSetScreen('galerie-prostory')}> Prostory </MenuItem>
            </NavDropdown>
            <NavItem onClick={-> props.onSetScreen('rozvoz')}> Rozvoz </NavItem>
            <NavItem onClick={-> props.onSetScreen('odkazy')}> Odkazy </NavItem>
            <NavItem onClick={-> props.onSetScreen('kontakt')}> Kontakty/Rezervace </NavItem>
          </Nav>
      </Navbar>
  </div>

module.exports = {Navigation}

React    = require('react')
{Navbar, Nav, NavItem, NavDropdown, MenuItem} = require('react-bootstrap')
{AutoAffix} = require('react-overlays')

Navigation = (props) ->
  <div>
    <AutoAffix viewportOffsetTOp={5} >
      <Navbar fluid={true} staticTop={true}>
          <Nav bsStyle="tabs" justified >
            <NavItem onClick={-> props.onSetScreen('o-nas')}> Kdo jsme </NavItem>
            <NavDropdown title="Jídelní a nápojový lístek" id="menu">
              <MenuItem onClick={-> props.onSetScreen('menu')}> Jídelní lístek </MenuItem>
              <MenuItem onClick={-> props.onSetScreen('menu')}> Nápojový lístek </MenuItem>
              <MenuItem onClick={-> props.onSetScreen('denni-menu')}> Denní menu  </MenuItem>
            </NavDropdown>
            <NavDropdown title="Fotky" id="galery">
              <MenuItem onClick={-> props.onSetScreen('galerie-jidlo-a-piti')}> Jídlo a pití </MenuItem>
              <MenuItem onClick={-> props.onSetScreen('galerie-prostory')}> Prostory </MenuItem>
            </NavDropdown>
            <NavItem onClick={-> props.onSetScreen('rozvoz')}> Rozvoz </NavItem>
            <NavItem onClick={-> props.onSetScreen('odkazy')}> Odkazy </NavItem>
            <NavItem onClick={-> props.onSetScreen('kontakt')}> Kontakty/Rezervace </NavItem>
          </Nav>
      </Navbar>
    </AutoAffix>
  </div>

module.exports = {Navigation}

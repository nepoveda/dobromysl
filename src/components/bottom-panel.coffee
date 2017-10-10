React = require('react')
{Navbar, Image, Nav, NavItem} = require('react-bootstrap')

BottomPanel = ->
    <Navbar className="bottomPanel" >
      <Nav >
          <NavItem>
            <strong> Adresa: </strong><br/>
            1. máje 829/10<br/>
            779 00 Olomouc
          </NavItem>
          <NavItem>
            <strong> Rezervace:</strong> <br/>
            +420 737 815 130
          </NavItem>
          <NavItem>
            <strong> Email:</strong> <br/>
            <a href="mailto: dobromysl@araboth.cz"> dobromysl@araboth.cz</a>
          </NavItem>
          <NavItem>
            <strong> Provozní doba:</strong>
          </NavItem>
          <NavItem>
            Po -  Út: 10 - 17 <br/>
            St - Pá: 10 - 21 <br/>
            So    : 11 - 17 <br/>
          </NavItem>
      </Nav>
          <Nav pullRight>
            <NavItem target="_blank" href="https://www.facebook.com/restauracedobromysl/">
              <Image src="assets/images/fb-logo.png" />
            </NavItem>
          </Nav>
    </Navbar>

module.exports = {BottomPanel}

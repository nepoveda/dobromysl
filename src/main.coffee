React         = require('react')
ReactDOM      = require('react-dom')

createHistory = require('history').createBrowserHistory
history       = createHistory()
{Navigation}  = require('./components/navigation')
{Logo}        = require('./components/logo')
{Menu}        = require('./components/menu')
{Gallery}     = require('./components/gallery')
{AboutUs}     = require('./components/aboutUs')
{Contact}     = require('./components/contact')
{BottomPanel} = require('./components/bottom-panel')
{Links}       = require('./components/links')
Delivery      = require('./components/delivery')
imagesSpaces  = require('./components/images-spaces')
imagesFood    = require('./components/images-food')

class RootComponent extends React.Component

  constructor: ->
    { pathname } = window.location
    console.log(pathname)
    @state={shownScreen: pathname[1..] || 'o-nas'}
  setScreen: (id) =>
    @setState(shownScreen: id)
    location = window.location
    location.pathname = '/' + id
    history.push(location)
  render: ->
    mainComponent = switch @state.shownScreen
      when 'o-nas'
        <AboutUs />
      when 'kontakt'
        <Contact />
      when 'menu'
        <Menu />
      when 'galerie-prostory'
        <Gallery images={imagesSpaces} />
      when 'galerie-jidlo-a-piti'
        <Gallery images={imagesFood} />
      when 'odkazy'
        <Links />
      when 'rozvoz'
        <Delivery />
    <div className={@state.shownScreen + ' background'}>
      <div className="container mainContainer">
        <Logo />

        <Navigation onSetScreen={@setScreen} />

        <div className="pages">
          {mainComponent}
        </div>

        <BottomPanel class="align-sefl-end"/>
      </div>
    </div>


ReactDOM.render(
  <RootComponent />
  document.getElementById('app'))

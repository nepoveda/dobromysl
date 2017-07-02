React    = require('react')
{Image} = require('react-bootstrap')

Logo = (props) ->
  <div className="logo">
    <Image src="assets/images/logo.jpg"  responsive />
  </div>

module.exports = {Logo}

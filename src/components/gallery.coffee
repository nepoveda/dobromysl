React        = require('react')
ImageGallery = require('react-image-gallery').default

Gallery = (props) ->
  <div className="gallery">
      <ImageGallery items    = {props.images}
            showThumbnails = {false}
            showBullets = {true}
              showIndex    = {true} />
  </div>

module.exports = {Gallery}

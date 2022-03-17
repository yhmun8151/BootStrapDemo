var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
  return new bootstrap.Tooltip(tooltipTriggerEl)
})

const mapDiv = document.querySelector('#map')
const options = {
  center: new daum.maps.LatLng(37.529047899999995, 126.8293582),
  scrollwheel: false,
  level:3
}
const map = new daum.maps.Map(mapDiv, options)

const imageSrc = 'assets/images/bootstrap-logo.png'
const iamgeSize = new kakao.maps.Size(48, 48)
const marker = new daum.maps.Marker({
  image: new kakao.maps.MarkerImage(imageSrc, iamgeSize),
  position: new daum.maps.LatLng(37.529047899999995, 126.8293582),
})
marker.setMap(map)
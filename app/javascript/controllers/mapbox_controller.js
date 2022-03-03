import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }
  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })
    this.#addMarkersToMap() 
    this.#fitMapToMarkers()
    // this.#addControl()
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)
  
      // Create a HTML element for your custom marker
      const customMarker = document.createElement("div")
      customMarker.className = "marker"
      customMarker.style.backgroundImage = `url('${marker.image_url}')`
      customMarker.style.backgroundSize = "contain"
      customMarker.style.width = "25px"
      customMarker.style.height = "25px"
  
      // Pass the element as an argument to the new marker
      new mapboxgl.Marker(customMarker)
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(this.map)
    })
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

    #addControl() {
        this.map.addControl(
            new mapboxgl.GeolocateControl({
                positionOptions: {
                enableHighAccuracy: true
                },
                // When active the map will receive updates to the device's location as it changes.
                trackUserLocation: true,
                // Draw an arrow next to the location dot to indicate which direction the device is heading.
                showUserHeading: true
            })
        )
        const dir = new MapboxDirections({
            accessToken: mapboxgl.accessToken,
            steps: true
            });
            // dir.setOrigin([6.6153061,45.8595673]);
            // dir.addWaypoint(1, [6.6321427,45.8807043]);
            // dir.addWaypoint(2, [6.556997,45.8294793]);
            // dir.addWaypoint(3, [6.642024,45.8859678]);
            // dir.addWaypoint(4, [6.6238932,45.8958831]);
            // dir.addWaypoint(5, [6.6620289,45.8918849]);
            // dir.addWaypoint(6, [6.6247156,45.8591627]);
            // dir.addWaypoint(7, [6.6289278,45.8408326]);
            // dir.setDestination([6.6153061,45.8595673]);
            this.map.addControl(
                dir,
                    'top-left'
            );
    }
}
// 6.6362048, 45.8719517






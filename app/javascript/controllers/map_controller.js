import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="mapbox"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue;

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/dark-v10",
      center: [-1.553621, 47.218371],
      zoom: 12,
    });
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
    this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,mapboxgl: mapboxgl,placeholder: 'Rechercher un lieu'}));

    let existingLayers = this.map.getStyle().layers;
    existingLayers.forEach(function(layer) {
      console.log("testal");
      console.log(layer.id);
    });

    // DEBUT AJOUT CALQUE SYLMBOL LAYER
    this.map.addLayer({
      id: 'sportsselected',
      type: 'symbol',
      source: {
        type: 'geojson',
        data: 'data.geojson',
      },
      layout: {
        'icon-image': 'marker-15',
        'icon-allow-overlap': true,
      }
    });
    // FIN AJOUT CALQUE SYLMBOL LAYER

    // DEBUT FONCTION FILTRE
    let filterForm = document.getElementById('filter-form');

    filterForm.addEventListener('submit', (event) => {
      event.preventDefault();
      let selectedSport = document.getElementById('filter-sport').value;
      this.map.setFilter('points', ['==', 'sport', selectedSport]);
    });

    filter(event) {
      event.preventDefault();
      const selectedSport = document.getElementById('filter-sport').value;
      this.map.setFilter('points', ['==', 'sport', selectedSport]);
    };
    // FIN FONCTION FILTRE
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)

        const customMarker = document.createElement("div");
        customMarker.innerHTML = marker.marker_html;

        new mapboxgl.Marker(customMarker)
          .setLngLat([ marker.lng, marker.lat ])
          .setPopup(popup)
          .addTo(this.map)
      });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  }

}

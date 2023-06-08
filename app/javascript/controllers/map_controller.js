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
      // style: "mapbox://styles/pdunleav/cjofefl7u3j3e2sp0ylex3cyb",
      style: "mapbox://styles/mapbox/dark-v10",
    });
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
    this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,mapboxgl: mapboxgl,placeholder: 'Rechercher un lieu'}))

    let existingLayers = this.map.getStyle().layers;
    existingLayers.forEach(function(layer) {
      console.log(layer.id);
    });

    // DEBUT AJOUT CALQUE SYLMBOL LAYER
    map.addLayer({
      id: 'sportsselected',
      type: 'symbol',
      source: {
        type: 'geojson',
        data: 'data.geojson'
      },
      layout: {
        'icon-image': 'marker-15', // Nom de l'image d'icône utilisée pour les symboles
        'icon-allow-overlap': true // Autoriser le chevauchement des icônes
      }
    });
    // FIN AJOUT CALQUE SYLMBOL LAYER

    // DEBUT FONCTION FILTRE
    let filterForm = document.getElementById('filter-form');

    filterForm.addEventListener('submit', function(event) {
      event.preventDefault();

      // Récupérer les valeurs des champs de filtrage
      let selectedSport = document.getElementById('filter-sport').value;

      // Appliquer le filtre sur la carte en fonction des valeurs sélectionnées
      // Ici, vous pouvez utiliser les valeurs du formulaire pour filtrer les données de votre carte
      // et mettre à jour l'affichage des événements en conséquence.

      // Exemple : mettre à jour le filtre d'un calque existant avec Mapbox GL JS
      this.map.setFilter('points', ['==', 'sport', selectedsport]);
    });

    filter(event) {
      event.preventDefault();
      const selectedSport = document.getElementById('filter-sport').value;
      this.map.setFilter('points', ['==', 'sport', selectedSport]);
    }

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
      })
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

}

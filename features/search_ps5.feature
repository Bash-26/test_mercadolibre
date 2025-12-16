Feature: Buscar PlayStation 5 en MercadoLibre

  Scenario: Obtener los primeros 5 productos ordenados por precio
    Given ingreso al sitio de Mercado Libre
    And selecciono México como país
    When busco "PlayStation 5"
    And filtro por condición Nuevo
    And filtro por ubicación Local
    And ordeno por mayor precio
    Then obtengo los primeros 5 productos

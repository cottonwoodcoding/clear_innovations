class ProductsController < ApplicationController
  def index
  end


  def more_info
    product_type = params[:product_type]
    case product_type
    when "com_sun_control_window_films", "res_sun_control_window_films"
      about_data = [
          {
            film_type: 'Prestige Series',
            attributes: ["The Ultimate in high technology, utilizing strong, microlayered, tear-resistant Ultra Safety film with the added advantage of Prestige Series sun control films",
                         "Designed not to change the appearance of your building, allowing up to 70% of the visible light through your windows",
                         "Holds glass together in the event of a break-in or severe weather",
                         "Blocks heat and reduces hot spots by rejecting up to 97% of the sun's infrared rays"
            ]
          },
          {
            film_type: 'Ceramic Series',
            attributes: ["Nano-ceramic technology combines excellent heat rejection with amazing clarity",
                         "Allows up to 50% of the visible light through your windows",
                         "Moderately tinted, providing additional glare reduction with minimal change in appearance"

            ]
          },
          {
            film_type: 'Night Vision Series',
            attributes: ["Dual reflective technology provides daytime privacy while allowing easier viewing outside at night",
                         "Allows up to 35% of the visible light through your windows",
                         "Additional tint provides excellent heat rejection and offers the best glare reduction"
          ]

          },
          {
            film_type: 'Traditional Series',
            attributes: ["Reflective films that offer high heat reduction",
                         "Cost-effective"
          ]
          }
        ]
    when "res_safety&security_window_films", "com_safety&security_window_films"
      about_data = [
          {
            film_type: 'Ultra Prestige Series',
            attributes: ["The Ultimate in high technology, utilizing strong, microlayered, tear-resistant Ultra Safety film with the added advantage of Prestige Series sun control films",
                         "Designed not to change the appearance of your building, allowing up to 70% of the visible light through your windows",
                         "Holds glass together in the event of a break-in or severe weather",
                         "Blocks heat and reduces hot spots by rejecting up to 97% of the sun's infrared rays"
            ]
          },
          {
            film_type: 'Ultra Series',
            attributes: ["Ultra Technology utilizes micro-layered technology to provide the ultimate tear resistant safety film",
                         "Superior performance over standard polyester films in blast and impact events",
                         "Available in clear safety film or with a tinted sun control option"

            ]
          },
          {
            film_type: 'Safety Series',
            attributes: ["These 7 and 8 mil polyester films offer basic protection",
                         "Paired with a special thicker adhesive to help hold broken glass together",
                         "Available in clear safety film or with a tinted sun control option"
          ]

          },
          {
            film_type: '3M™ Privacy Series',
            attributes: ["Adds privacy to your office space, limiting views into offices or secure areas",
                         "Limits views into storage areas, back offices, or areas under construction",
                         "Provides additional aesthetic appeal with numerous design options"
          ]
          },
          {
            film_type: 'Anti Graffiti / Surface Protection Series',
            attributes: ["4 mil single layer clear film offers good basic protection",
                         "6 mil multi-layer clear film offers increased protection for higher risk areas",
                         "Offers an invisible sacrificial layer to protect glass from acid etchings, scratches and tagging",
                         "Can also protect other glass surfaces from wear and tear"]
          },
          {
            film_type: '3M™ Impact Protection Attachment Systems',
            attributes: ["Bonds the filmed window to the frame with either an adhesive or profile option",
                         "Attachment system offers the highest level of protection—strong enough to help protect occupants against bomb blasts",
                         "Creates a robust window protection system that significantly outperforms window film-only installations"]
          },
        ]
    when "com_daylight_redirecting_film"
      about_data = [
        {
          film_type: "Micro-replication Technology",
          attributes: ["New to the world 3M Daylight Redirecting Film, utilizes micro-replication to redirect light that would have originally hit the floor a few feet from the window, up onto the ceiling, helping to light the room as deep as 40 feet from the window. The technology 'micro-replication' refers to microscopic structures that are able to redirect as much as 80% of light up onto the ceiling, providing more natural light, which has been linked to increased productivity and purchasing behavior, and helping to reduce your dependence on electric lighting."]
        }
      ]
    when "res_fasara_decorative_window_films", "com_fasara_decorative_window_films"
      about_data = [
          {
            film_type: '3M™ Fasara™ Glass Finishes',
            attributes: ["Aesthetics: Our decorative glass and window films transform plain glass, capturing the look of cut or texturized glass to an astonishing degree at a fraction of the price.",
                         "Flexible: Fasara™ Glass Finishes allow you to tailor the amount of privacy a space possesses. Use Fasara glass finishes monolithically to create serene 'ricepaper wall' effects, or die-cut or layer the films to create exciting, dynamic effects.",
                         "Easy application: 3M expertise in adhesives ensures you of fast, accurate, beautiful and durable application to a variety of glass substrates.",
                         "Materials: Constructed from durable and flexible polyester materials."
            ]
          },
          {
            film_type: 'Perfectly Suited For',
            attributes: ["Conference rooms",
                          "Lobbies",
                          "Retail environments",
                          "Residential settings",
                          "Private offices",
                          "Exterior windows",
                          "Partitions",
                          "Verandas"
          ]
          }
        ]
    end

    respond_to do |format|
      format.js { render partial: 'more_info_data', locals: { about_data: about_data }}
    end
  end
end

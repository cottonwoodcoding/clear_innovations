module ProductsHelper
  def residential_cards
    [
      { title: '3M™ Sun Control Window Films',
        values:
        ['Energy savings: reduce cooling costs by up to 30%',
         'Fade reduction: block up to 99% of harmful UV rays to reduce fading of furnishings and carpet',
         'Sun control: improve comfort and maintain temperature consistency from one room to another'
        ]
      },
      { title: '3M™ Safety & Security Window Films',
        values:
        ['Crime prevention: impedes quick entry through windowpanes and glass doors',
         'Severe weather and accident protection: helps hold panes in place to minimize flying glass due to violent weather or accidents',
         'Available in clear safety film or with a tinted sun control option'
        ]
      },
      { title: '3M™ Fasara™ Decorative Window Films',
        values:
        ['Provides decorative solutions for shower doors, bathroom windows, kitchen cabinets and pantries',
         'Decorative flexibility: Choose from beautiful styles at a fraction of the cost of etched glass',
         'Privacy: Maintain your privacy without sacrificing natural light'
        ]
      }
    ]
  end

  def commercial_cards
    [
      {
        title: '3M™ Daylight Redirecting Film',
        values:
          [
            'Redirect natural light up to 40 feet deeper into your building, at a fraction of the cost of light shelves',
            'Reduce your dependence on artificial lighting, and provide more natural light which has been linked to increase productivity, purchase behavior and patient recovery time',
            'When combined with lighting controls, reduce your lighting energy usage by as much as 52% from your baseline'
          ]
       },
      {
        title: '3M™ Fasara™ Decorative Window Films',
        values:
          [
            'Design flexibility: Decorative window films are a fracti    on of the cost of etched glass, plus they are easily changed to meet tenant preferences',
            'Privacy: Stylish and textured films introduce privacy without sacrificing natural light'
          ]
       },
      {
        title: '3M™ Safety & Security Window Films',
        values:
          [
            'Crime prevention: impede the quick access that smash-and-grab thieves are looking for',
            'Bomb blast protection: hold broken panes in place to help prevent flying shards of glass',
            'Available in clear safety film or with a tinted sun control option',
            'Graffiti management: save money when you replace only the window film that was vandalized instead of the expensive glass beneath the film',
            'Enhance your security with enhanced privacy. Block views to confidential information, secure areas, or unsightly areas with the Privacy Series'
          ]
       },
      {
        title: '3M™ Sun Control Window Films',
        values:
          [
            'Worker comfort: reduce glare on computer screens and minimize solar hot spots',
            'Energy savings: save up to one ton of air conditioning for every 100 square feet of glass exposed to the sun'
          ]
       }
    ]
  end

end

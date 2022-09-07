module CountryModule

  def self.country_hash
    {
      "americas": {
        "hard":
            ["CYM", "GRL", "KNA", "GUY", "TCA", "LCA", "BMU", "HND", "MSR", "PRY", "SPM", "VGB", "MAF", "GRD", "AIA", "ATG", "FLK", "TTO", "GLP", "SUR", "MTQ", "VEN", "BRB", "BLM", "DMA", "GUF", "SXM", "VCT", "BES", "CUW"],
        "easy":
            ["PER", "UMI", "SLV", "PRI", "BRA", "BLZ", "USA", "HTI", "ABW", "URY", "PAN", "JAM", "ECU", "CAN", "BOL", "CRI", "CUB", "BHS", "CHL", "ARG", "DOM", "NIC", "MEX", "VIR", "COL", "GTM"]
        },
      "asia": {
        "hard":
            ["ARM", "AZE", "BHR", "BGD", "BTN", "BRN", "HKG", "JOR", "KAZ", "KWT", "KGZ", "LAO", "MDV", "MNG", "MMR", "OMN", "PSE", "QAT", "SAU", "LKA", "SYR", "TJK", "TLS", "TKM", "UZB", "YEM"],
        "easy":
            ["AFG", "KHM", "CHN", "GEO", "IND", "IDN", "IRN", "IRQ", "ISR", "JPN", "LBN", "MYS", "NPL", "PRK", "PAK", "PHL", "SGP", "KOR", "TWN", "THA", "TUR", "ARE", "VNM"]
        },
      "europe": {
        "hard":
            ["ALA", "ALB", "AND", "BLR", "BIH", "BGR", "HRV", "CYP", "EST", "FRO", "GIB", "GGY", "IMN", "JEY", "LVA", "LIE", "LTU", "LUX", "MKD", "MLT", "MDA", "MNE", "UNK", "ROU", "SMR", "SRB", "SVK", "SVN", "SJM"],
        "easy":
            ["AUT", "BEL", "CZE", "DNK", "FIN", "FRA", "DEU", "GRC", "VAT", "HUN", "ISL", "IRL", "ITA", "MCO", "NLD", "NOR", "POL", "PRT", "RUS", "ESP", "SWE", "CHE", "UKR", "GBR"]
        },
      "oceania": {
        "hard":
          ["ASM", "CXR", "CCK", "PYF", "GUM", "KIR", "NCL", "NIU", "NFK", "PLW", "PCN", "SLB", "TKL", "WLF", "NRU"],
        "easy":
          ["AUS", "COK", "FJI", "MHL", "FSM", "NRU", "NZL", "MNP", "PNG", "WSM", "TON", "TUV", "VUT", "GUM", "KIR"]
        },
      "africa": {
        "hard":
          ["DZA", "AGO", "BEN", "BWA", "IOT", "BFA", "BDI", "CMR", "CPV", "CAF", "COM", "GNQ", "ERI", "ATF", "GAB", "GMB", "GIN", "GNB", "CIV", "LSO", "LBR", "MDG", "MLI", "MRT", "MYT", "NAM",  "NER", "REU", "SHN", "STP", "SYC", "SDN", "SSD", "SWZ", "TGO", "ESH", "ZWE" ],
        "easy":
          ["TCD", "COG", "COD", "DJI", "EGY", "ETH", "GHA", "KEN", "LBY", "MWI", "MUS", "MAR", "MOZ", "NGA", "RWA", "SEN", "SLE", "SOM", "ZAF", "TZA", "TUN", "UGA", "ZMB"]
        }
    }
  end
end

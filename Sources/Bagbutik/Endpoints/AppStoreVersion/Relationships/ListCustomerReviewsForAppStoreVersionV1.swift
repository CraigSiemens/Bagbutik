public extension Request {
    /**
     # List All Customer Reviews for an App Store Version
     Get a list of customer reviews for a specific version of your app.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/list_all_customer_reviews_for_an_app_store_version>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter filters: Attributes, relationships, and IDs by which to filter
     - Parameter exists: Attributes, relationships, and IDs to check for existence
     - Parameter includes: Relationship data to include in the response
     - Parameter sorts: Attributes by which to sort
     - Parameter limit: Maximum resources per page - maximum 200
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func listCustomerReviewsForAppStoreVersionV1(id: String,
                                                        fields: [ListCustomerReviewsForAppStoreVersionV1.Field]? = nil,
                                                        filters: [ListCustomerReviewsForAppStoreVersionV1.Filter]? = nil,
                                                        exists: [ListCustomerReviewsForAppStoreVersionV1.Exist]? = nil,
                                                        includes: [ListCustomerReviewsForAppStoreVersionV1.Include]? = nil,
                                                        sorts: [ListCustomerReviewsForAppStoreVersionV1.Sort]? = nil,
                                                        limit: Int? = nil) -> Request<CustomerReviewsResponse, ErrorResponse>
    {
        .init(path: "/v1/appStoreVersions/\(id)/customerReviews", method: .get, parameters: .init(fields: fields,
                                                                                                  filters: filters,
                                                                                                  exists: exists,
                                                                                                  includes: includes,
                                                                                                  sorts: sorts,
                                                                                                  limit: limit))
    }
}

public enum ListCustomerReviewsForAppStoreVersionV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type customerReviewResponses
        case customerReviewResponses([CustomerReviewResponses])
        /// The fields to include for returned resources of type customerReviews
        case customerReviews([CustomerReviews])

        public enum CustomerReviewResponses: String, ParameterValue, CaseIterable {
            case lastModifiedDate
            case responseBody
            case review
            case state
        }

        public enum CustomerReviews: String, ParameterValue, CaseIterable {
            case body
            case createdDate
            case rating
            case response
            case reviewerNickname
            case territory
            case title
        }
    }

    /**
     Attributes, relationships, and IDs by which to filter.
     */
    public enum Filter: FilterParameter {
        /// Filter by attribute 'rating'
        case rating([String])
        /// Filter by attribute 'territory'
        case territory([Territory])

        public enum Territory: String, ParameterValue, CaseIterable {
            case abw = "ABW"
            case afg = "AFG"
            case ago = "AGO"
            case aia = "AIA"
            case alb = "ALB"
            case and = "AND"
            case ant = "ANT"
            case are = "ARE"
            case arg = "ARG"
            case arm = "ARM"
            case asm = "ASM"
            case atg = "ATG"
            case aus = "AUS"
            case aut = "AUT"
            case aze = "AZE"
            case bdi = "BDI"
            case bel = "BEL"
            case ben = "BEN"
            case bes = "BES"
            case bfa = "BFA"
            case bgd = "BGD"
            case bgr = "BGR"
            case bhr = "BHR"
            case bhs = "BHS"
            case bih = "BIH"
            case blr = "BLR"
            case blz = "BLZ"
            case bmu = "BMU"
            case bol = "BOL"
            case bra = "BRA"
            case brb = "BRB"
            case brn = "BRN"
            case btn = "BTN"
            case bwa = "BWA"
            case caf = "CAF"
            case can = "CAN"
            case che = "CHE"
            case chl = "CHL"
            case chn = "CHN"
            case civ = "CIV"
            case cmr = "CMR"
            case cod = "COD"
            case cog = "COG"
            case cok = "COK"
            case col = "COL"
            case com = "COM"
            case cpv = "CPV"
            case cri = "CRI"
            case cub = "CUB"
            case cuw = "CUW"
            case cxr = "CXR"
            case cym = "CYM"
            case cyp = "CYP"
            case cze = "CZE"
            case deu = "DEU"
            case dji = "DJI"
            case dma = "DMA"
            case dnk = "DNK"
            case dom = "DOM"
            case dza = "DZA"
            case ecu = "ECU"
            case egy = "EGY"
            case eri = "ERI"
            case esp = "ESP"
            case est = "EST"
            case eth = "ETH"
            case fin = "FIN"
            case fji = "FJI"
            case flk = "FLK"
            case fra = "FRA"
            case fro = "FRO"
            case fsm = "FSM"
            case gab = "GAB"
            case gbr = "GBR"
            case geo = "GEO"
            case ggy = "GGY"
            case gha = "GHA"
            case gib = "GIB"
            case gin = "GIN"
            case glp = "GLP"
            case gmb = "GMB"
            case gnb = "GNB"
            case gnq = "GNQ"
            case grc = "GRC"
            case grd = "GRD"
            case grl = "GRL"
            case gtm = "GTM"
            case guf = "GUF"
            case gum = "GUM"
            case guy = "GUY"
            case hkg = "HKG"
            case hnd = "HND"
            case hrv = "HRV"
            case hti = "HTI"
            case hun = "HUN"
            case idn = "IDN"
            case imn = "IMN"
            case ind = "IND"
            case irl = "IRL"
            case irq = "IRQ"
            case isl = "ISL"
            case isr = "ISR"
            case ita = "ITA"
            case jam = "JAM"
            case jey = "JEY"
            case jor = "JOR"
            case jpn = "JPN"
            case kaz = "KAZ"
            case ken = "KEN"
            case kgz = "KGZ"
            case khm = "KHM"
            case kir = "KIR"
            case kna = "KNA"
            case kor = "KOR"
            case kwt = "KWT"
            case lao = "LAO"
            case lbn = "LBN"
            case lbr = "LBR"
            case lby = "LBY"
            case lca = "LCA"
            case lie = "LIE"
            case lka = "LKA"
            case lso = "LSO"
            case ltu = "LTU"
            case lux = "LUX"
            case lva = "LVA"
            case mac = "MAC"
            case mar = "MAR"
            case mco = "MCO"
            case mda = "MDA"
            case mdg = "MDG"
            case mdv = "MDV"
            case mex = "MEX"
            case mhl = "MHL"
            case mkd = "MKD"
            case mli = "MLI"
            case mlt = "MLT"
            case mmr = "MMR"
            case mne = "MNE"
            case mng = "MNG"
            case mnp = "MNP"
            case moz = "MOZ"
            case mrt = "MRT"
            case msr = "MSR"
            case mtq = "MTQ"
            case mus = "MUS"
            case mwi = "MWI"
            case mys = "MYS"
            case myt = "MYT"
            case nam = "NAM"
            case ncl = "NCL"
            case ner = "NER"
            case nfk = "NFK"
            case nga = "NGA"
            case nic = "NIC"
            case niu = "NIU"
            case nld = "NLD"
            case nor = "NOR"
            case npl = "NPL"
            case nru = "NRU"
            case nzl = "NZL"
            case omn = "OMN"
            case pak = "PAK"
            case pan = "PAN"
            case per = "PER"
            case phl = "PHL"
            case plw = "PLW"
            case png = "PNG"
            case pol = "POL"
            case pri = "PRI"
            case prt = "PRT"
            case pry = "PRY"
            case pse = "PSE"
            case pyf = "PYF"
            case qat = "QAT"
            case reu = "REU"
            case rou = "ROU"
            case rus = "RUS"
            case rwa = "RWA"
            case sau = "SAU"
            case sen = "SEN"
            case sgp = "SGP"
            case shn = "SHN"
            case slb = "SLB"
            case sle = "SLE"
            case slv = "SLV"
            case smr = "SMR"
            case som = "SOM"
            case spm = "SPM"
            case srb = "SRB"
            case ssd = "SSD"
            case stp = "STP"
            case sur = "SUR"
            case svk = "SVK"
            case svn = "SVN"
            case swe = "SWE"
            case swz = "SWZ"
            case sxm = "SXM"
            case syc = "SYC"
            case tca = "TCA"
            case tcd = "TCD"
            case tgo = "TGO"
            case tha = "THA"
            case tjk = "TJK"
            case tkm = "TKM"
            case tls = "TLS"
            case ton = "TON"
            case tto = "TTO"
            case tun = "TUN"
            case tur = "TUR"
            case tuv = "TUV"
            case twn = "TWN"
            case tza = "TZA"
            case uga = "UGA"
            case ukr = "UKR"
            case umi = "UMI"
            case ury = "URY"
            case usa = "USA"
            case uzb = "UZB"
            case vat = "VAT"
            case vct = "VCT"
            case ven = "VEN"
            case vgb = "VGB"
            case vir = "VIR"
            case vnm = "VNM"
            case vut = "VUT"
            case wlf = "WLF"
            case wsm = "WSM"
            case yem = "YEM"
            case zaf = "ZAF"
            case zmb = "ZMB"
            case zwe = "ZWE"
        }
    }

    /**
     Attributes, relationships, and IDs to check for existence.
     */
    public enum Exist: ExistParameter {
        /// Filter by publishedResponse
        case publishedResponse(Bool)
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter {
        case response
    }

    /**
     Attributes by which to sort.
     */
    public enum Sort: String, SortParameter {
        case createdDateAscending = "createdDate"
        case createdDateDescending = "-createdDate"
        case ratingAscending = "rating"
        case ratingDescending = "-rating"
    }
}

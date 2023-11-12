import Bagbutik_Core
import Foundation

/**
 # AgeRatingDeclaration
 The data structure that represents an Age Rating Declarations resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/ageratingdeclaration>
 */
public struct AgeRatingDeclaration: Identifiable {
    /// The opaque resource ID that uniquely identifies the resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "ageRatingDeclarations" }
    /// Attributes that describe this Age Rating Declarations resource.
    public var attributes: Attributes?

    public init(id: String,
                links: ResourceLinks? = nil,
                attributes: Attributes? = nil)
    {
        self.id = id
        self.links = links
        self.attributes = attributes
    }

    /**
     # AgeRatingDeclaration.Attributes
     Attributes that describe an Age Rating Declarations resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/ageratingdeclaration/attributes>
     */
    public struct Attributes {
        /// Declaration for alcohol, tobacco, or drug use.
        public var alcoholTobaccoOrDrugUseOrReferences: AlcoholTobaccoOrDrugUseOrReferences?
        /// Declaration for contests.
        public var contests: Contests?
        /// Declaration for gambling, provided as a Boolean value.
        public var gambling: Bool?
        /// Declaration for gambling or contests, as a Boolean value.
        @available(*, deprecated, message: "Apple has marked this property deprecated and it will be removed sometime in the future.")
        public var gamblingAndContests: Bool? = nil
        /// Declaration for simulated gambling.
        public var gamblingSimulated: GamblingSimulated?
        /// Declaration for horror or fear themed content.
        public var horrorOrFearThemes: HorrorOrFearThemes?
        /// Declaration for the Kids Age Band value.
        public var kidsAgeBand: KidsAgeBand?
        /// Declaration for mature or suggestive themes.
        public var matureOrSuggestiveThemes: MatureOrSuggestiveThemes?
        /// Declaration for medical or treatment-focused content.
        public var medicalOrTreatmentInformation: MedicalOrTreatmentInformation?
        /// Declaration for profanity or crude humor.
        public var profanityOrCrudeHumor: ProfanityOrCrudeHumor?
        /// Declaration for a 17+ rating, provided as a Boolean value.
        public var seventeenPlus: Bool?
        /// Declaration for graphic sexual content and nudity.
        public var sexualContentGraphicAndNudity: SexualContentGraphicAndNudity?
        /// Declaration for sexual content or nudity.
        public var sexualContentOrNudity: SexualContentOrNudity?
        /// Declaration for unrestricted web access, such as with an embedded browser, provided as a Boolean value.
        public var unrestrictedWebAccess: Bool?
        /// Declaration for cartoon or fantasy violence.
        public var violenceCartoonOrFantasy: ViolenceCartoonOrFantasy?
        /// Declaration for realistic violence.
        public var violenceRealistic: ViolenceRealistic?
        /// Declaration for prolonged realistic or sadistic violence.
        public var violenceRealisticProlongedGraphicOrSadistic: ViolenceRealisticProlongedGraphicOrSadistic?

        @available(*, deprecated, message: "This uses a property Apple has marked as deprecated.")
        public init(alcoholTobaccoOrDrugUseOrReferences: AlcoholTobaccoOrDrugUseOrReferences? = nil,
                    contests: Contests? = nil,
                    gambling: Bool? = nil,
                    gamblingAndContests: Bool? = nil,
                    gamblingSimulated: GamblingSimulated? = nil,
                    horrorOrFearThemes: HorrorOrFearThemes? = nil,
                    kidsAgeBand: KidsAgeBand? = nil,
                    matureOrSuggestiveThemes: MatureOrSuggestiveThemes? = nil,
                    medicalOrTreatmentInformation: MedicalOrTreatmentInformation? = nil,
                    profanityOrCrudeHumor: ProfanityOrCrudeHumor? = nil,
                    seventeenPlus: Bool? = nil,
                    sexualContentGraphicAndNudity: SexualContentGraphicAndNudity? = nil,
                    sexualContentOrNudity: SexualContentOrNudity? = nil,
                    unrestrictedWebAccess: Bool? = nil,
                    violenceCartoonOrFantasy: ViolenceCartoonOrFantasy? = nil,
                    violenceRealistic: ViolenceRealistic? = nil,
                    violenceRealisticProlongedGraphicOrSadistic: ViolenceRealisticProlongedGraphicOrSadistic? = nil)
        {
            self.alcoholTobaccoOrDrugUseOrReferences = alcoholTobaccoOrDrugUseOrReferences
            self.contests = contests
            self.gambling = gambling
            self.gamblingAndContests = gamblingAndContests
            self.gamblingSimulated = gamblingSimulated
            self.horrorOrFearThemes = horrorOrFearThemes
            self.kidsAgeBand = kidsAgeBand
            self.matureOrSuggestiveThemes = matureOrSuggestiveThemes
            self.medicalOrTreatmentInformation = medicalOrTreatmentInformation
            self.profanityOrCrudeHumor = profanityOrCrudeHumor
            self.seventeenPlus = seventeenPlus
            self.sexualContentGraphicAndNudity = sexualContentGraphicAndNudity
            self.sexualContentOrNudity = sexualContentOrNudity
            self.unrestrictedWebAccess = unrestrictedWebAccess
            self.violenceCartoonOrFantasy = violenceCartoonOrFantasy
            self.violenceRealistic = violenceRealistic
            self.violenceRealisticProlongedGraphicOrSadistic = violenceRealisticProlongedGraphicOrSadistic
        }

        public init(alcoholTobaccoOrDrugUseOrReferences: AlcoholTobaccoOrDrugUseOrReferences? = nil,
                    contests: Contests? = nil,
                    gambling: Bool? = nil,
                    gamblingSimulated: GamblingSimulated? = nil,
                    horrorOrFearThemes: HorrorOrFearThemes? = nil,
                    kidsAgeBand: KidsAgeBand? = nil,
                    matureOrSuggestiveThemes: MatureOrSuggestiveThemes? = nil,
                    medicalOrTreatmentInformation: MedicalOrTreatmentInformation? = nil,
                    profanityOrCrudeHumor: ProfanityOrCrudeHumor? = nil,
                    seventeenPlus: Bool? = nil,
                    sexualContentGraphicAndNudity: SexualContentGraphicAndNudity? = nil,
                    sexualContentOrNudity: SexualContentOrNudity? = nil,
                    unrestrictedWebAccess: Bool? = nil,
                    violenceCartoonOrFantasy: ViolenceCartoonOrFantasy? = nil,
                    violenceRealistic: ViolenceRealistic? = nil,
                    violenceRealisticProlongedGraphicOrSadistic: ViolenceRealisticProlongedGraphicOrSadistic? = nil)
        {
            self.alcoholTobaccoOrDrugUseOrReferences = alcoholTobaccoOrDrugUseOrReferences
            self.contests = contests
            self.gambling = gambling
            self.gamblingSimulated = gamblingSimulated
            self.horrorOrFearThemes = horrorOrFearThemes
            self.kidsAgeBand = kidsAgeBand
            self.matureOrSuggestiveThemes = matureOrSuggestiveThemes
            self.medicalOrTreatmentInformation = medicalOrTreatmentInformation
            self.profanityOrCrudeHumor = profanityOrCrudeHumor
            self.seventeenPlus = seventeenPlus
            self.sexualContentGraphicAndNudity = sexualContentGraphicAndNudity
            self.sexualContentOrNudity = sexualContentOrNudity
            self.unrestrictedWebAccess = unrestrictedWebAccess
            self.violenceCartoonOrFantasy = violenceCartoonOrFantasy
            self.violenceRealistic = violenceRealistic
            self.violenceRealisticProlongedGraphicOrSadistic = violenceRealisticProlongedGraphicOrSadistic
        }

        public enum AlcoholTobaccoOrDrugUseOrReferences: String {
            case none = "NONE"
            case infrequentOrMild = "INFREQUENT_OR_MILD"
            case frequentOrIntense = "FREQUENT_OR_INTENSE"
        }

        public enum Contests: String {
            case none = "NONE"
            case infrequentOrMild = "INFREQUENT_OR_MILD"
            case frequentOrIntense = "FREQUENT_OR_INTENSE"
        }

        public enum GamblingSimulated: String {
            case none = "NONE"
            case infrequentOrMild = "INFREQUENT_OR_MILD"
            case frequentOrIntense = "FREQUENT_OR_INTENSE"
        }

        public enum HorrorOrFearThemes: String {
            case none = "NONE"
            case infrequentOrMild = "INFREQUENT_OR_MILD"
            case frequentOrIntense = "FREQUENT_OR_INTENSE"
        }

        public enum MatureOrSuggestiveThemes: String {
            case none = "NONE"
            case infrequentOrMild = "INFREQUENT_OR_MILD"
            case frequentOrIntense = "FREQUENT_OR_INTENSE"
        }

        public enum MedicalOrTreatmentInformation: String {
            case none = "NONE"
            case infrequentOrMild = "INFREQUENT_OR_MILD"
            case frequentOrIntense = "FREQUENT_OR_INTENSE"
        }

        public enum ProfanityOrCrudeHumor: String {
            case none = "NONE"
            case infrequentOrMild = "INFREQUENT_OR_MILD"
            case frequentOrIntense = "FREQUENT_OR_INTENSE"
        }

        public enum SexualContentGraphicAndNudity: String {
            case none = "NONE"
            case infrequentOrMild = "INFREQUENT_OR_MILD"
            case frequentOrIntense = "FREQUENT_OR_INTENSE"
        }

        public enum SexualContentOrNudity: String {
            case none = "NONE"
            case infrequentOrMild = "INFREQUENT_OR_MILD"
            case frequentOrIntense = "FREQUENT_OR_INTENSE"
        }

        public enum ViolenceCartoonOrFantasy: String {
            case none = "NONE"
            case infrequentOrMild = "INFREQUENT_OR_MILD"
            case frequentOrIntense = "FREQUENT_OR_INTENSE"
        }

        public enum ViolenceRealistic: String {
            case none = "NONE"
            case infrequentOrMild = "INFREQUENT_OR_MILD"
            case frequentOrIntense = "FREQUENT_OR_INTENSE"
        }

        public enum ViolenceRealisticProlongedGraphicOrSadistic: String {
            case none = "NONE"
            case infrequentOrMild = "INFREQUENT_OR_MILD"
            case frequentOrIntense = "FREQUENT_OR_INTENSE"
        }
    }
}

import Foundation

// Milestone Model
final class Milestone {
    let milestoneCategory:Tag
    let milestoneMonth:Int
    let milestoneDescription:String
    let milestoneVideoLink:URL
    let milestoneEvents:[String]
    var milestoneResources:[Resource]
    
    init(milestoneCategory: Tag, milestoneMonth:Int, milestoneDescription:String, milestoneVideoLink:URL, milestoneEvents:[String], milestoneResources:[Resource]) {
        self.milestoneCategory = milestoneCategory
        self.milestoneMonth = milestoneMonth
        self.milestoneDescription = milestoneDescription
        self.milestoneVideoLink = milestoneVideoLink
        self.milestoneEvents = milestoneEvents
        self.milestoneResources = milestoneResources
    }
    
}

enum MilestoneCategory:String {
    case sleep = "Sleep"
    case language = "Language"
    case physical = "Physical"
    case cognitive = "Cognitive"
    case social = "Social"
    case activity = "Activity"
}

// Resource Model
final class Resource: Identifiable {

    let resourceID:UUID = UUID()
    let resourceType:ResourceType
    let resourceTags:[Tag]
    var resourceMonths:[Int]
    let resourceTitle:String
    let resourceAuthor:String
    let resourcePopular:Bool
    let resourcePreviewImage:String
    let resourcePublishDate:Date
    let articleImage:String?
    let articleBody:String?
    
    
    init(resourceID:UUID, resourceType:ResourceType, resourceTags:[Tag], resourceMonths:[Int], resourceTitle:String, resourcePopular:Bool, resourceAuthor:String, resourcePreviewImage:String, resourcePublishDate:Date, articleImage:String, articleBody:String) {
        
            self.resourceType               = resourceType
            self.resourceTags               = resourceTags
            self.resourceMonths             = resourceMonths
            self.resourceTitle              = resourceTitle
            self.resourceAuthor             = resourceAuthor
            self.resourcePopular            = resourcePopular
            self.resourcePreviewImage       = resourcePreviewImage
            self.resourcePublishDate        = resourcePublishDate
            self.articleImage               = articleImage
            self.articleBody                = articleBody
        
    }
    
    
}

enum ResourceType:String {
    case article = "Article"
    case video = "Video"
}

enum Tag:String, CaseIterable {
    case sleep = "Sleep"
    case physical = "Physical"
    case language = "Language"
    case cognitive = "Cognitive"
    case social = "Social"
    case activity = "Activity"
    case month1 = "Month 1"
    case month2 = "Month 2"
    case month3 = "Month 3"
    case month4 = "Month 4"
    case month5 = "Month 5"
    case month6 = "Month 6"
    case month7 = "Month 7"
    case month8 = "Month 8"
    case month9 = "Month 9"
    case month10 = "Month 10"
    case month11 = "Month 11"
    case month12 = "Month 12"
    case month13 = "Month 13"
    case month14 = "Month 14"
    case month15 = "Month 15"
    case month16 = "Month 16"
    case month17 = "Month 17"
    case month18 = "Month 18"
    case month19 = "Month 19"
    case month20 = "Month 20"
    case month21 = "Month 21"
    case month22 = "Month 22"
    case month23 = "Month 23"
    case month24 = "Month 24"
    case month25 = "Month 25"
    case month26 = "Month 26"
    case month27 = "Month 27"
    case month28 = "Month 28"
    case month29 = "Month 29"
    case month30 = "Month 30"
    case month31 = "Month 31"
    case month32 = "Month 32"
    case month33 = "Month 33"
    case month34 = "Month 34"
    case month35 = "Month 35"
    case month36 = "Month 36"
    case article = "Article"
    case video = "Video"
}

// Dummy data
var DummyMilestones:[Milestone] = [
        Milestone(
            milestoneCategory: .sleep,
            milestoneMonth: 1,
            milestoneDescription: "This is the very first monthly sleep milestone. Each month has a list of possible/expected events & a list of handy resources.",
            milestoneVideoLink: URL(string: "https://www.restfullysleep.com/Campaigns/Introduction_Newborn_Sleep.mp4")!,
            milestoneEvents: ["Can handle 45 - 60 mins awake","Sleeps 14 - 17 hours in a 24-hour period","Wakes every 2-3 hours to eat","Short naps are common","Two stages of sleep - active and quiet","May need contact naps","May experience day/night confusion","Will benefit from a short bedtime routine","Best follow sleepy cues"],
            milestoneResources: []
        ),
        Milestone(
            milestoneCategory: .physical,
            milestoneMonth: 1,
            milestoneDescription: "This is the very first monthly physical milestone. Each month has a list of possible/expected events & a list of handy resources.",
            milestoneVideoLink: URL(string: "https://www.restfullysleep.com/Campaigns/Understanding_Newborn_Sleep.mp4")!,
            milestoneEvents: ["Holds head up when on tummy",
                             "Moves both arms & legs"],
            milestoneResources: []
        ),
        Milestone(
            milestoneCategory: .activity,
            milestoneMonth: 1,
            milestoneDescription: "This is the very first monthly activity milestone. Each month has a list of possible/expected events & a list of handy resources.",
            milestoneVideoLink: URL(string: "https://www.restfullysleep.com/Campaigns/Understanding_Newborn_Sleep.mp4")!,
            milestoneEvents: ["Follow moving lights with their eyes",
                              "Watches moving objects within one foot",
                              "Prefers looking at parents’ faces to anything else",
                              "Two stages of sleep - active and quiet",
                              "Startles at loud noises"],
            milestoneResources: []
        )
    ]

let DummyResources:[Resource] = [
        Resource(resourceID: UUID(), resourceType: .article,
                 resourceTags: [.article, .sleep, .month1, .month2, .month3],
                 resourceMonths: [1,2,3],
                 resourceTitle: "Newborn Sleep Stages", resourcePopular: true, resourceAuthor: "Arielle Greenleaf", resourcePreviewImage: "videoImage1", resourcePublishDate: Date(),
                 articleImage:  "videoImage1", articleBody: "Unlike older infants (and even adults!), newborns only have two sleep stages — active and quiet. \n Newborns only have two stages of sleep – active and quiet. They spend 50% of their sleep cycle in active and 50%  in quiet sleep. When a newborn is in active sleep you may mistake them for being awake! That’s right, they may kick, squirm, flutter her eyes, or even cry out softly during active sleep. Your newborn will start their sleep cycle in active sleep before moving to more obvious quiet sleep. Once that cycle is complete, they will enter a transitional state and appear drowsy and slightly awake. Try to give your baby some space to see if they are actually awake or if they are simply in active sleep or transitioning between stages!"),
         Resource(resourceID: UUID(), resourceType: .article,
                 resourceTags: [.article, .sleep, .month1, .month2, .month3],
                 resourceMonths: [1,2,3],
                 resourceTitle: "The Witching Hour", resourcePopular: true, resourceAuthor: "Arielle Greenleaf", resourcePreviewImage: "videoImage1", resourcePublishDate: Date(),
                 articleImage:  "videoImage1", articleBody: "Researchers and pediatricians do not know precisely what causes the witching hour. First, it’s important to note that the “witching hour” often lasts more than one hour and can last upwards of four hours. The witching hour is a period of time at the end of the day during which your newborn cries and often seems inconsolable. This phase may begin as early as 2-3 weeks postpartum but rectifies around the 6-8 week mark. Cluster feeding, an earlier bedtime, and baby wearing are all great ways to alleviate (survive!) this phase."),
        Resource(resourceID: UUID(), resourceType: .article,
                 resourceTags: [.article, .physical, .month1, .month2, .month3, .month4],
                 resourceMonths: [1,2,3,4],
                 resourceTitle: "The Moro Reflex", resourcePopular: true, resourceAuthor: "Arielle Greenleaf", resourcePreviewImage: "videoImage1", resourcePublishDate: Date(),
                 articleImage:  "videoImage1", articleBody: "Have you noticed your newborn startling by a loud sound or movement? This is normal! It’s called the moro reflex. The moro reflex may cause your newborn to flinch, flail their arms or legs erratically, throw their head back, or cry when suddenly. The moro reflex may appear to disrupt your newborn’s sleep as well. Swaddling can help with this, but be sure to stop swaddling when your baby shows any signs of rolling."),
        Resource(resourceID: UUID(), resourceType: .article,
                 resourceTags: [.article, .activity, .month1, .month2, .month3, .month4, .month5, .month6, .month7, .month8, .month9, .month10, .month11, .month12, .month13, .month14, .month15, .month16, .month17, .month18, .month19, .month20, .month21, .month22, .month23, .month24, .month25, .month26, .month27, .month28, .month29, .month30, .month31, .month32, .month33, .month34, .month35, .month36],
                 resourceMonths: [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36],
                 resourceTitle: "Reading", resourcePopular: true, resourceAuthor: "Arielle Greenleaf", resourcePreviewImage: "videoImage1", resourcePublishDate: Date(),
                 articleImage:  "videoImage1", articleBody: "It’s never too early to read to your child. In fact, reading helps with language development even in those early months. Reading can also serve as a calming activity for you and your child and a great way to help them understand simple concepts as they get older (including why they should stay in their beds!). \n 0-12 Months \n During the first few months, your baby will enjoy board books, soft fabric books, and vinyl books that can be used in the bath. Even playing with or chewing on books is a useful way to get babies interested in books. During the second half of the first year, babies will enjoy bright, colorful books and books that offer opportunities to touch different textures. \n 12-24 Months \n At this stage, children may have favorite books that offer them a sense of comfort. Books with pictures of everyday objects, animals, or colors are helpful to their development. Asking your child to point out these everyday objects “point to the dog” is a pre-reading skill! \n 24-36 Months \n Children may enjoy books with more interesting storylines at this age, as well as books that explain how things work. You can start to engage your child more and ask them simple questions about the book.")
    ]

// Function for setting up the dummy data model
// Go through DummyResources & add a Resource object to the milestoneResources array if the resourceMonths array contains the milestoneMonth and the resourceTags array contains the milestoneCategory
func setupDummyData() {
    for resource in DummyResources {
        for milestone in DummyMilestones {
            if resource.resourceMonths.contains(milestone.milestoneMonth) && resource.resourceTags.contains(milestone.milestoneCategory) {
                milestone.milestoneResources.append(resource)
            }
        }
    }
}
setupDummyData()
print(DummyMilestones[0].milestoneResources.count)
print(DummyMilestones[1].milestoneResources.count)
print(DummyMilestones[2].milestoneResources.count)

// for milestone in DummyMilestones {
//     print(milestone.milestoneCategory)
//     print(milestone.milestoneMonth)
//     print(milestone.milestoneDescription)
//     print(milestone.milestoneVideoLink)
//     print(milestone.milestoneEvents)
//     for resource in milestone.milestoneResources {
//         print(resource.resourceTitle)
//         print(resource.resourceAuthor)
//         print(resource.resourcePreviewImage)
//         print(resource.resourcePublishDate)
//         print(resource.resourceTags)
//     }
// }

var AllResource:[Resource] = [Resource]()

for milestone in DummyMilestones {
    for resource in milestone.milestoneResources {
        AllResource.append(resource)
    }
}

// Filter Resources By Multiple Tags
// Function that uses the filter method to find a resource that contains every tag passed in an array of tags
func filterResourcesByTags(tags:[Tag]) -> [Resource] {
    return AllResource.filter { resource in
        for tag in tags {
            if !resource.resourceTags.contains(tag) { return false }
        }
        return true
    }
}


//let filteredResources = filterResourcesByTags(tags: [.test,.activity])
//print(filteredResources.count)

// Return A Milestone By Month (Int) & Category (MilestoneCategory enum)
// func getMilestoneByMonth(month:Int, category:MilestoneCategory) -> Milestone? {
//     for milestone in DummyMilestones {
//         if milestone.milestoneMonth == month && milestone.milestoneCategory == category.rawValue {
//             return milestone
//         }
//     }
//     return nil
// }

var newFilterTags:[Tag] = [Tag]()

// Filter newFilterTags by removing all Tags that do not contain the string "Month" within it's rawValue
let onlyMonthTags = newFilterTags.filter { tag in
    return !tag.rawValue.contains("Month") || !tag.rawValue.contains("Article") || !tag.rawValue.contains("Video")
}

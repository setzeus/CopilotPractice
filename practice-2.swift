import Foundation

// Milestone Model
final class Milestone {
    let milestoneCategory:String
    let milestoneMonth:Int
    let milestoneDescription:String
    let milestoneVideoLink:URL
    let milestoneEvents:[String]
    let milestoneResources:[Resource]
    
    init(milestoneCategory: String, milestoneMonth:Int, milestoneDescription:String, milestoneVideoLink:URL, milestoneEvents:[String], milestoneResources:[Resource]) {
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
    case health = "Health"
    case psychology = "Psychology"
    case development = "Development"
    case parenthood = "Parenthood"
    case funnyThings = "Funny Things"
    case entertainments = "Entertainment"
}

// Resource Model
final class Resource: Identifiable {

    let resourceID:UUID = UUID()
    let resourceType:ResourceType
    let resourceTags:[Tag]
    let resourceTitle:String
    let resourceAuthor:String
    let resourcePopular:Bool
    let resourcePreviewImage:String
    let resourcePublishDate:Date
    let articleImage:String?
    let articleBody:String?
    
    
    init(resourceID:UUID, resourceType:ResourceType, resourceTags:[Tag], resourceTitle:String, resourcePopular:Bool, resourceAuthor:String, resourcePreviewImage:String, resourcePublishDate:Date, articleImage:String, articleBody:String) {
        
            self.resourceType               = resourceType
            self.resourceTags               = resourceTags
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

enum Tag:String {
    case article = "Article"
    case video = "Video"
    case sleep = "Sleep"
    case health = "Health"
    case psychology = "Psychology"
    case development = "Development"
    case parenthood = "Parenthood"
    case funnyThings = "Funny Things"
    case entertainments = "Entertainment"
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
    case activity = "Activity"
    case test = "Test"
}

// Dummy data
let DummyMilestones:[Milestone] = [
    Milestone(
        milestoneCategory: "Sleep",
        milestoneMonth: 1,
        milestoneDescription: "This is the very first monthly sleep milestone. Each month has a list of possible/expected events & a list of handy resources.",
        milestoneVideoLink: URL(string: "https://www.restfullysleep.com/Campaigns/Introduction_Newborn_Sleep.mp4")!,
        milestoneEvents: ["Can handle 45 - 60 mins awake","Sleeps 14 - 17 hours in a 24-hour period","Wakes every 2-3 hours to eat","Short naps are common","Two stages of sleep - active and quiet","May need contact naps","May experience day/night confusion","Will benefit from a short bedtime routine","Best follow sleepy cues"],
        milestoneResources: [
            Resource(resourceID: UUID(), resourceType: .article, resourceTags: [Tag.test, Tag.month1], resourceTitle: "The Earliest Days Of Physical Health", resourcePopular: true, resourceAuthor: "Arielle Greenleaf", resourcePreviewImage: "videoImage2", resourcePublishDate: Date(), articleImage: "videoImage2", articleBody: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. /n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
            Resource(resourceID: UUID(), resourceType: .video, resourceTags: [Tag.activity, Tag.test], resourceTitle: "How To Fix...", resourcePopular: true, resourceAuthor: "Arielle Greenleaf", resourcePreviewImage: "videoImage4", resourcePublishDate: Date(), articleImage: "videoImage4", articleBody: ""),
            Resource(resourceID: UUID(), resourceType: .video, resourceTags: [Tag.activity, Tag.test], resourceTitle: "Test Title 0", resourcePopular: false, resourceAuthor: "Arielle Greenleaf", resourcePreviewImage: "videoImage4", resourcePublishDate: Date(), articleImage: "videoImage4", articleBody: "")
        ]
    ),
    Milestone(
        milestoneCategory: "Health",
        milestoneMonth: 2,
        milestoneDescription: "This is the very first monthly sleep milestone. Each month has a list of possible/expected events & a list of handy resources.",
        milestoneVideoLink: URL(string: "https://www.restfullysleep.com/Campaigns/Understanding_Newborn_Sleep.mp4")!,
        milestoneEvents: ["Follow moving lights with their eyes",
                            "Watches moving objects within one foot",
                            "Prefers looking at parents’ faces to anything else",
                            "Two stages of sleep - active and quiet",
                            "Startles at loud noises"],
        milestoneResources: [
            Resource(resourceID: UUID(), resourceType: .article, resourceTags: [Tag.test], resourceTitle: "These are the 50 best options to take a nap in the world", resourcePopular: true, resourceAuthor: "Arielle Greenleaf", resourcePreviewImage: "videoImage1", resourcePublishDate: Date(), articleImage: "videoImage1", articleBody: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. /n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
        ]
    )
]

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


let filteredResources = filterResourcesByTags(tags: [.test,.activity])
print(filteredResources.count)

// Return A Milestone By Month (Int) & Category (MilestoneCategory enum)
func getMilestoneByMonth(month:Int, category:MilestoneCategory) -> Milestone? {
    for milestone in DummyMilestones {
        if milestone.milestoneMonth == month && milestone.milestoneCategory == category.rawValue {
            return milestone
        }
    }
    return nil
}
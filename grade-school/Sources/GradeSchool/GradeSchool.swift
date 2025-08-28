
class GradeSchool {
  // Write your code for the 'GradeSchool' exercise in this file.
    private var students: [Int: Set<String>] = [:]
    
    
    func roster () -> [String] {
        var result: [String] = []
        
        for grade in students.keys.sorted() {
            if let studentsInGrade = students[grade] {
               // 按姓名排序
               result.append(contentsOf: studentsInGrade.sorted())
           }
        }
        return result
    }
    
    @discardableResult
    func addStudent (_ name:String, grade: Int) -> Bool {
        for (_, studentSet) in students {
            if studentSet.contains(name) {
                return false
            }
        }
        
        if students[grade] == nil {
            students[grade] = Set<String>()
        }
        
        students[grade]?.insert(name)
        return true
    }
    
    func studentsInGrade (_ grade: Int) -> [String] {
        guard let studentsSet = students[grade] else {
            return []
        }
        
        return studentsSet.sorted()
    }
}


//        let StudentSet = students[grade]
//        guard StudentSet == nil else {
//            return []
//        }
//        return StudentSet?.sorted() ?? []

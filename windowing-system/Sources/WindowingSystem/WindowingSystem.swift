// TODO: Define the Size struct
struct Size {
    var width: Int = 80
    var height: Int = 60

    mutating func resize(newWidth: Int, newHeight: Int) {
        self.width = newWidth
        self.height = newHeight
    }
}

// TODO: Define the Position struct
struct Position{
    var x: Int = 0
    var y: Int = 0
    
    mutating func moveTo(newX: Int, newY: Int) {
        self.x = newX
        self.y = newY
    }
}

// TODO: Define the Window class
class Window {
    var title: String = "New Window"
    let screenSize: Size = Size(width: 800, height: 600)
    var size: Size = Size()
    var position: Position = Position()
    var contents: String? = nil
    
    init() {
        // 空初始化器
    }
    
    init(title: String, contents: String?, size: Size = Size(), position: Position = Position()) {
        self.title = title
        self.contents = contents
        self.size = size
        self.position = position
    }
    
    func resize(to size: Size) {
        // 確保最小尺寸為 1
        var newWidth = max(1, size.width)
        var newHeight = max(1, size.height)
        
        // 計算最大允許的寬度和高度
        // 視窗不能超出螢幕邊界
        let maxWidth = screenSize.width - position.x
        let maxHeight = screenSize.height - position.y
        
        // 限制尺寸不超過螢幕邊界
        newWidth = min(newWidth, maxWidth)
        newHeight = min(newHeight, maxHeight)
        
        // 更新視窗尺寸
        self.size.width = newWidth
        self.size.height = newHeight
    }
    
    func move(to position: Position) {
        // 確保最小位置為 0
        var newX = max(0, position.x)
        var newY = max(0, position.y)
        
        // 計算最大允許的位置
        // 視窗不能超出螢幕邊界
        let maxX = screenSize.width - size.width
        let maxY = screenSize.height - size.height
        
        // 限制位置不超過螢幕邊界
        newX = min(newX, maxX)
        newY = min(newY, maxY)
        
        // 更新視窗位置
        self.position.x = newX
        self.position.y = newY
    }
    
    func update(title: String) {
        self.title = title
    }
    
    func update(text: String?) {
        self.contents = text
    }
    
    func display() -> String {
        let contentText = contents ?? "[This window intentionally left blank]"
        return "\(title)\nPosition: (\(position.x), \(position.y)), Size: (\(size.width) x \(size.height))\n\(contentText)\n"
    }
}

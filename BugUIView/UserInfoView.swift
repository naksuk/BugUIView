import UIKit

//protocol UserInfoViewDelegate: class {
//    func tappedCloseButton()
//}

class UserInfoView: UIView {
    
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var followCountButton: UIButton!
    @IBOutlet weak var followerCountButton: UIButton!
    //weak var delegate: UserInfoViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        nibInit()
        setupView()
    }
    
    private func nibInit() {
        let nib = UINib(nibName: "UserInfoView", bundle: nil)
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
            return
        }
        
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        self.addSubview(view)
    }
    
    private func setupView() {
        icon.layer.cornerRadius = 35
    }
    
    private func getFollowInfo() {
//        let follows = follow?.follow ?? []
//        let followers = follow?.follower ?? []
//        followButton.setTitle("\(follows.count)", for: .normal)
//        followerButton.setTitle("\(followers.count)", for: .normal)
        
    }
    
    @IBAction func closeButton(_ sender: Any) {
        print("close")
    }
    
    @IBAction func followCountButton(_ sender: Any) {
        print("follow")
    }
    
    @IBAction func followerCountButton(_ sender: Any) {
        print("follower")
    }
    
    
}

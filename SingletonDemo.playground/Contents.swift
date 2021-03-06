import UIKit

struct UserInfo
{
    var firstName: String
    var lastName: String
}

var objUserInfo: UserInfo?

class Singleton
{
    static let shared = Singleton()   //Creating Only one object of class
    private init(){}

    func getUserInfo() -> UserInfo?
    {
        return objUserInfo
    }

    func updateUserInfo(updateUserInfo: UserInfo) -> ()
    {
        objUserInfo = updateUserInfo
    }
}

class User
{
    func getUser() -> UserInfo?{
        return Singleton.shared.getUserInfo()
    }

    func updateUserInfo() -> ()
    {
        Singleton.shared.updateUserInfo(updateUserInfo: UserInfo(firstName: "code", lastName: "cat15"))
    }
}

let objUser = User()
objUser.updateUserInfo()
objUser.getUser()


//MARK:  The singleton pattern guarantees that only one instance of a class is instantiated.

//
//  RCSceneRadioRoomRouterProtocol.swift
//  RCSceneRadioRoom
//
//  Created by xuefeng on 2022/2/23.
//

import Foundation
import RCSceneRoom

protocol RCSceneRadioRoomRouterProtocol {
    func inputPassword(completion: RCSRPasswordCompletion)
    func userList(room: RCSceneRoom, delegate: RCSceneRoomUserOperationProtocol)
    func notice(modify: Bool, notice: String, delegate: VoiceRoomNoticeDelegate)
    func manageUser(dependency: Any?, delegate: RCSceneRoomUserOperationProtocol?)
    func gift(dependency: Any?, delegate: RCSceneGiftViewControllerDelegate)
    func messageList()
    func privateChat(userId: String)
    func masterSeatOperation(userid: String, isMute: Bool, delegate: VoiceRoomMasterSeatOperationProtocol)
    func forbiddenList(roomId: String)
    func voiceRoomAlert(title: String, actions: [VoiceRoomAlertAction], alertType: String, delegate: VoiceRoomAlertProtocol?)
}

extension RCSceneRadioRoomRouterProtocol {
    func inputPassword(completion: RCSRPasswordCompletion) {}
    func userList(dependency: Any?, delegate: RCSceneRoomUserOperationProtocol) {}
    func notice(modify: Bool, notice: String, delegate: VoiceRoomNoticeDelegate) {}
    func manageUser(dependency: Any?, delegate: RCSceneRoomUserOperationProtocol?) {}
    func gift(dependency: Any?, delegate: RCSceneGiftViewControllerDelegate) {}
    func messageList() {}
    func privateChat(userId: String) {}
    func masterSeatOperation(userid: String, isMute: Bool, delegate: VoiceRoomMasterSeatOperationProtocol) {}
    func forbiddenList(roomId: String) {}
    func voiceRoomAlert(title: String, actions: [VoiceRoomAlertAction], alertType: String, delegate: VoiceRoomAlertProtocol?) {}
}

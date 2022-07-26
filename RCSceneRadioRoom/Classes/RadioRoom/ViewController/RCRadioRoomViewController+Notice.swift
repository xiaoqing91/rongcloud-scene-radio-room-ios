//
//  RCRadioRoomViewController+Notice.swift
//  RCE
//
//  Created by shaoshuai on 2021/8/12.
//

import SVProgressHUD


extension RCRadioRoomViewController {
    @_dynamicReplacement(for: m_viewDidLoad)
    private func notice_viewDidLoad() {
        m_viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleNoticeDidTap))
        roomNoticeView.addGestureRecognizer(tap)
    }

    @objc private func handleNoticeDidTap() {
        let notice = roomKVState.notice.count == 0 ? "欢迎来到\(roomKVState.roomName)" : roomKVState.notice
        radioRouter.trigger(.notice(modify: false, notice: notice, delegate: self))
        
    }
}

extension RCRadioRoomViewController: VoiceRoomNoticeDelegate {
    func noticeDidModified(notice: String) {
        LiveNoticeChecker.check(notice) { pass, msg in
            if (pass) {
                self.roomKVState.update(notice: notice)
                let message = RCTextMessage(content: "房间公告已更新")!
                self.messageView.addMessage(message)
            } else {
                SVProgressHUD.showError(withStatus: msg);
            }
        }
    }
}


// SPDX-FileCopyrightText: Nextcloud GmbH
// SPDX-FileCopyrightText: 2024 Milen Pivchev
// SPDX-License-Identifier: GPL-3.0-or-later

import XCTest
@testable import NextcloudKit

final class FilesIntegrationTests: BaseIntegrationXCTestCase {
    func test_createReadDeleteFolder_withProperParams_shouldCreateReadDeleteFolder() throws {
        let expectation = expectation(description: "Should finish last callback")
        let folderName = "TestFolder\(randomInt)"
        let serverUrl = "\(baseUrl)/remote.php/dav/files/\(userId)"
        let serverUrlFileName = "\(serverUrl)/\(folderName)"

        NextcloudKit.shared.appendSession(account: account, urlBase: baseUrl, user: user, userId: userId, password: password, userAgent: "", nextcloudVersion: 0, groupIdentifier: "")

//        // Test creating folder
//        NextcloudKit.shared.createFolder(serverUrlFileName: serverUrlFileName, account: account) { account, ocId, date, error in
//            XCTAssertEqual(self.account, account)
//
//            XCTAssertEqual(NKError.success.errorCode, error.errorCode)
//            XCTAssertEqual(NKError.success.errorDescription, error.errorDescription)
//
//            Thread.sleep(forTimeInterval: 0.2)
//
//            // Test reading folder, should exist
//            NextcloudKit.shared.readFileOrFolder(serverUrlFileName: serverUrlFileName, depth: "0", account: account) { account, files, data, error in
//                XCTAssertEqual(self.account, account)
//                XCTAssertEqual(NKError.success.errorCode, error.errorCode)
//                XCTAssertEqual(NKError.success.errorDescription, error.errorDescription)
//                XCTAssertEqual(files?[0].fileName, folderName)
//
//                Thread.sleep(forTimeInterval: 0.2)
//
//                // Test deleting folder
//                NextcloudKit.shared.deleteFileOrFolder(serverUrlFileName: serverUrlFileName, account: account) { account, error in
//                    XCTAssertEqual(self.account, account)
//                    XCTAssertEqual(NKError.success.errorCode, error.errorCode)
//                    XCTAssertEqual(NKError.success.errorDescription, error.errorDescription)
//
//                    Thread.sleep(forTimeInterval: 0.2)
//
//                    // Test reading folder, should NOT exist
//                    NextcloudKit.shared.readFileOrFolder(serverUrlFileName: serverUrlFileName, depth: "0", account: account) { account, files, data, error in
//                        defer { expectation.fulfill() }
//
//                        XCTAssertEqual(404, error.errorCode)
//                        XCTAssertEqual(self.account, account)
//                        XCTAssertTrue(files?.isEmpty ?? false)
//                    }
//                }
//            }
//        }

        waitForExpectations(timeout: 100)
    }
}

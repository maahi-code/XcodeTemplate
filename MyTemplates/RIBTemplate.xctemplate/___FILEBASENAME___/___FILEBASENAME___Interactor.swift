import SwiftUI

@MainActor
struct ___VARIABLE_productName:identifier___Interactor {
    private let logManager: LogManager

    init(container: DependencyContainer) {
        self.logManager = container.resolve(LogManager.self)!
    }

    func trackEvent(event: LoggableEvent) {
        logManager.trackEvent(event: event)
    }
}

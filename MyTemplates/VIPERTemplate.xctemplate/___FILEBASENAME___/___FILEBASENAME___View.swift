import SwiftUI

struct ___VARIABLE_productName:identifier___ViewDelegate {
    var eventParameters: [String: Any]? {
        nil
    }
}

struct ___VARIABLE_productName:identifier___View: View {
    @State var presenter: ___VARIABLE_productName:identifier___Presenter
    var delegate: ___VARIABLE_productName:identifier___ViewDelegate

    var body: some View {
        Text("___VARIABLE_productName:identifier___")
            .onAppear {
                presenter.onViewAppear(delegate: delegate)
            }
            .onDisappear {
                presenter.onViewDisappear(delegate: delegate)
            }
    }
}

extension ___VARIABLE_coreName:identifier___Builder {
    func ___VARIABLE_camelCasedProductName:identifier___View(router: AnyRouter, delegate: ___VARIABLE_productName:identifier___ViewDelegate = ___VARIABLE_productName:identifier___ViewDelegate()) -> some View {
        ___VARIABLE_productName:identifier___View(
            presenter: ___VARIABLE_productName:identifier___Presenter(
                interactor: interactor,
                router: ___VARIABLE_coreName:identifier___Router(router: router, builder: self)
            ),
            delegate: delegate
        )
    }
}

extension ___VARIABLE_coreName:identifier___Router {
    func show___VARIABLE_productName:identifier___View(delegate: ___VARIABLE_productName:identifier___ViewDelegate = ___VARIABLE_productName:identifier___ViewDelegate()) {
        router.showScreen(.push) { router in
            builder.___VARIABLE_camelCasedProductName:identifier___View(router: router, delegate: delegate)
        }
    }
}

#Preview {
    let builder = ___VARIABLE_coreName:identifier___Builder(interactor: ___VARIABLE_coreName:identifier___Interactor(container: DevPreview.shared.container()))

    return RouterView { router in
        builder.___VARIABLE_camelCasedProductName:identifier___View(router: router, delegate: ___VARIABLE_productName:identifier___ViewDelegate())
    }
    .previewEnvironment()
}

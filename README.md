# Tela-login-projeto-mobile
## Funcionamento de primeira tela
- A TelaLoginView gerencia as outras telas para gerar e para fazer o app abrir nessa pagina primeiro tem que ser feita da seguinte maneira na main:
```
import SwiftUI
@main
struct (Nome app): App {
    var body: some Scene {
        WindowGroup {
            TelaLoginView()
        }
    }
}
```


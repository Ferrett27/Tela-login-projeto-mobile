import SwiftUI

extension Color {
    static let ascijaVerdeEscuro = Color(red: 0.07, green: 0.28, blue: 0.16)
    static let ascijaBorda = Color(red: 0.55, green: 0.65, blue: 0.55)
}

struct LoginUsuarioView: View {
    @State private var nomeUsuario: String = ""
    @State private var senha: String = ""
    
    var comandoDeIrParaAdmin: () -> Void
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Image("logo_ascija")
                .resizable()
                .scaledToFit()
                .frame(width: 250)
                .padding(.bottom, 30)
            
            VStack(spacing: 15) {
                TextField("Nome de Usuário", text: $nomeUsuario)
                    .font(Font.system(size: 16, design: .serif))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.ascijaBorda, lineWidth: 1))
                
                SecureField("Senha", text: $senha)
                    .font(Font.system(size: 16, design: .serif))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.ascijaBorda, lineWidth: 1))
            }
            .padding(.horizontal, 40)
            
            Button(action: { print("Login Usuário!") }) {
                Text("Entrar")
                    .font(Font.system(size: 20, weight: .bold, design: .serif))
                    .foregroundColor(.white)
                    .frame(width: 160, height: 45)
                    .background(Color.ascijaVerdeEscuro)
                    .cornerRadius(8)
            }
            .padding(.top, 15)
            
            Button(action: {
                comandoDeIrParaAdmin()
            }) {
                Text("logar como admin")
                    .font(Font.system(size: 14, design: .serif))
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .background(Color.white)
    }
}

struct LoginUsuarioView_Previews: PreviewProvider {
    static var previews: some View {
        LoginUsuarioView(comandoDeIrParaAdmin: {})
    }
}

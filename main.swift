import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var surname: String = ""

    var body: some View {

        VStack(alignment: .center) {
                
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .foregroundColor(.green)

                Text("INPUT DATA")
                    .font(.title)
                    .foregroundColor(.green)
                    .padding()

                // TextField for name
                HStack() {
                    Text("Name:")
                        .font(.headline)
                        .foregroundColor(.green)
                    TextField("Input name", text: $name)
                        .padding(.horizontal)
                        .cornerRadius(3)
                }

                // TextField for surname
                HStack() {
                    Text("Surname:")
                        .font(.headline)
                        .foregroundColor(.green)
                    TextField("Input surname", text: $surname)
                        .padding(.horizontal)
                        .cornerRadius(3)
                }

                Spacer()

                // showing info
                HStack() {
                    VStack {
                        Text("Name:")
                            .font(.headline)
                            .foregroundColor(.blue)
                        Text(name.isEmpty ? "unknown" : name)
                            .font(.body)
                    }

                    VStack {
                        Text("Surname:")
                            .font(.headline)
                            .foregroundColor(.blue)
                        Text(surname.isEmpty ? "unknown" : surname)
                            .font(.body)
                    }
                }
                .padding(.horizontal)
            }
        }

            
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

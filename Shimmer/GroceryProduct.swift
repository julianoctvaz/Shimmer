//
//  GroceryProduct.swift
//  Shimmer
//
//  Created by Juliano on 03/10/24.
//

import Foundation

struct GroceryProduct: Codable, Identifiable {
    // Encodable e Decodable
    // o que é esse protocolo codable
    //    qual a diferenca para o decodable
    public var id: UUID = UUID()
    public var name: String?
    //essas propriedade devem ser opcionais?
//    Não é obrigatório que as propriedades sejam opcionais, a menos que você tenha casos onde elas possam ser ausentes ou nulas
    public var points: Int?
    public var description: String?
    
    enum CodingKeys: String, CodingKey { //A razão pela qual usamos String e CodingKey é para permitir que o Swift associe cada propriedade da struct a uma chave do JSON
          case name,
               points,
               description // Não queremos incluímos o 'id' aqui para decodificar!
      }
}





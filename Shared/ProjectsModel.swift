//
//  ProjectsViewModel.swift
//  seed_foundations
//
//  Created by Gislayne Vitorino dos Santos Silva on 22/09/22.
//
import SwiftUI
 
class ProjectsModel: ObservableObject {
    
    static var projects = [
        card_info(addressStreet: "Av. Jorn. Aníbal Fernandes, s/n",
                  addressCity: "Recife - PE, 50740-560",
                  email: "ada@cin.ufpe.br",
                  number: "(81) 3456-7890",
                  instagram: "@Academy_ufpe",
                  linkedin: "linkedin/academy_ufpe",
                  fullText: "A Apple Developer Academy é um projeto de capacitação criado em parceria entre o Centro de Infor.... A Apple Developer Academy é um projeto de capacitação criado em parceria entre o Centro de Infor....",
                  iconImg: "logoApple",
                  title: "Academy - UFPE",
                  textPreview: "A Apple Developer Academy é um projeto de capacitação criado em parceria entre o Centro de Infor....",
                  imgPrev: ["img01", "img02", "appledeveloperacademyimage3"],
                  comments: ["Ótimo projeto, muito incrivel, possibilita muitas oportunidades e entrega espaco para aprender","Como e o ambiente?","Bem diversificado, bom para pessoas que querem entrar na area de programacao","Abre alguma oportunidade?", "Me possibilitou encontrar um emprego depois"],
                  favorito: false),
         card_info(addressStreet: "Sem sede fixa",
                   addressCity: "Recife - PE",
                   email: "recife@pyladies.com",
                   number: "t.me/pyladiesrecife",
                   instagram: "@pyladiesrecife",
                   linkedin: "linkedin/pyLadiesrecife",
                   fullText: "A pyLadies é uma comunidade com foco em diversidade em empoderamento feminino que busca trazer... A pyLadies é uma comunidade com foco em diversidade em empoderamento feminino que busca trazer... ",
                   iconImg: "logoLady",
                   title: "PyLadies",
                   textPreview: "A pyLadies é uma comunidade com foco em diversidade em empoderamento feminino que busca trazer...",
                   imgPrev: ["img03", "img04", "pyladiesimg3", "logoLady"],
                   comments: ["FINALMENTE, um projeto assim aqui em Recife, estávamos precisando muito","É realmente bom, vocês recomendam?","É simplesmente incrível, aprendi muito com este projeto", "Adoro participar, sintam-se à vontade para interagir","Muito feliz com esse projeto", "Diversidade é isso"],
                   favorito: false),
         card_info(addressStreet: "Av. Jorn. Aníbal Fernandes, s/n",
                   addressCity: "Recife - PE, 50740-560",
                   email: "https://pet.cin.ufpe.br/",
                   number: "(81) 2126-8430 ext. 4352 ",
                   instagram: "@petinformatica",
                   linkedin: "linkedin/pet-informatica",
                   fullText: "O Programa de Educação Tutorial foi criado para apoiar atividades que integram ensino, pesquisa e extensão. O PET proporciona às pessoas alunas, sob orientação de uma pessoa tutora, a realização de atividades extracurriculares que complementem a formação acadêmica da comunidade estudantil e, ao mesmo tempo, atendam necessidades do próprio curso de graduação. ",
                   iconImg: "petinformaticalogo",
                   title: "Pet Informática",
                   textPreview: "O Programa de Educação Tutorial foi criado para apoiar atividades que integram ensino, pesquisa e extensão...",
                   imgPrev: ["petpresentation", "petvisita", "petworkshops"],
                   comments: ["Estou interessada, tem algum número para contato?", "Não, mas pode falar com eles pelas redes sociais", "Que masssa, amei o projeto", "Primeiro projeto que participei, ajudou muito minha vida acadêmica", "Vi que eles estavam com projeto para doar sangue", "Nossa, legal, vou ver como participar"],
                   favorito: false)
    ]
    
}

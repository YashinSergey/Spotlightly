//
//  MovieListCellNode.swift
//  Spotlightly
//
//  Created by mr.Blue on 21.07.2025.
//

import AsyncDisplayKit

//MARK: - AgentDealDetailInfoHeaderCellNode
final class MovieListCellNode: ASCellNode {

    private struct UIConstants {
        static let backgroundRadius: CGFloat = 10
        static let infoStackSpacing: CGFloat = 8
        static let infoStackInsets: UIEdgeInsets = .init(top: 7, left: 12, bottom: 8, right: 12)
        static let nodeInsets: UIEdgeInsets = .init(top: 16, left: 16, bottom: 20, right: 16)
    }
    
    //MARK: Properties
    #warning("Need to delete")
    private let descriptionText: String = "Some description. Some description. Some description. Some description. Some description. Some description. Some description. Some description. Some description. Some description. Some description. "

    //MARK: UIProperties
    private let titleNode: ASTextNode = {
        let textNode = ASTextNode()
        textNode.maximumNumberOfLines = 1
        return textNode
    }()
    
    private let descriptionNode: ASTextNode = {
        let textNode = ASTextNode()
        textNode.maximumNumberOfLines = 4
        textNode.truncationMode = .byWordWrapping
        return textNode
    }()
    
    private let backgroundNode: ASDisplayNode = {
        let node = ASDisplayNode()
        #warning("implement color with desigh system")
        node.backgroundColor = AppColor.Background.movieCard(for: .light)
        node.cornerRadius = UIConstants.backgroundRadius
        return node
    }()

    //MARK: Init
    init(title: String? = nil) {
        super.init()
        backgroundColor = .clear
        automaticallyManagesSubnodes = true
        configure(title: title)
    }
    
    //MARK: Private methods
    private func configure(title: String?) {
        titleNode.attributedText = NSAttributedString(string: title ?? "")
        descriptionNode.attributedText = NSAttributedString(string: descriptionText)
    }

    // MARK: Layout
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        let infoStack = ASStackLayoutSpec.vertical()
        infoStack.spacing = UIConstants.infoStackSpacing
        infoStack.children = [titleNode, descriptionNode]
        
        let insetInfoSpec = ASInsetLayoutSpec(insets: UIConstants.infoStackInsets, child: infoStack)
        let backgroundSpec = ASBackgroundLayoutSpec(child: insetInfoSpec, background: backgroundNode)
        return ASInsetLayoutSpec(insets: UIConstants.nodeInsets, child: backgroundSpec)
    }

}

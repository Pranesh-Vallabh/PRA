//
//  TextLabel.swift
//  PRA
//
//  Created by Pranesh Vallabh on 2023/01/06.
//

import UIKit

public class TextLabel: UIView {

    @IBOutlet var infoLabel: UILabel! {
        didSet {
            infoLabel.backgroundColor = .skyColor
        }
    }


    public override init(frame: CGRect) {
        super.init(frame: frame)
        loadContentViewFromNib()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadContentViewFromNib()
    }

    public func addInfo(_ info: String) {
        infoLabel.text = info
    }

    func loadContentViewFromNib() {
        let bundle = Bundle(for: Self.self)
        guard let contentView = UINib(nibName: String(describing: Self.self), bundle: bundle)
            .instantiate(withOwner: self)
            .first as? UIView
        else { return }
        contentView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(contentView)

        contentView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        contentView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

}

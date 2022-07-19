//
//  ViewController.swift
//  HelloDuna4th
//
//  Created by Seungyun Kim on 2022/07/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var musicCollectionView: UICollectionView!

    private var musicList: [Music] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        musicCollectionView.dataSource = self
        musicCollectionView.delegate = self
        setMusicList()
    }

    func setMusicList() {
        musicList.append(contentsOf: [
            Music(coverName: "musicAlbum1", musicTitle: "가습기", singer: "스킵"),
            Music(coverName: "musicAlbum2", musicTitle: "시공간", singer: "듀나"),
            Music(coverName: "musicAlbum3", musicTitle: "냉장고", singer: "데이크"),
            Music(coverName: "musicAlbum4", musicTitle: "텀블러", singer: "스누피")
        ])
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return musicList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MusicCollectionViewCell.identifier, for: indexPath) as? MusicCollectionViewCell else { return UICollectionViewCell() }
        
        cell.setData(imageName: musicList[indexPath.item].coverName, title: musicList[indexPath.item].musicTitle, subtitle: musicList[indexPath.item].singer)
        
        return cell
    }
}

extension ViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (UIScreen.main.bounds.size.width - 20 * 2 - 10) / 2
        return CGSize(width: width, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    
}

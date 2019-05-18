//
//  DataManager.swift
//  KxMemo
//
//  Created by choi on 18/05/2019.
//  Copyright © 2019 choi. All rights reserved.
//

import Foundation
import CoreData

class DataManager {
    
    static let shared = DataManager()
    private init() {}
    
    var mainContext: NSManagedObjectContext{
        return persistentContainer.viewContext
    }
    
    var diaryList = [Diary]()
    
    func fetchDiary(){
        let request: NSFetchRequest<Diary> = Diary.fetchRequest()
        let sortByDateDesc = NSSortDescriptor(key: "insertDate", ascending: false)
        
        request.sortDescriptors = [sortByDateDesc]
        
        do {
            diaryList = try mainContext.fetch(request)
        }catch{
            print(error)
        }
    }
    
    
    func addNewDiary(_ title: String? ,_ content: String?){
        let newDiary = Diary(context: mainContext)
        newDiary.title = title
        newDiary.content = content
        newDiary.insertDate = Date()

        saveContext()
    }
    
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "KxMemo")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    
    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
}

////
////  ViewController.swift
////  Flixster1
////
////  Created by Jing Liu on 3/13/23.
////
//
//import UIKit
//
//class ViewController: UIViewController, UITableViewDataSource {
//
//    @IBOutlet weak var tableView: UITableView!
//    var movies: [Movie] = []
//    override func viewDidLoad() {
//        tableView.dataSource = self
//
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        // Create a URL for the request
//        // In this case, the custom search URL you created in in part 1
//        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=81879525186ab0583f3f7391f71f8de9")!
//
//        // Use the URL to instantiate a request
//        let request = URLRequest(url: url)
//
//        // Create a URLSession using a shared instance and call its dataTask method
//        // The data task method attempts to retrieve the contents of a URL based on the specified URL.
//        // When finished, it calls it's completion handler (closure) passing in optional values for data (the data we want to fetch), response (info about the response like status code) and error (if the request was unsuccessful)
//        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in
//
//
//
//            // Handle any errors
//            if let error = error {
//                print("❌ Network error: \(error.localizedDescription)")
//            }
//
//            // Make sure we have data
//            guard let data = data else {
//                print("❌ Data is nil")
//                return
//            }
//
//
//            // Create a JSON Decoder
//            let decoder = JSONDecoder()
//
//            // Use the JSON decoder to try and map the data to our custom model.
//            // MovieResponse.self is a reference to the type itself, tells the decoder what to map to.
//            let response = try decoder.decode(MoviesResponse.self, from: data)
//
//            // Access the array of movies from the `results` property
//            let movies = response.results
//            print("✅ \(movies)")
//
//        }
//
//        // Initiate the network request
//        task.resume()
//        print("👋 Below the closure")
//        print(movies)
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return movies.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        // Get a cell with identifier, "MovieCell"
//        // the `dequeueReusableCell(withIdentifier:)` method just returns a generic UITableViewCell so it's necessary to cast it to our specific custom cell.
//        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
//
//        // Get the movie that corresponds to the table view row
//        let movie = movies[indexPath.row]
//
//        // Configure the cell with it's associated movie
//        cell.configure(with: movie)
//
//        // return the cell for display in the table view
//        return cell
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Pass the selected movie to the detail view controller
//        // Get the cell that triggered the segue
//        if let cell = sender as? UITableViewCell,
//           // Get the index path of the cell from the table view
//           let indexPath = tableView.indexPath(for: cell),
//           // Get the detail view controller
//           let detailViewController = segue.destination as? DetailViewController {
//
//            // Use the index path to get the associated track
//            let movie = movies[indexPath.row]
//
//            // Set the track on the detail view controller
//            detailViewController.movie = movie
//        }
//    }
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        // Get the index path for the current selected table view row (if exists)
//        if let indexPath = tableView.indexPathForSelectedRow {
//
//            // Deselect the row at the corresponding index path
//            tableView.deselectRow(at: indexPath, animated: true)
//        }
//
//    }
//
//
//}
//

//
//  ViewController.swift
//  Flixster1
//
//  Created by Jing Liu on 3/13/23.
//
//
//import UIKit
//
//class ViewController: UIViewController, UITableViewDataSource {
//
//    @IBOutlet weak var tableView: UITableView!
//    var movies: [Movie] = []
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Set the table view data source to self
//        tableView.dataSource = self
//
//        // Create a URL for the request
//        guard let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=81879525186ab0583f3f7391f71f8de9") else {
//            print("❌ Invalid URL")
//            return
//        }
//
//        // Use the URL to create a URL request
//        let request = URLRequest(url: url)
//
//        // Create a URLSessionDataTask to handle the request
//        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in
//            // Handle any errors
//            if let error = error {
//                print("❌ Network error: \(error.localizedDescription)")
//                return
//            }
//
//            // Make sure we have data
//            guard let data = data else {
//                print("❌ Data is nil")
//                return
//            }
//
//            // Create a JSON decoder
//            let decoder = JSONDecoder()
//
//            // Decode the data into a MoviesResponse object
//            do {
//                let response = try decoder.decode(MoviesResponse.self, from: data)
//                self?.movies = response.results // Store the movies in the class variable
//                DispatchQueue.main.async { // Update the table view on the main thread
//                    self?.tableView.reloadData()
//                }
//            } catch {
//                print("❌ Failed to decode movies response: \(error.localizedDescription)")
//            }
//        }
//
//        // Start the data task
//        task.resume()
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return movies.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
//        let movie = movies[indexPath.row]
//        cell.configure(with: movie)
//        return cell
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let cell = sender as? UITableViewCell,
//           let indexPath = tableView.indexPath(for: cell),
//           let detailViewController = segue.destination as? DetailViewController {
//            let movie = movies[indexPath.row]
//            detailViewController.movie = movie
//        }
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        if let indexPath = tableView.indexPathForSelectedRow {
//            tableView.deselectRow(at: indexPath, animated: true)
//        }
//    }
//}
//



import UIKit
class ViewController: UIViewController, UITableViewDataSource {
    
@IBOutlet weak var tableView: UITableView!
var movies: [Movie] = []
    
override func viewDidLoad() {
    super.viewDidLoad()
        
    // Set the table view data source to self
    tableView.dataSource = self
        
    // Create a URL for the request
    guard let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=81879525186ab0583f3f7391f71f8de9") else {
        print("❌ Invalid URL")
        return
    }
        
    // Use the URL to create a URL request
    let request = URLRequest(url: url)
        
    // Create a URLSessionDataTask to handle the request
    let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in
        // Handle any errors
        if let error = error {
            print("❌ Network error: \(error.localizedDescription)")
            return
        }
            
        // Make sure we have data
        guard let data = data else {
            print("❌ Data is nil")
            return
        }
            
        // Decode the JSON data into Movie objects
        let decoder = JSONDecoder()
        guard let response = try? decoder.decode(MoviesResponse.self, from: data) else {
            print("❌ Failed to decode response")
            return
        }
        let movies = response.results
            
        // Execute UI updates on the main thread when calling from a background callback
        DispatchQueue.main.async {
            // Set the view controller's movies property as this is the one the table view references
            self?.movies = movies
            // Make the table view reload now that we have new data
            self?.tableView.reloadData()
        }
    }
        
    // Start the data task to make the API request
    task.resume()
}
    
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return movies.count
}
    
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
    let movie = movies[indexPath.row]
    cell.configure(with: movie)
    return cell
}
    
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let cell = sender as? UITableViewCell,
       let indexPath = tableView.indexPath(for: cell),
       let detailViewController = segue.destination as? DetailViewController {
        let movie = movies[indexPath.row]
        detailViewController.movie = movie
    }
}
    
override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    if let indexPath = tableView.indexPathForSelectedRow {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
}

open class Semaphores {
    private let networkDataSourceUrl: String
    private let enableLogger: Bool
    var repository: FeatureServiceProtocal = FeatureService()
    
    public init(networkDataSourceUrl: String, enableLogger: Bool? = false, onFetched: @escaping (String) -> Void) {
        self.networkDataSourceUrl = networkDataSourceUrl
        self.enableLogger = enableLogger ?? false
        repository.fetchFromNetwork(networkDataSourceUrl: networkDataSourceUrl, onFetched: onFetched)
    }
    
    public func getBoolean(key: String,value : [Trait]) -> Bool {
        return repository.getBoolean(key: key,value: value)
    }
    
    public func getBoolean(key: String,value : Trait) -> Bool {
        return repository.getBoolean(key: key,value: value)
    }
    
    public func getBoolean(key: String) -> Bool {
        return repository.getBoolean(key: key)
    }
    
    
    public func getString(key: String,value : [Trait]) -> String {
        return repository.getString(key: key,value: value)
    }
    
    public func getString(key: String,value : Trait) -> String {
        return repository.getString(key: key,value: value)
    }
    
    public func getString(key: String) -> String {
        return repository.getString(key: key)
    }
    
    
    
    public func getNumber(key: String,value : [Trait]) -> Double {
        return repository.getNumber(key: key,value: value)
    }
    
    public func getNumber(key: String,value : Trait) -> Double {
        return repository.getNumber(key: key,value: value)
    }
    
    public func getNumber(key: String) -> Double {
        return repository.getNumber(key: key)
    }
    
    
    
    public func getJson(key: String,value : [Trait]) -> String {
        return repository.getJson(key: key,value: value)
    }
    
    public func getJson(key: String,value : Trait) -> String {
        return repository.getJson(key: key,value: value)
    }
    
    public func getJson(key: String) -> String {
        return repository.getJson(key: key)
    }
    

}

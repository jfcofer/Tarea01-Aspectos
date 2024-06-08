package ec.edu.espol.tarea01.aspectos;

public aspect SingletonAspect {
	declare parents: President implements SingletonProtocol.Singleton;
    declare parents: CEO implements SingletonProtocol.Singleton;
    
    private President instance = null;

    pointcut presidentConstructor() : 
        execution(public President.new(..));

    pointcut presidentGetInstance() : 
        call(public static President President.getInstance());

    before() : presidentConstructor() {
        if (instance != null) {
            throw new RuntimeException("President class is a Singleton and can only have one instance.");
        }
    }

    after(President president) returning : presidentConstructor() && args(president) {
        instance = president;
    }

    President around() : presidentGetInstance() {
        if (instance != null) {
            return instance;
        } else {
            return proceed();
        }
    }

}

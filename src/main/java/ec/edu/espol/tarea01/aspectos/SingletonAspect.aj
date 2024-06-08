package ec.edu.espol.tarea01.aspectos;

public aspect SingletonAspect {
	declare parents: President implements SingletonProtocol.Singleton;
    declare parents: CEO implements SingletonProtocol.Singleton;
    
    
    
    // Advice to capture calls to constructors and apply Singleton logic
    //Object around(): call(SingletonProtocol.Singleton+.new(..)) {
      //  return SingletonProtocol.getInstance(thisJoinPoint.getSignature().getDeclaringType());
    //}
    
        // Advice to capture calls to constructors and apply Singleton logic
        //Object around(): call(President.new(..)) {
          //  return SingletonProtocol.getInstance(President.class);
        //}
 // Map to hold singleton instances
    /*
    private static final Map<Class<?>, Object> singletons = new HashMap<>();

    // Advice to intercept constructor calls and enforce Singleton
    Object around(): call(President.new(..)) {
        Class<?> clazz = thisJoinPoint.getSignature().getDeclaringType();
        if (!singletons.containsKey(clazz)) {
            Object instance = proceed(); // Proceed with the original constructor call
            singletons.put(clazz, instance);
        }
        return singletons.get(clazz); // Return the singleton instance
    }
    */
    

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

package ec.edu.espol.tarea01.aspectos;

public aspect SingletonAspect {
	declare parents: President implements SingletonProtocol.Singleton;
    declare parents: CEO implements SingletonProtocol.Singleton;

    // Advice to capture calls to constructors and apply Singleton logic
    Object around(): call(SingletonProtocol.Singleton+.new(..)) {
        return SingletonProtocol.getInstance(thisJoinPoint.getSignature().getDeclaringType());
    }
}

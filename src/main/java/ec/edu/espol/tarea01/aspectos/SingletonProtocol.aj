package ec.edu.espol.tarea01.aspectos;

import java.util.HashMap;
import java.util.Map;

public aspect SingletonProtocol {
private static final Map<Class<?>, Object> singletons = new HashMap<>();
	
	public interface Singleton {}
	
	// Advice that intercepts the creation of new instances and ensures only one instance per class
    Object around(): call(Singleton+.new(..)) && !within(SingletonProtocol) {
        Class<?> clazz = thisJoinPoint.getSignature().getDeclaringType();
        if (!singletons.containsKey(clazz)) {
            Object instance = proceed();
            singletons.put(clazz, instance);
        }
        return singletons.get(clazz);
    }

    // Method to get the Singleton instance
    public static <T> T getInstance(Class<T> clazz) {
        return (T) singletons.get(clazz);
    }

}

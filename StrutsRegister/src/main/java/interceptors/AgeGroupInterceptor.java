package interceptors;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import com.opensymphony.xwork2.util.ValueStack;

public class AgeGroupInterceptor implements Interceptor{

	@Override
	public void destroy() {
		System.out.println("AgeGroupInterceptor - detroy() called");
		
	}

	@Override
	public void init() {
		System.out.println("AgeGroupInterceptor - init() called");
	}

	@Override
	public String intercept(ActionInvocation ai) throws Exception {
		System.out.println("AgeGroupInterceptor - Pre-processing");
		ValueStack stack = ai.getStack();
		Integer age = (Integer)stack.findValue("age");
		String ageGroup = "";
		if (age <= 18) {
			ageGroup="Childre";
		}else if (age > 18 && age <= 50) {
			ageGroup="Adult";
		} else {
			ageGroup="Senior";
		}
		stack.set("age", age + " ("+ageGroup+")");
		String result = ai.invoke();
		System.out.println("AgeGroupInterceptor - Post-processing");
		return result;
	}

}

(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2929 0)
(declare-sort var2187 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getParameterTypes/827748249 (var2929) (Array Int ClassObject))
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun getReturnType/-1494237887 (var2929) ClassObject)
(declare-fun var2187_getDescriptor/-920495853 (String ClassObject) void)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var2929 var2929)
(declare-const var2924 var2929) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var2924 null-var2929)))
(assert true)
(define-const var2474 (Array Int ClassObject) (getParameterTypes/827748249 var2924)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(define-const var2319 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2319)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2319!1 String)
(assert true)
;(assert (append/1183289509 var2319!1 40)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40) 

(declare-const var2319!2 String)
(declare-const var680 Int)
(define-const var1226 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var624 Int (getLength-Arr-ClassObject-1 var2474)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i1 >= $i0 goto virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41) 
(assert (>= var1226 var624)) ; Cond: i1 >= $i0 
(assert true)
;(assert (append/1183289509 var2319!2 41)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41) 

(declare-const var2319!3 String)
(declare-const var3894 Int)
(assert true)
(define-const var247 ClassObject (getReturnType/-1494237887 var2924)) ; Statement: $r3 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
;(assert (var2187_getDescriptor/-920495853 var2319!3 var247)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.Type: void getDescriptor(java.lang.StringBuffer,java.lang.Class)>($r2, $r3) 

(declare-const var2319!4 String)
(declare-const var247!1 ClassObject)
(assert true)
(define-const var1593 String (toString/-222306083 var2319!4)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getParameterTypes/827748249=([java.lang.reflect.Method], java.lang.Class[]), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), var2187_getDescriptor/-920495853=([java.lang.StringBuffer, java.lang.Class], void), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var2929=java.lang.reflect.Method, var2924=r0, var2474=r1, var2319=$r2, var680=40, var1226=i1, var624=$i0, var3894=41, var247=$r3, var2187=jdk.internal.org.objectweb.asm.Type, var1593=$r4}
; {java.lang.reflect.Method=var2929, r0=var2924, r1=var2474, $r2=var2319, 40=var680, i1=var1226, $i0=var624, 41=var3894, $r3=var247, jdk.internal.org.objectweb.asm.Type=var2187, $r4=var1593}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.reflect.Method;	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40);	i1 = 0;	$i0 = lengthof r1;	if i1 >= $i0 goto virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41);	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41);	$r3 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	staticinvoke <jdk.internal.org.objectweb.asm.Type: void getDescriptor(java.lang.StringBuffer,java.lang.Class)>($r2, $r3);	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>();	return $r4
;block_num 3
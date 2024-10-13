(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2383 0)
(declare-sort var1021 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getParameterTypes/827748249 (var2383) (Array Int ClassObject))
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun var1021_getDescriptor/-920495853 (String ClassObject) void)
(declare-fun getReturnType/-1494237887 (var2383) ClassObject)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var2383 var2383)
(declare-const var2620 var2383) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var2620 null-var2383)))
(assert true)
(define-const var3107 (Array Int ClassObject) (getParameterTypes/827748249 var2620)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(define-const var1529 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1529)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1529!1 String)
(assert true)
;(assert (append/1183289509 var1529!1 40)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40) 

(declare-const var1529!2 String)
(declare-const var1350 Int)
(define-const var3278 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var3787 Int (getLength-Arr-ClassObject-1 var3107)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i1 >= $i0 goto virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41) 
(assert (not (>= var3278 var3787))) ; Negate: Cond: i1 >= $i0  
(define-const var2081 ClassObject (select var3107 var3278)) ; Statement: $r5 = r1[i1] 
;(assert (var1021_getDescriptor/-920495853 var1529!2 var2081)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.Type: void getDescriptor(java.lang.StringBuffer,java.lang.Class)>($r2, $r5) 

(declare-const var1529!3 String)
(declare-const var2081!1 ClassObject)
(define-const var3278!1 Int (+ var3278 1)) ; Statement: i1 = i1 + 1 
 ; Statement: goto [?= $i0 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var3787!1 Int (getLength-Arr-ClassObject-1 var3107)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i1 >= $i0 goto virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41) 
(assert (>= var3278!1 var3787!1)) ; Cond: i1 >= $i0 
(assert true)
;(assert (append/1183289509 var1529!3 41)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41) 

(declare-const var1529!4 String)
(declare-const var1485 Int)
(assert true)
(define-const var3159 ClassObject (getReturnType/-1494237887 var2620)) ; Statement: $r3 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
;(assert (var1021_getDescriptor/-920495853 var1529!4 var3159)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.Type: void getDescriptor(java.lang.StringBuffer,java.lang.Class)>($r2, $r3) 

(declare-const var1529!5 String)
(declare-const var3159!1 ClassObject)
(assert true)
(define-const var2122 String (toString/-222306083 var1529!5)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getParameterTypes/827748249=([java.lang.reflect.Method], java.lang.Class[]), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), var1021_getDescriptor/-920495853=([java.lang.StringBuffer, java.lang.Class], void), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var2383=java.lang.reflect.Method, var2620=r0, var3107=r1, var1529=$r2, var1350=40, var3278=i1, var3787=$i0, var2081=$r5, var1021=jdk.internal.org.objectweb.asm.Type, var1485=41, var3159=$r3, var2122=$r4}
; {java.lang.reflect.Method=var2383, r0=var2620, r1=var3107, $r2=var1529, 40=var1350, i1=var3278, $i0=var3787, $r5=var2081, jdk.internal.org.objectweb.asm.Type=var1021, 41=var1485, $r3=var3159, $r4=var2122}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.reflect.Method;	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40);	i1 = 0;	$i0 = lengthof r1;	if i1 >= $i0 goto virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41);	$r5 = r1[i1];	staticinvoke <jdk.internal.org.objectweb.asm.Type: void getDescriptor(java.lang.StringBuffer,java.lang.Class)>($r2, $r5);	i1 = i1 + 1;	goto [?= $i0 = lengthof r1];	$i0 = lengthof r1;	if i1 >= $i0 goto virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41);	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41);	$r3 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	staticinvoke <jdk.internal.org.objectweb.asm.Type: void getDescriptor(java.lang.StringBuffer,java.lang.Class)>($r2, $r3);	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>();	return $r4
;block_num 5
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var350 0)
(declare-sort var1759 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getParameterTypes/827748249 (var350) (Array Int ClassObject))
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun var1759_getDescriptor/-920495853 (String ClassObject) void)
(declare-fun getReturnType/-1494237887 (var350) ClassObject)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var350 var350)
(declare-const var3976 var350) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var3976 null-var350)))
(assert true)
(define-const var2816 (Array Int ClassObject) (getParameterTypes/827748249 var3976)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(define-const var2047 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2047)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2047!1 String)
(assert true)
;(assert (append/1183289509 var2047!1 40)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40) 

(declare-const var2047!2 String)
(declare-const var2641 Int)
(define-const var1371 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var2579 Int (getLength-Arr-ClassObject-1 var2816)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i1 >= $i0 goto virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41) 
(assert (not (>= var1371 var2579))) ; Negate: Cond: i1 >= $i0  
(define-const var572 ClassObject (select var2816 var1371)) ; Statement: $r5 = r1[i1] 
;(assert (var1759_getDescriptor/-920495853 var2047!2 var572)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.Type: void getDescriptor(java.lang.StringBuffer,java.lang.Class)>($r2, $r5) 

(declare-const var2047!3 String)
(declare-const var572!1 ClassObject)
(define-const var1371!1 Int (+ var1371 1)) ; Statement: i1 = i1 + 1 
 ; Statement: goto [?= $i0 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var2579!1 Int (getLength-Arr-ClassObject-1 var2816)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i1 >= $i0 goto virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41) 
(assert (not (>= var1371!1 var2579!1))) ; Negate: Cond: i1 >= $i0  
(define-const var572!2 ClassObject (select var2816 var1371!1)) ; Statement: $r5 = r1[i1] 
;(assert (var1759_getDescriptor/-920495853 var2047!3 var572!2)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.Type: void getDescriptor(java.lang.StringBuffer,java.lang.Class)>($r2, $r5) 

(declare-const var2047!4 String)
(declare-const var572!3 ClassObject)
(define-const var1371!2 Int (+ var1371!1 1)) ; Statement: i1 = i1 + 1 
 ; Statement: goto [?= $i0 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var2579!2 Int (getLength-Arr-ClassObject-1 var2816)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i1 >= $i0 goto virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41) 
(assert (>= var1371!2 var2579!2)) ; Cond: i1 >= $i0 
(assert true)
;(assert (append/1183289509 var2047!4 41)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41) 

(declare-const var2047!5 String)
(declare-const var409 Int)
(assert true)
(define-const var1717 ClassObject (getReturnType/-1494237887 var3976)) ; Statement: $r3 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
;(assert (var1759_getDescriptor/-920495853 var2047!5 var1717)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.Type: void getDescriptor(java.lang.StringBuffer,java.lang.Class)>($r2, $r3) 

(declare-const var2047!6 String)
(declare-const var1717!1 ClassObject)
(assert true)
(define-const var345 String (toString/-222306083 var2047!6)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getParameterTypes/827748249=([java.lang.reflect.Method], java.lang.Class[]), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), var1759_getDescriptor/-920495853=([java.lang.StringBuffer, java.lang.Class], void), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var350=java.lang.reflect.Method, var3976=r0, var2816=r1, var2047=$r2, var2641=40, var1371=i1, var2579=$i0, var572=$r5, var1759=jdk.internal.org.objectweb.asm.Type, var409=41, var1717=$r3, var345=$r4}
; {java.lang.reflect.Method=var350, r0=var3976, r1=var2816, $r2=var2047, 40=var2641, i1=var1371, $i0=var2579, $r5=var572, jdk.internal.org.objectweb.asm.Type=var1759, 41=var409, $r3=var1717, $r4=var345}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.reflect.Method;	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40);	i1 = 0;	$i0 = lengthof r1;	if i1 >= $i0 goto virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41);	$r5 = r1[i1];	staticinvoke <jdk.internal.org.objectweb.asm.Type: void getDescriptor(java.lang.StringBuffer,java.lang.Class)>($r2, $r5);	i1 = i1 + 1;	goto [?= $i0 = lengthof r1];	$i0 = lengthof r1;	if i1 >= $i0 goto virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41);	$r5 = r1[i1];	staticinvoke <jdk.internal.org.objectweb.asm.Type: void getDescriptor(java.lang.StringBuffer,java.lang.Class)>($r2, $r5);	i1 = i1 + 1;	goto [?= $i0 = lengthof r1];	$i0 = lengthof r1;	if i1 >= $i0 goto virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41);	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41);	$r3 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	staticinvoke <jdk.internal.org.objectweb.asm.Type: void getDescriptor(java.lang.StringBuffer,java.lang.Class)>($r2, $r3);	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>();	return $r4
;block_num 7
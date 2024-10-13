(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3987 0)
(declare-sort var883 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getParameterTypes/938597008 (var3987) (Array Int ClassObject))
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun var883_getDescriptor/-920495853 (String ClassObject) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var3987 var3987)
(declare-const var3884 var3987) ; Statement: r0 := @parameter0: java.lang.reflect.Constructor 
(assert (not (= var3884 null-var3987)))
(assert true)
(define-const var3322 (Array Int ClassObject) (getParameterTypes/938597008 var3884)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Constructor: java.lang.Class[] getParameterTypes()>() 
(define-const var1614 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1614)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1614!1 String)
(assert true)
;(assert (append/1183289509 var1614!1 40)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40) 

(declare-const var1614!2 String)
(declare-const var1388 Int)
(define-const var1354 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var2987 Int (getLength-Arr-ClassObject-1 var3322)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i1 >= $i0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(")V") 
(assert (not (>= var1354 var2987))) ; Negate: Cond: i1 >= $i0  
(define-const var3934 ClassObject (select var3322 var1354)) ; Statement: $r5 = r1[i1] 
;(assert (var883_getDescriptor/-920495853 var1614!2 var3934)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.Type: void getDescriptor(java.lang.StringBuffer,java.lang.Class)>($r2, $r5) 

(declare-const var1614!3 String)
(declare-const var3934!1 ClassObject)
(define-const var1354!1 Int (+ var1354 1)) ; Statement: i1 = i1 + 1 
 ; Statement: goto [?= $i0 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var2987!1 Int (getLength-Arr-ClassObject-1 var3322)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i1 >= $i0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(")V") 
(assert (>= var1354!1 var2987!1)) ; Cond: i1 >= $i0 
(assert true)
(define-const var3595 String (append/1560614132 var1614!3 ")V")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(")V") 
(declare-const var1614!4 String)
(assert (str.prefixof var1614!3 var1614!4))
(assert true)
(define-const var2658 String (toString/-222306083 var3595)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getParameterTypes/938597008=([java.lang.reflect.Constructor], java.lang.Class[]), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), var883_getDescriptor/-920495853=([java.lang.StringBuffer, java.lang.Class], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3987=java.lang.reflect.Constructor, var3884=r0, var3322=r1, var1614=$r2, var1388=40, var1354=i1, var2987=$i0, var3934=$r5, var883=jdk.internal.org.objectweb.asm.Type, var3595=$r3, var2658=$r4}
; {java.lang.reflect.Constructor=var3987, r0=var3884, r1=var3322, $r2=var1614, 40=var1388, i1=var1354, $i0=var2987, $r5=var3934, jdk.internal.org.objectweb.asm.Type=var883, $r3=var3595, $r4=var2658}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.reflect.Constructor;	r1 = virtualinvoke r0.<java.lang.reflect.Constructor: java.lang.Class[] getParameterTypes()>();	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40);	i1 = 0;	$i0 = lengthof r1;	if i1 >= $i0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(")V");	$r5 = r1[i1];	staticinvoke <jdk.internal.org.objectweb.asm.Type: void getDescriptor(java.lang.StringBuffer,java.lang.Class)>($r2, $r5);	i1 = i1 + 1;	goto [?= $i0 = lengthof r1];	$i0 = lengthof r1;	if i1 >= $i0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(")V");	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(")V");	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.String toString()>();	return $r4
;block_num 5
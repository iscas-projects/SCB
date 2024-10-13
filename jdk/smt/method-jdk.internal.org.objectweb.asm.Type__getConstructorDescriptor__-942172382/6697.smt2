(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2195 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getParameterTypes/938597008 (var2195) (Array Int ClassObject))
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var2195 var2195)
(declare-const var634 var2195) ; Statement: r0 := @parameter0: java.lang.reflect.Constructor 
(assert (not (= var634 null-var2195)))
(assert true)
(define-const var2900 (Array Int ClassObject) (getParameterTypes/938597008 var634)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Constructor: java.lang.Class[] getParameterTypes()>() 
(define-const var2672 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2672)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2672!1 String)
(assert true)
;(assert (append/1183289509 var2672!1 40)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40) 

(declare-const var2672!2 String)
(declare-const var1648 Int)
(define-const var2215 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var1690 Int (getLength-Arr-ClassObject-1 var2900)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i1 >= $i0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(")V") 
(assert (>= var2215 var1690)) ; Cond: i1 >= $i0 
(assert true)
(define-const var637 String (append/1560614132 var2672!2 ")V")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(")V") 
(declare-const var2672!3 String)
(assert (str.prefixof var2672!2 var2672!3))
(assert true)
(define-const var803 String (toString/-222306083 var637)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getParameterTypes/938597008=([java.lang.reflect.Constructor], java.lang.Class[]), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var2195=java.lang.reflect.Constructor, var634=r0, var2900=r1, var2672=$r2, var1648=40, var2215=i1, var1690=$i0, var637=$r3, var803=$r4}
; {java.lang.reflect.Constructor=var2195, r0=var634, r1=var2900, $r2=var2672, 40=var1648, i1=var2215, $i0=var1690, $r3=var637, $r4=var803}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.reflect.Constructor;	r1 = virtualinvoke r0.<java.lang.reflect.Constructor: java.lang.Class[] getParameterTypes()>();	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40);	i1 = 0;	$i0 = lengthof r1;	if i1 >= $i0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(")V");	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(")V");	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.String toString()>();	return $r4
;block_num 3
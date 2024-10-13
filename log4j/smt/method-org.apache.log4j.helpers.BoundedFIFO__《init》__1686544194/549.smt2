(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var879 0)
(declare-sort var3210 0)
(declare-sort var1796 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3210) void)
(declare-fun cast-from-var879-to-var3210 (var879) var3210)
(declare-fun numElements/-1449898730 (var879) Int)
(declare-fun first/-1449898730 (var879) Int)
(declare-fun next/-1449898730 (var879) Int)
(declare-fun var1796-init () var1796)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1845021834 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/875830710 (var1796 String) void)
(declare-const null-var879 var879)
(declare-const null-Int Int)
(declare-const var2345 var879) ; Statement: r0 := @this: org.apache.log4j.helpers.BoundedFIFO 
(assert (not (= var2345 null-var879)))
(declare-const var3081 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3081 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var879-to-var3210 var2345))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2345!1 var879)
(declare-const var2345!2 var879)
(assert (not (= var2345!2 null-var879)))
(assert (= (numElements/-1449898730 var2345!2) 0)) ; Statement: r0.<org.apache.log4j.helpers.BoundedFIFO: int numElements> = 0 
(declare-const var2345!3 var879)
(assert (not (= var2345!3 null-var879)))
(assert (= (first/-1449898730 var2345!3) 0)) ; Statement: r0.<org.apache.log4j.helpers.BoundedFIFO: int first> = 0 
(declare-const var2345!4 var879)
(assert (not (= var2345!4 null-var879)))
(assert (= (next/-1449898730 var2345!4) 0)) ; Statement: r0.<org.apache.log4j.helpers.BoundedFIFO: int next> = 0 
 ; Statement: if i0 >= 1 goto r0.<org.apache.log4j.helpers.BoundedFIFO: int maxSize> = i0 
(assert (not (>= var3081 1))) ; Negate: Cond: i0 >= 1  
(define-const var2674 var1796 var1796-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var3377 String String-init) ; Statement: $r3 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3377)) ; Statement: specialinvoke $r3.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3377!1 String)
(assert true)
(define-const var218 String (append/1560614132 var3377!1 "The maxSize argument (")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("The maxSize argument (") 
(declare-const var3377!2 String)
(assert (str.prefixof var3377!1 var3377!2))
(assert true)
(define-const var3107 String (append/1845021834 var218 var3081)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0) 
(assert true)
(define-const var68 String (append/1560614132 var3107 ") is not a positive integer.")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(") is not a positive integer.") 
(declare-const var3107!1 String)
(assert (str.prefixof var3107 var3107!1))
(assert true)
(define-const var1166 String (toString/-222306083 var68)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2674 var1166)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var2674!1 var1796)
(declare-const var1166!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var879-to-var3210=([org.apache.log4j.helpers.BoundedFIFO], java.lang.Object), numElements/-1449898730=([org.apache.log4j.helpers.BoundedFIFO], int), first/-1449898730=([org.apache.log4j.helpers.BoundedFIFO], int), next/-1449898730=([org.apache.log4j.helpers.BoundedFIFO], int), var1796-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var879=org.apache.log4j.helpers.BoundedFIFO, var2345=r0, var3081=i0, var3210=java.lang.Object, var1796=java.lang.IllegalArgumentException, var2674=$r2, var3377=$r3, var218=$r4, var3107=$r5, var68=$r6, var1166=$r7}
; {org.apache.log4j.helpers.BoundedFIFO=var879, r0=var2345, i0=var3081, java.lang.Object=var3210, java.lang.IllegalArgumentException=var1796, $r2=var2674, $r3=var3377, $r4=var218, $r5=var3107, $r6=var68, $r7=var1166}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.helpers.BoundedFIFO;	i0 := @parameter0: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.apache.log4j.helpers.BoundedFIFO: int numElements> = 0;	r0.<org.apache.log4j.helpers.BoundedFIFO: int first> = 0;	r0.<org.apache.log4j.helpers.BoundedFIFO: int next> = 0;	if i0 >= 1 goto r0.<org.apache.log4j.helpers.BoundedFIFO: int maxSize> = i0;	$r2 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.StringBuffer;	specialinvoke $r3.<java.lang.StringBuffer: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("The maxSize argument (");	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(") is not a positive integer.");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r2
;block_num 2
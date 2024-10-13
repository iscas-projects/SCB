(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1092 0)
(declare-sort var3978 0)
(declare-sort var481 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3978) void)
(declare-fun cast-from-var1092-to-var3978 (var1092) var3978)
(declare-fun var481-init () var481)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1845021834 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/875830710 (var481 String) void)
(declare-const null-var1092 var1092)
(declare-const null-Int Int)
(declare-const var2673 var1092) ; Statement: r0 := @this: org.apache.log4j.helpers.CyclicBuffer 
(assert (not (= var2673 null-var1092)))
(declare-const var1224 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1224 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1092-to-var3978 var2673))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2673!1 var1092)
 ; Statement: if i0 >= 1 goto r0.<org.apache.log4j.helpers.CyclicBuffer: int maxSize> = i0 
(assert (not (>= var1224 1))) ; Negate: Cond: i0 >= 1  
(define-const var2639 var481 var481-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var1641 String String-init) ; Statement: $r3 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1641)) ; Statement: specialinvoke $r3.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1641!1 String)
(assert true)
(define-const var3792 String (append/1560614132 var1641!1 "The maxSize argument (")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("The maxSize argument (") 
(declare-const var1641!2 String)
(assert (str.prefixof var1641!1 var1641!2))
(assert true)
(define-const var316 String (append/1845021834 var3792 var1224)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0) 
(assert true)
(define-const var215 String (append/1560614132 var316 ") is not a positive integer.")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(") is not a positive integer.") 
(declare-const var316!1 String)
(assert (str.prefixof var316 var316!1))
(assert true)
(define-const var3329 String (toString/-222306083 var215)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2639 var3329)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var2639!1 var481)
(declare-const var3329!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1092-to-var3978=([org.apache.log4j.helpers.CyclicBuffer], java.lang.Object), var481-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1092=org.apache.log4j.helpers.CyclicBuffer, var2673=r0, var1224=i0, var3978=java.lang.Object, var481=java.lang.IllegalArgumentException, var2639=$r2, var1641=$r3, var3792=$r4, var316=$r5, var215=$r6, var3329=$r7}
; {org.apache.log4j.helpers.CyclicBuffer=var1092, r0=var2673, i0=var1224, java.lang.Object=var3978, java.lang.IllegalArgumentException=var481, $r2=var2639, $r3=var1641, $r4=var3792, $r5=var316, $r6=var215, $r7=var3329}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.helpers.CyclicBuffer;	i0 := @parameter0: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	if i0 >= 1 goto r0.<org.apache.log4j.helpers.CyclicBuffer: int maxSize> = i0;	$r2 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.StringBuffer;	specialinvoke $r3.<java.lang.StringBuffer: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("The maxSize argument (");	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(") is not a positive integer.");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r2
;block_num 2
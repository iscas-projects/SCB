(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1174 0)
(declare-sort var592 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var592-init () var592)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1845021834 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/875830710 (var592 String) void)
(declare-const null-var1174 var1174)
(declare-const null-Int Int)
(declare-const var1819 var1174) ; Statement: r0 := @this: org.apache.log4j.helpers.CyclicBuffer 
(assert (not (= var1819 null-var1174)))
(declare-const var3778 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3778 null-Int)))
 ; Statement: if i0 >= 0 goto $i1 = r0.<org.apache.log4j.helpers.CyclicBuffer: int numElems> 
(assert (not (>= var3778 0))) ; Negate: Cond: i0 >= 0  
(define-const var2635 var592 var592-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var65 String String-init) ; Statement: $r6 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var65)) ; Statement: specialinvoke $r6.<java.lang.StringBuffer: void <init>()>() 

(declare-const var65!1 String)
(assert true)
(define-const var1893 String (append/1560614132 var65!1 "Negative array size [")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Negative array size [") 
(declare-const var65!2 String)
(assert (str.prefixof var65!1 var65!2))
(assert true)
(define-const var3961 String (append/1845021834 var1893 var3778)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0) 
(assert true)
(define-const var1105 String (append/1560614132 var3961 "] not allowed.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] not allowed.") 
(declare-const var3961!1 String)
(assert (str.prefixof var3961 var3961!1))
(assert true)
(define-const var2881 String (toString/-222306083 var1105)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2635 var2881)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var2635!1 var592)
(declare-const var2881!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var592-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1174=org.apache.log4j.helpers.CyclicBuffer, var1819=r0, var3778=i0, var592=java.lang.IllegalArgumentException, var2635=$r5, var65=$r6, var1893=$r7, var3961=$r8, var1105=$r9, var2881=$r10}
; {org.apache.log4j.helpers.CyclicBuffer=var1174, r0=var1819, i0=var3778, java.lang.IllegalArgumentException=var592, $r5=var2635, $r6=var65, $r7=var1893, $r8=var3961, $r9=var1105, $r10=var2881}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.helpers.CyclicBuffer;	i0 := @parameter0: int;	if i0 >= 0 goto $i1 = r0.<org.apache.log4j.helpers.CyclicBuffer: int numElems>;	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuffer;	specialinvoke $r6.<java.lang.StringBuffer: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Negative array size [");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] not allowed.");	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 2
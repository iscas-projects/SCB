(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1379 0)
(declare-sort var3965 0)
(declare-sort var3312 0)
(declare-sort var418 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var3312-init () var3312)
(declare-fun toString/-522406933 (var418) String)
(declare-fun cast-from-String-to-var418 (String) var418)
(declare-fun <init>/875830710 (var3312 String) void)
(declare-const null-var1379 var1379)
(declare-const null-String String)
(declare-const var2297 var1379) ; Statement: r9 := @this: okhttp3.Headers$Companion 
(assert (not (= var2297 null-var1379)))
(declare-const var1976 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1976 null-String)))
(define-const var2438 String (cast-from-String-to-String var1976)) ; Statement: $r1 = (java.lang.CharSequence) r0 
(define-const var2451 Int (String_length/-667254855 var2438)) ; Statement: $i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 <= 0 goto $z0 = 0 
(assert (not (<= var2451 0))) ; Negate: Cond: $i0 <= 0  
(define-const var1845 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto i2 = 0 
(assert (not (not (= (ite var1845 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var184 String "name is empty") ; Statement: $r10 = "name is empty" 
(define-const var2961 var3312 var3312-init) ; Statement: $r12 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var1849 String (toString/-522406933 (cast-from-String-to-var418 var184))) ; Statement: $r8 = virtualinvoke $r10.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2961 var1849)) ; Statement: specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var2961!1 var3312)
(declare-const var1849!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), var3312-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var418=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1379=okhttp3.Headers$Companion, var2297=r9, var1976=r0, var3965=null_type, var2438=$r1, var2451=$i0, var1845=$z0, var184=$r10, var3312=java.lang.IllegalArgumentException, var2961=$r12, var418=java.lang.Object, var1849=$r8}
; {okhttp3.Headers$Companion=var1379, r9=var2297, r0=var1976, null_type=var3965, $r1=var2438, $i0=var2451, $z0=var1845, $r10=var184, java.lang.IllegalArgumentException=var3312, $r12=var2961, java.lang.Object=var418, $r8=var1849}
;seq <java.lang.CharSequence: int length()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r9 := @this: okhttp3.Headers$Companion;	r0 := @parameter0: java.lang.String;	$r1 = (java.lang.CharSequence) r0;	$i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>();	if $i0 <= 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto i2 = 0;	$r10 = "name is empty";	$r12 = new java.lang.IllegalArgumentException;	$r8 = virtualinvoke $r10.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r12
;block_num 4
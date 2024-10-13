(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2116 0)
(declare-sort var3584 0)
(declare-sort var2509 0)
(declare-sort var2418 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var2509-init () var2509)
(declare-fun toString/-522406933 (var2418) String)
(declare-fun cast-from-String-to-var2418 (String) var2418)
(declare-fun <init>/875830710 (var2509 String) void)
(declare-const null-var2116 var2116)
(declare-const null-String String)
(declare-const var1476 var2116) ; Statement: r9 := @this: okhttp3.Headers$Companion 
(assert (not (= var1476 null-var2116)))
(declare-const var1243 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1243 null-String)))
(define-const var755 String (cast-from-String-to-String var1243)) ; Statement: $r1 = (java.lang.CharSequence) r0 
(define-const var2014 Int (String_length/-667254855 var755)) ; Statement: $i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 <= 0 goto $z0 = 0 
(assert (<= var2014 0)) ; Cond: $i0 <= 0 
(define-const var2128 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto i2 = 0 
(assert (not (not (= (ite var2128 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1314 String "name is empty") ; Statement: $r10 = "name is empty" 
(define-const var2932 var2509 var2509-init) ; Statement: $r12 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var2190 String (toString/-522406933 (cast-from-String-to-var2418 var1314))) ; Statement: $r8 = virtualinvoke $r10.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2932 var2190)) ; Statement: specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var2932!1 var2509)
(declare-const var2190!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), var2509-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var2418=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2116=okhttp3.Headers$Companion, var1476=r9, var1243=r0, var3584=null_type, var755=$r1, var2014=$i0, var2128=$z0, var1314=$r10, var2509=java.lang.IllegalArgumentException, var2932=$r12, var2418=java.lang.Object, var2190=$r8}
; {okhttp3.Headers$Companion=var2116, r9=var1476, r0=var1243, null_type=var3584, $r1=var755, $i0=var2014, $z0=var2128, $r10=var1314, java.lang.IllegalArgumentException=var2509, $r12=var2932, java.lang.Object=var2418, $r8=var2190}
;seq <java.lang.CharSequence: int length()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r9 := @this: okhttp3.Headers$Companion;	r0 := @parameter0: java.lang.String;	$r1 = (java.lang.CharSequence) r0;	$i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>();	if $i0 <= 0 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto i2 = 0;	$r10 = "name is empty";	$r12 = new java.lang.IllegalArgumentException;	$r8 = virtualinvoke $r10.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r12
;block_num 4
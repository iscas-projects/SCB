(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2217 0)
(declare-sort var2529 0)
(declare-sort var2240 0)
(declare-sort var584 0)
(declare-sort var1165 0)
(declare-sort var872 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var584_checkNotNullParameter/-2060636419 (var1165 String) void)
(declare-fun cast-from-String-to-var1165 (String) var1165)
(define-fun cast-from-var2217-to-var2217 ((arg var2217)) var2217 arg)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var872-init () var872)
(declare-fun toString/-522406933 (var1165) String)
(declare-fun <init>/875830710 (var872 String) void)
(declare-const null-var2217 var2217)
(declare-const null-String String)
(declare-const null-var2240 var2240)
(declare-const var1121 var2217) ; Statement: r1 := @this: okhttp3.Request$Builder 
(assert (not (= var1121 null-var2217)))
(declare-const var1254 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1254 null-String)))
(declare-const var3066 var2240) ; Statement: r4 := @parameter1: okhttp3.RequestBody 
(assert (not (= var3066 null-var2240)))
;(assert (var584_checkNotNullParameter/-2060636419 (cast-from-String-to-var1165 var1254) "method")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "method") 

(declare-const var1254!1 String)
(declare-const var910 String)
(define-const var2355 var2217 (cast-from-var2217-to-var2217 var1121)) ; Statement: $r2 = (okhttp3.Request$Builder) r1 
(define-const var2434 String (cast-from-String-to-String var1254!1)) ; Statement: $r3 = (java.lang.CharSequence) r0 
(define-const var2015 Int (String_length/-667254855 var2434)) ; Statement: $i0 = interfaceinvoke $r3.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 <= 0 goto $z2 = 0 
(assert (not (<= var2015 0))) ; Negate: Cond: $i0 <= 0  
(define-const var1663 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z2 != 0 goto (branch) 
(assert (not (not (= (ite var1663 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var730 String "method.isEmpty() == true") ; Statement: $r20 = "method.isEmpty() == true" 
(define-const var3517 var872 var872-init) ; Statement: $r18 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var2507 String (toString/-522406933 (cast-from-String-to-var1165 var730))) ; Statement: $r19 = virtualinvoke $r20.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3517 var2507)) ; Statement: specialinvoke $r18.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r19) 

(declare-const var3517!1 var872)
(declare-const var2507!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var584_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var1165=([java.lang.String], java.lang.Object), cast-from-var2217-to-var2217=([okhttp3.Request$Builder], okhttp3.Request$Builder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), var872-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2217=okhttp3.Request$Builder, var1121=r1, var1254=r0, var2529=null_type, var2240=okhttp3.RequestBody, var3066=r4, var584=kotlin.jvm.internal.Intrinsics, var1165=java.lang.Object, var910="method", var2355=$r2, var2434=$r3, var2015=$i0, var1663=$z2, var730=$r20, var872=java.lang.IllegalArgumentException, var3517=$r18, var2507=$r19}
; {okhttp3.Request$Builder=var2217, r1=var1121, r0=var1254, null_type=var2529, okhttp3.RequestBody=var2240, r4=var3066, kotlin.jvm.internal.Intrinsics=var584, java.lang.Object=var1165, "method"=var910, $r2=var2355, $r3=var2434, $i0=var2015, $z2=var1663, $r20=var730, java.lang.IllegalArgumentException=var872, $r18=var3517, $r19=var2507}
;seq <java.lang.CharSequence: int length()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: okhttp3.Request$Builder;	r0 := @parameter0: java.lang.String;	r4 := @parameter1: okhttp3.RequestBody;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "method");	$r2 = (okhttp3.Request$Builder) r1;	$r3 = (java.lang.CharSequence) r0;	$i0 = interfaceinvoke $r3.<java.lang.CharSequence: int length()>();	if $i0 <= 0 goto $z2 = 0;	$z2 = 1;	goto [?= (branch)];	if $z2 != 0 goto (branch);	$r20 = "method.isEmpty() == true";	$r18 = new java.lang.IllegalArgumentException;	$r19 = virtualinvoke $r20.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r18.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r19);	throw $r18
;block_num 4
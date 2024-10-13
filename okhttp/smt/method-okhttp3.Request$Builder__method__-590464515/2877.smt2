(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3836 0)
(declare-sort var1466 0)
(declare-sort var1076 0)
(declare-sort var1188 0)
(declare-sort var2492 0)
(declare-sort var2114 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1188_checkNotNullParameter/-2060636419 (var2492 String) void)
(declare-fun cast-from-String-to-var2492 (String) var2492)
(define-fun cast-from-var3836-to-var3836 ((arg var3836)) var3836 arg)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var2114-init () var2114)
(declare-fun toString/-522406933 (var2492) String)
(declare-fun <init>/875830710 (var2114 String) void)
(declare-const null-var3836 var3836)
(declare-const null-String String)
(declare-const null-var1076 var1076)
(declare-const var1828 var3836) ; Statement: r1 := @this: okhttp3.Request$Builder 
(assert (not (= var1828 null-var3836)))
(declare-const var2806 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2806 null-String)))
(declare-const var3613 var1076) ; Statement: r4 := @parameter1: okhttp3.RequestBody 
(assert (not (= var3613 null-var1076)))
;(assert (var1188_checkNotNullParameter/-2060636419 (cast-from-String-to-var2492 var2806) "method")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "method") 

(declare-const var2806!1 String)
(declare-const var3081 String)
(define-const var325 var3836 (cast-from-var3836-to-var3836 var1828)) ; Statement: $r2 = (okhttp3.Request$Builder) r1 
(define-const var3046 String (cast-from-String-to-String var2806!1)) ; Statement: $r3 = (java.lang.CharSequence) r0 
(define-const var557 Int (String_length/-667254855 var3046)) ; Statement: $i0 = interfaceinvoke $r3.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 <= 0 goto $z2 = 0 
(assert (<= var557 0)) ; Cond: $i0 <= 0 
(define-const var1525 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z2 != 0 goto (branch) 
(assert (not (not (= (ite var1525 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var2423 String "method.isEmpty() == true") ; Statement: $r20 = "method.isEmpty() == true" 
(define-const var3959 var2114 var2114-init) ; Statement: $r18 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var2457 String (toString/-522406933 (cast-from-String-to-var2492 var2423))) ; Statement: $r19 = virtualinvoke $r20.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3959 var2457)) ; Statement: specialinvoke $r18.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r19) 

(declare-const var3959!1 var2114)
(declare-const var2457!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var1188_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var2492=([java.lang.String], java.lang.Object), cast-from-var3836-to-var3836=([okhttp3.Request$Builder], okhttp3.Request$Builder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), var2114-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3836=okhttp3.Request$Builder, var1828=r1, var2806=r0, var1466=null_type, var1076=okhttp3.RequestBody, var3613=r4, var1188=kotlin.jvm.internal.Intrinsics, var2492=java.lang.Object, var3081="method", var325=$r2, var3046=$r3, var557=$i0, var1525=$z2, var2423=$r20, var2114=java.lang.IllegalArgumentException, var3959=$r18, var2457=$r19}
; {okhttp3.Request$Builder=var3836, r1=var1828, r0=var2806, null_type=var1466, okhttp3.RequestBody=var1076, r4=var3613, kotlin.jvm.internal.Intrinsics=var1188, java.lang.Object=var2492, "method"=var3081, $r2=var325, $r3=var3046, $i0=var557, $z2=var1525, $r20=var2423, java.lang.IllegalArgumentException=var2114, $r18=var3959, $r19=var2457}
;seq <java.lang.CharSequence: int length()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: okhttp3.Request$Builder;	r0 := @parameter0: java.lang.String;	r4 := @parameter1: okhttp3.RequestBody;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "method");	$r2 = (okhttp3.Request$Builder) r1;	$r3 = (java.lang.CharSequence) r0;	$i0 = interfaceinvoke $r3.<java.lang.CharSequence: int length()>();	if $i0 <= 0 goto $z2 = 0;	$z2 = 0;	if $z2 != 0 goto (branch);	$r20 = "method.isEmpty() == true";	$r18 = new java.lang.IllegalArgumentException;	$r19 = virtualinvoke $r20.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r18.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r19);	throw $r18
;block_num 4
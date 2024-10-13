(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1795 0)
(declare-sort var2850 0)
(declare-sort var26 0)
(declare-sort var852 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var26_checkNotNullParameter/-2060636419 (var852 String) void)
(declare-fun cast-from-var2850-to-var852 (var2850) var852)
(declare-fun toString/1455567090 (var2850) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun removeHeader/-614288185 (var1795 String) var1795)
(declare-const null-var1795 var1795)
(declare-const null-var2850 var2850)
(declare-const var2833 var1795) ; Statement: r3 := @this: okhttp3.Request$Builder 
(assert (not (= var2833 null-var1795)))
(declare-const var2880 var2850) ; Statement: r0 := @parameter0: okhttp3.CacheControl 
(assert (not (= var2880 null-var2850)))
;(assert (var26_checkNotNullParameter/-2060636419 (cast-from-var2850-to-var852 var2880) "cacheControl")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "cacheControl") 

(declare-const var2880!1 var2850)
(declare-const var2341 String)
(assert true)
(define-const var2671 String (toString/1455567090 var2880!1)) ; Statement: r1 = virtualinvoke r0.<okhttp3.CacheControl: java.lang.String toString()>() 
(define-const var68 String (cast-from-String-to-String var2671)) ; Statement: $r2 = (java.lang.CharSequence) r1 
(define-const var393 Int (String_length/-667254855 var68)) ; Statement: $i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (= var393 0))) ; Cond: $i0 != 0 
(define-const var660 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke r3.<okhttp3.Request$Builder: okhttp3.Request$Builder header(java.lang.String,java.lang.String)>("Cache-Control", r1) 
(assert (not (= (ite var660 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1014 var1795 (removeHeader/-614288185 var2833 "Cache-Control")) ; Statement: $r4 = virtualinvoke r3.<okhttp3.Request$Builder: okhttp3.Request$Builder removeHeader(java.lang.String)>("Cache-Control") 
 ; Statement: goto [?= return $r4] 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var26_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var2850-to-var852=([okhttp3.CacheControl], java.lang.Object), toString/1455567090=([okhttp3.CacheControl], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), removeHeader/-614288185=([okhttp3.Request$Builder, java.lang.String], okhttp3.Request$Builder)}
; {var1795=okhttp3.Request$Builder, var2833=r3, var2850=okhttp3.CacheControl, var2880=r0, var26=kotlin.jvm.internal.Intrinsics, var852=java.lang.Object, var2341="cacheControl", var2671=r1, var68=$r2, var393=$i0, var660=$z0, var1014=$r4}
; {okhttp3.Request$Builder=var1795, r3=var2833, okhttp3.CacheControl=var2850, r0=var2880, kotlin.jvm.internal.Intrinsics=var26, java.lang.Object=var852, "cacheControl"=var2341, r1=var2671, $r2=var68, $i0=var393, $z0=var660, $r4=var1014}
;seq <okhttp3.CacheControl: java.lang.String toString()>;	<java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r3 := @this: okhttp3.Request$Builder;	r0 := @parameter0: okhttp3.CacheControl;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "cacheControl");	r1 = virtualinvoke r0.<okhttp3.CacheControl: java.lang.String toString()>();	$r2 = (java.lang.CharSequence) r1;	$i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $z0 = 0;	$z0 = 0;	if $z0 == 0 goto $r4 = virtualinvoke r3.<okhttp3.Request$Builder: okhttp3.Request$Builder header(java.lang.String,java.lang.String)>("Cache-Control", r1);	$r4 = virtualinvoke r3.<okhttp3.Request$Builder: okhttp3.Request$Builder removeHeader(java.lang.String)>("Cache-Control");	goto [?= return $r4];	return $r4
;block_num 5
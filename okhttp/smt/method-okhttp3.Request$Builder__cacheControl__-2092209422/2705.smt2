(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1560 0)
(declare-sort var273 0)
(declare-sort var1899 0)
(declare-sort var1367 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1899_checkNotNullParameter/-2060636419 (var1367 String) void)
(declare-fun cast-from-var273-to-var1367 (var273) var1367)
(declare-fun toString/1455567090 (var273) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun removeHeader/-614288185 (var1560 String) var1560)
(declare-const null-var1560 var1560)
(declare-const null-var273 var273)
(declare-const var3025 var1560) ; Statement: r3 := @this: okhttp3.Request$Builder 
(assert (not (= var3025 null-var1560)))
(declare-const var2282 var273) ; Statement: r0 := @parameter0: okhttp3.CacheControl 
(assert (not (= var2282 null-var273)))
;(assert (var1899_checkNotNullParameter/-2060636419 (cast-from-var273-to-var1367 var2282) "cacheControl")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "cacheControl") 

(declare-const var2282!1 var273)
(declare-const var3100 String)
(assert true)
(define-const var2559 String (toString/1455567090 var2282!1)) ; Statement: r1 = virtualinvoke r0.<okhttp3.CacheControl: java.lang.String toString()>() 
(define-const var1180 String (cast-from-String-to-String var2559)) ; Statement: $r2 = (java.lang.CharSequence) r1 
(define-const var1916 Int (String_length/-667254855 var1180)) ; Statement: $i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (not (= var1916 0)))) ; Negate: Cond: $i0 != 0  
(define-const var946 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke r3.<okhttp3.Request$Builder: okhttp3.Request$Builder header(java.lang.String,java.lang.String)>("Cache-Control", r1) 
(assert (not (= (ite var946 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3376 var1560 (removeHeader/-614288185 var3025 "Cache-Control")) ; Statement: $r4 = virtualinvoke r3.<okhttp3.Request$Builder: okhttp3.Request$Builder removeHeader(java.lang.String)>("Cache-Control") 
 ; Statement: goto [?= return $r4] 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1899_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var273-to-var1367=([okhttp3.CacheControl], java.lang.Object), toString/1455567090=([okhttp3.CacheControl], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), removeHeader/-614288185=([okhttp3.Request$Builder, java.lang.String], okhttp3.Request$Builder)}
; {var1560=okhttp3.Request$Builder, var3025=r3, var273=okhttp3.CacheControl, var2282=r0, var1899=kotlin.jvm.internal.Intrinsics, var1367=java.lang.Object, var3100="cacheControl", var2559=r1, var1180=$r2, var1916=$i0, var946=$z0, var3376=$r4}
; {okhttp3.Request$Builder=var1560, r3=var3025, okhttp3.CacheControl=var273, r0=var2282, kotlin.jvm.internal.Intrinsics=var1899, java.lang.Object=var1367, "cacheControl"=var3100, r1=var2559, $r2=var1180, $i0=var1916, $z0=var946, $r4=var3376}
;seq <okhttp3.CacheControl: java.lang.String toString()>;	<java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r3 := @this: okhttp3.Request$Builder;	r0 := @parameter0: okhttp3.CacheControl;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "cacheControl");	r1 = virtualinvoke r0.<okhttp3.CacheControl: java.lang.String toString()>();	$r2 = (java.lang.CharSequence) r1;	$i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 == 0 goto $r4 = virtualinvoke r3.<okhttp3.Request$Builder: okhttp3.Request$Builder header(java.lang.String,java.lang.String)>("Cache-Control", r1);	$r4 = virtualinvoke r3.<okhttp3.Request$Builder: okhttp3.Request$Builder removeHeader(java.lang.String)>("Cache-Control");	goto [?= return $r4];	return $r4
;block_num 5
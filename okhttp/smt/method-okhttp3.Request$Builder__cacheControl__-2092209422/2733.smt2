(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var909 0)
(declare-sort var2734 0)
(declare-sort var2491 0)
(declare-sort var470 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2491_checkNotNullParameter/-2060636419 (var470 String) void)
(declare-fun cast-from-var2734-to-var470 (var2734) var470)
(declare-fun toString/1455567090 (var2734) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun header/475234832 (var909 String String) var909)
(declare-const null-var909 var909)
(declare-const null-var2734 var2734)
(declare-const var3504 var909) ; Statement: r3 := @this: okhttp3.Request$Builder 
(assert (not (= var3504 null-var909)))
(declare-const var328 var2734) ; Statement: r0 := @parameter0: okhttp3.CacheControl 
(assert (not (= var328 null-var2734)))
;(assert (var2491_checkNotNullParameter/-2060636419 (cast-from-var2734-to-var470 var328) "cacheControl")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "cacheControl") 

(declare-const var328!1 var2734)
(declare-const var614 String)
(assert true)
(define-const var1392 String (toString/1455567090 var328!1)) ; Statement: r1 = virtualinvoke r0.<okhttp3.CacheControl: java.lang.String toString()>() 
(define-const var244 String (cast-from-String-to-String var1392)) ; Statement: $r2 = (java.lang.CharSequence) r1 
(define-const var686 Int (String_length/-667254855 var244)) ; Statement: $i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (not (= var686 0)))) ; Negate: Cond: $i0 != 0  
(define-const var2696 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke r3.<okhttp3.Request$Builder: okhttp3.Request$Builder header(java.lang.String,java.lang.String)>("Cache-Control", r1) 
(assert (= (ite var2696 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3803 var909 (header/475234832 var3504 "Cache-Control" var1392)) ; Statement: $r4 = virtualinvoke r3.<okhttp3.Request$Builder: okhttp3.Request$Builder header(java.lang.String,java.lang.String)>("Cache-Control", r1) 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2491_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var2734-to-var470=([okhttp3.CacheControl], java.lang.Object), toString/1455567090=([okhttp3.CacheControl], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), header/475234832=([okhttp3.Request$Builder, java.lang.String, java.lang.String], okhttp3.Request$Builder)}
; {var909=okhttp3.Request$Builder, var3504=r3, var2734=okhttp3.CacheControl, var328=r0, var2491=kotlin.jvm.internal.Intrinsics, var470=java.lang.Object, var614="cacheControl", var1392=r1, var244=$r2, var686=$i0, var2696=$z0, var3803=$r4}
; {okhttp3.Request$Builder=var909, r3=var3504, okhttp3.CacheControl=var2734, r0=var328, kotlin.jvm.internal.Intrinsics=var2491, java.lang.Object=var470, "cacheControl"=var614, r1=var1392, $r2=var244, $i0=var686, $z0=var2696, $r4=var3803}
;seq <okhttp3.CacheControl: java.lang.String toString()>;	<java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r3 := @this: okhttp3.Request$Builder;	r0 := @parameter0: okhttp3.CacheControl;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "cacheControl");	r1 = virtualinvoke r0.<okhttp3.CacheControl: java.lang.String toString()>();	$r2 = (java.lang.CharSequence) r1;	$i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 == 0 goto $r4 = virtualinvoke r3.<okhttp3.Request$Builder: okhttp3.Request$Builder header(java.lang.String,java.lang.String)>("Cache-Control", r1);	$r4 = virtualinvoke r3.<okhttp3.Request$Builder: okhttp3.Request$Builder header(java.lang.String,java.lang.String)>("Cache-Control", r1);	return $r4
;block_num 5
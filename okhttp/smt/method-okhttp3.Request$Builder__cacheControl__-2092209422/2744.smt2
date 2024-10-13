(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var653 0)
(declare-sort var1094 0)
(declare-sort var901 0)
(declare-sort var519 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var901_checkNotNullParameter/-2060636419 (var519 String) void)
(declare-fun cast-from-var1094-to-var519 (var1094) var519)
(declare-fun toString/1455567090 (var1094) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun header/475234832 (var653 String String) var653)
(declare-const null-var653 var653)
(declare-const null-var1094 var1094)
(declare-const var1332 var653) ; Statement: r3 := @this: okhttp3.Request$Builder 
(assert (not (= var1332 null-var653)))
(declare-const var1000 var1094) ; Statement: r0 := @parameter0: okhttp3.CacheControl 
(assert (not (= var1000 null-var1094)))
;(assert (var901_checkNotNullParameter/-2060636419 (cast-from-var1094-to-var519 var1000) "cacheControl")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "cacheControl") 

(declare-const var1000!1 var1094)
(declare-const var840 String)
(assert true)
(define-const var1826 String (toString/1455567090 var1000!1)) ; Statement: r1 = virtualinvoke r0.<okhttp3.CacheControl: java.lang.String toString()>() 
(define-const var2910 String (cast-from-String-to-String var1826)) ; Statement: $r2 = (java.lang.CharSequence) r1 
(define-const var2942 Int (String_length/-667254855 var2910)) ; Statement: $i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (= var2942 0))) ; Cond: $i0 != 0 
(define-const var1588 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke r3.<okhttp3.Request$Builder: okhttp3.Request$Builder header(java.lang.String,java.lang.String)>("Cache-Control", r1) 
(assert (= (ite var1588 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2953 var653 (header/475234832 var1332 "Cache-Control" var1826)) ; Statement: $r4 = virtualinvoke r3.<okhttp3.Request$Builder: okhttp3.Request$Builder header(java.lang.String,java.lang.String)>("Cache-Control", r1) 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var901_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var1094-to-var519=([okhttp3.CacheControl], java.lang.Object), toString/1455567090=([okhttp3.CacheControl], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), header/475234832=([okhttp3.Request$Builder, java.lang.String, java.lang.String], okhttp3.Request$Builder)}
; {var653=okhttp3.Request$Builder, var1332=r3, var1094=okhttp3.CacheControl, var1000=r0, var901=kotlin.jvm.internal.Intrinsics, var519=java.lang.Object, var840="cacheControl", var1826=r1, var2910=$r2, var2942=$i0, var1588=$z0, var2953=$r4}
; {okhttp3.Request$Builder=var653, r3=var1332, okhttp3.CacheControl=var1094, r0=var1000, kotlin.jvm.internal.Intrinsics=var901, java.lang.Object=var519, "cacheControl"=var840, r1=var1826, $r2=var2910, $i0=var2942, $z0=var1588, $r4=var2953}
;seq <okhttp3.CacheControl: java.lang.String toString()>;	<java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r3 := @this: okhttp3.Request$Builder;	r0 := @parameter0: okhttp3.CacheControl;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "cacheControl");	r1 = virtualinvoke r0.<okhttp3.CacheControl: java.lang.String toString()>();	$r2 = (java.lang.CharSequence) r1;	$i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $z0 = 0;	$z0 = 0;	if $z0 == 0 goto $r4 = virtualinvoke r3.<okhttp3.Request$Builder: okhttp3.Request$Builder header(java.lang.String,java.lang.String)>("Cache-Control", r1);	$r4 = virtualinvoke r3.<okhttp3.Request$Builder: okhttp3.Request$Builder header(java.lang.String,java.lang.String)>("Cache-Control", r1);	return $r4
;block_num 5
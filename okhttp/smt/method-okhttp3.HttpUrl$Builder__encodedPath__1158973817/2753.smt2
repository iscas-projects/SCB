(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3596 0)
(declare-sort var3272 0)
(declare-sort var1761 0)
(declare-sort var2683 0)
(declare-sort var1711 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1761_checkNotNullParameter/-2060636419 (var2683 String) void)
(declare-fun cast-from-String-to-var2683 (String) var2683)
(define-fun cast-from-var3596-to-var3596 ((arg var3596)) var3596 arg)
(declare-fun var1711_startsWith$default/493066340 (String String Bool Int var2683) Bool)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun resolvePath/856437786 (var3596 String Int Int) void)
(declare-const null-var3596 var3596)
(declare-const null-String String)
(declare-const null-var2683 var2683)
(declare-const var649 var3596) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var649 null-var3596)))
(declare-const var1032 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1032 null-String)))
;(assert (var1761_checkNotNullParameter/-2060636419 (cast-from-String-to-var2683 var1032) "encodedPath")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "encodedPath") 

(declare-const var1032!1 String)
(declare-const var3343 String)
(define-const var3773 var3596 (cast-from-var3596-to-var3596 var649)) ; Statement: $r2 = (okhttp3.HttpUrl$Builder) r1 
(define-const var1287 Bool (var1711_startsWith$default/493066340 var1032!1 "/" (ite (= 1 0) true false) 2 null-var2683)) ; Statement: $z0 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>(r0, "/", 0, 2, null) 
 ; Statement: if $z0 != 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= (ite var1287 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var2190 Int (length/-134980193 var1032!1)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
;(assert (resolvePath/856437786 var3773 var1032!1 0 var2190)) ; Statement: specialinvoke $r2.<okhttp3.HttpUrl$Builder: void resolvePath(java.lang.String,int,int)>(r0, 0, $i0) 

(declare-const var3773!1 var3596)
(declare-const var1032!2 String)
(declare-const var2156 Int)
(declare-const var2190!1 Int)
(define-const var2573 var3596 (cast-from-var3596-to-var3596 var649)) ; Statement: $r3 = (okhttp3.HttpUrl$Builder) r1 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1761_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var2683=([java.lang.String], java.lang.Object), cast-from-var3596-to-var3596=([okhttp3.HttpUrl$Builder], okhttp3.HttpUrl$Builder), var1711_startsWith$default/493066340=([java.lang.String, java.lang.String, boolean, int, java.lang.Object], boolean), length/-134980193=([java.lang.String], int), resolvePath/856437786=([okhttp3.HttpUrl$Builder, java.lang.String, int, int], void)}
; {var3596=okhttp3.HttpUrl$Builder, var649=r1, var1032=r0, var3272=null_type, var1761=kotlin.jvm.internal.Intrinsics, var2683=java.lang.Object, var3343="encodedPath", var3773=$r2, var1711=kotlin.text.StringsKt, var1287=$z0, var2190=$i0, var2156=0, var2573=$r3}
; {okhttp3.HttpUrl$Builder=var3596, r1=var649, r0=var1032, null_type=var3272, kotlin.jvm.internal.Intrinsics=var1761, java.lang.Object=var2683, "encodedPath"=var3343, $r2=var3773, kotlin.text.StringsKt=var1711, $z0=var1287, $i0=var2190, 0=var2156, $r3=var2573}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "encodedPath");	$r2 = (okhttp3.HttpUrl$Builder) r1;	$z0 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>(r0, "/", 0, 2, null);	if $z0 != 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	specialinvoke $r2.<okhttp3.HttpUrl$Builder: void resolvePath(java.lang.String,int,int)>(r0, 0, $i0);	$r3 = (okhttp3.HttpUrl$Builder) r1;	return $r3
;block_num 2
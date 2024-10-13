(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var609 0)
(declare-sort var2989 0)
(declare-sort var3858 0)
(declare-sort var2156 0)
(declare-sort var1562 0)
(declare-sort var2064 0)
(declare-sort var2609 0)
(declare-sort var3391 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3858_checkNotNullParameter/-2060636419 (var2156 String) void)
(declare-fun cast-from-String-to-var2156 (String) var2156)
(define-fun cast-from-var609-to-var609 ((arg var609)) var609 arg)
(declare-fun var1562_canonicalize$okhttp$default/-759723081 (var1562 String Int Int String Bool Bool Bool Bool var2609 Int var2156) String)
(declare-fun encodedPathSegments/627676127 (var609) var3391)
(declare-fun var3391_set/-1241329960 (var3391 Int var2156) var2156)
(declare-fun isDot/-1767506460 (var609 String) Bool)
(declare-const null-var609 var609)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2064-Companion var1562)
(declare-const null-var2609 var2609)
(declare-const null-var2156 var2156)
(declare-const var2828 var609) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var2828 null-var609)))
(declare-const var1265 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1265 null-Int)))
(declare-const var722 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var722 null-String)))
;(assert (var3858_checkNotNullParameter/-2060636419 (cast-from-String-to-var2156 var722) "encodedPathSegment")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "encodedPathSegment") 

(declare-const var722!1 String)
(declare-const var826 String)
(define-const var138 var609 (cast-from-var609-to-var609 var2828)) ; Statement: $r2 = (okhttp3.HttpUrl$Builder) r1 
(define-const var3734 var1562 var2064-Companion) ; Statement: $r3 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(define-const var2584 String (var1562_canonicalize$okhttp$default/-759723081 var3734 var722!1 0 0 " \u0022<>^`{}|/\u005c?#" (ite (= 1 1) true false) (ite (= 1 0) true false) (ite (= 1 0) true false) (ite (= 1 0) true false) null-var2609 243 null-var2156)) ; Statement: r4 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String canonicalize$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,java.lang.String,boolean,boolean,boolean,boolean,java.nio.charset.Charset,int,java.lang.Object)>($r3, r0, 0, 0, " \"<>^`{}|/\\?#", 1, 0, 0, 0, null, 243, null) 
(define-const var2211 var3391 (encodedPathSegments/627676127 var138)) ; Statement: $r5 = $r2.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var3391_set/-1241329960 var2211 var1265 (cast-from-String-to-var2156 var2584))) ; Statement: interfaceinvoke $r5.<java.util.List: java.lang.Object set(int,java.lang.Object)>(i0, r4) 

(declare-const var2211!1 var3391)
(declare-const var1265!1 Int)
(declare-const var2584!1 String)
(assert true)
(define-const var1152 Bool (isDot/-1767506460 var138 var2584!1)) ; Statement: $z0 = specialinvoke $r2.<okhttp3.HttpUrl$Builder: boolean isDot(java.lang.String)>(r4) 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var1152 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3257 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z2 != 0 goto $r6 = (okhttp3.HttpUrl$Builder) r1 
(assert (not (= (ite var3257 1 0) 0))) ; Cond: $z2 != 0 
(define-const var3085 var609 (cast-from-var609-to-var609 var2828)) ; Statement: $r6 = (okhttp3.HttpUrl$Builder) r1 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var3858_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var2156=([java.lang.String], java.lang.Object), cast-from-var609-to-var609=([okhttp3.HttpUrl$Builder], okhttp3.HttpUrl$Builder), var1562_canonicalize$okhttp$default/-759723081=([okhttp3.HttpUrl$Companion, java.lang.String, int, int, java.lang.String, boolean, boolean, boolean, boolean, java.nio.charset.Charset, int, java.lang.Object], java.lang.String), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var3391_set/-1241329960=([java.util.List, int, java.lang.Object], java.lang.Object), isDot/-1767506460=([okhttp3.HttpUrl$Builder, java.lang.String], boolean)}
; {var609=okhttp3.HttpUrl$Builder, var2828=r1, var1265=i0, var722=r0, var2989=null_type, var3858=kotlin.jvm.internal.Intrinsics, var2156=java.lang.Object, var826="encodedPathSegment", var138=$r2, var1562=okhttp3.HttpUrl$Companion, var2064=okhttp3.HttpUrl, var3734=$r3, var2609=java.nio.charset.Charset, var2584=r4, var3391=java.util.List, var2211=$r5, var1152=$z0, var3257=$z2, var3085=$r6}
; {okhttp3.HttpUrl$Builder=var609, r1=var2828, i0=var1265, r0=var722, null_type=var2989, kotlin.jvm.internal.Intrinsics=var3858, java.lang.Object=var2156, "encodedPathSegment"=var826, $r2=var138, okhttp3.HttpUrl$Companion=var1562, okhttp3.HttpUrl=var2064, $r3=var3734, java.nio.charset.Charset=var2609, r4=var2584, java.util.List=var3391, $r5=var2211, $z0=var1152, $z2=var3257, $r6=var3085}
;seq 
;cnt {}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	i0 := @parameter0: int;	r0 := @parameter1: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "encodedPathSegment");	$r2 = (okhttp3.HttpUrl$Builder) r1;	$r3 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	r4 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String canonicalize$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,java.lang.String,boolean,boolean,boolean,boolean,java.nio.charset.Charset,int,java.lang.Object)>($r3, r0, 0, 0, " \"<>^`{}|/\\?#", 1, 0, 0, 0, null, 243, null);	$r5 = $r2.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r5.<java.util.List: java.lang.Object set(int,java.lang.Object)>(i0, r4);	$z0 = specialinvoke $r2.<okhttp3.HttpUrl$Builder: boolean isDot(java.lang.String)>(r4);	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	if $z2 != 0 goto $r6 = (okhttp3.HttpUrl$Builder) r1;	$r6 = (okhttp3.HttpUrl$Builder) r1;	return $r6
;block_num 4
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1054 0)
(declare-sort var1769 0)
(declare-sort var833 0)
(declare-sort var2428 0)
(declare-sort var2798 0)
(declare-sort var753 0)
(declare-sort var874 0)
(declare-sort var3108 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var833_checkNotNullParameter/-2060636419 (var2428 String) void)
(declare-fun cast-from-String-to-var2428 (String) var2428)
(define-fun cast-from-var1054-to-var1054 ((arg var1054)) var1054 arg)
(declare-fun var2798_canonicalize$okhttp$default/-759723081 (var2798 String Int Int String Bool Bool Bool Bool var874 Int var2428) String)
(declare-fun isDot/-1767506460 (var1054 String) Bool)
(declare-fun encodedPathSegments/627676127 (var1054) var3108)
(declare-fun var3108_set/-1241329960 (var3108 Int var2428) var2428)
(declare-const null-var1054 var1054)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var753-Companion var2798)
(declare-const null-var874 var874)
(declare-const null-var2428 var2428)
(declare-const var2473 var1054) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var2473 null-var1054)))
(declare-const var3462 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3462 null-Int)))
(declare-const var2925 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2925 null-String)))
;(assert (var833_checkNotNullParameter/-2060636419 (cast-from-String-to-var2428 var2925) "pathSegment")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "pathSegment") 

(declare-const var2925!1 String)
(declare-const var2856 String)
(define-const var3539 var1054 (cast-from-var1054-to-var1054 var2473)) ; Statement: $r2 = (okhttp3.HttpUrl$Builder) r1 
(define-const var1250 var2798 var753-Companion) ; Statement: $r3 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(define-const var3214 String (var2798_canonicalize$okhttp$default/-759723081 var1250 var2925!1 0 0 " \u0022<>^`{}|/\u005c?#" (ite (= 1 0) true false) (ite (= 1 0) true false) (ite (= 1 0) true false) (ite (= 1 0) true false) null-var874 251 null-var2428)) ; Statement: r4 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String canonicalize$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,java.lang.String,boolean,boolean,boolean,boolean,java.nio.charset.Charset,int,java.lang.Object)>($r3, r0, 0, 0, " \"<>^`{}|/\\?#", 0, 0, 0, 0, null, 251, null) 
(assert true)
(define-const var3256 Bool (isDot/-1767506460 var3539 var3214)) ; Statement: $z0 = specialinvoke $r2.<okhttp3.HttpUrl$Builder: boolean isDot(java.lang.String)>(r4) 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var3256 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2784 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z2 != 0 goto $r5 = $r2.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
(assert (not (= (ite var2784 1 0) 0))) ; Cond: $z2 != 0 
(define-const var1035 var3108 (encodedPathSegments/627676127 var3539)) ; Statement: $r5 = $r2.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments> 
;(assert (var3108_set/-1241329960 var1035 var3462 (cast-from-String-to-var2428 var3214))) ; Statement: interfaceinvoke $r5.<java.util.List: java.lang.Object set(int,java.lang.Object)>(i0, r4) 

(declare-const var1035!1 var3108)
(declare-const var3462!1 Int)
(declare-const var3214!1 String)
(define-const var580 var1054 (cast-from-var1054-to-var1054 var2473)) ; Statement: $r6 = (okhttp3.HttpUrl$Builder) r1 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var833_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var2428=([java.lang.String], java.lang.Object), cast-from-var1054-to-var1054=([okhttp3.HttpUrl$Builder], okhttp3.HttpUrl$Builder), var2798_canonicalize$okhttp$default/-759723081=([okhttp3.HttpUrl$Companion, java.lang.String, int, int, java.lang.String, boolean, boolean, boolean, boolean, java.nio.charset.Charset, int, java.lang.Object], java.lang.String), isDot/-1767506460=([okhttp3.HttpUrl$Builder, java.lang.String], boolean), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var3108_set/-1241329960=([java.util.List, int, java.lang.Object], java.lang.Object)}
; {var1054=okhttp3.HttpUrl$Builder, var2473=r1, var3462=i0, var2925=r0, var1769=null_type, var833=kotlin.jvm.internal.Intrinsics, var2428=java.lang.Object, var2856="pathSegment", var3539=$r2, var2798=okhttp3.HttpUrl$Companion, var753=okhttp3.HttpUrl, var1250=$r3, var874=java.nio.charset.Charset, var3214=r4, var3256=$z0, var2784=$z2, var3108=java.util.List, var1035=$r5, var580=$r6}
; {okhttp3.HttpUrl$Builder=var1054, r1=var2473, i0=var3462, r0=var2925, null_type=var1769, kotlin.jvm.internal.Intrinsics=var833, java.lang.Object=var2428, "pathSegment"=var2856, $r2=var3539, okhttp3.HttpUrl$Companion=var2798, okhttp3.HttpUrl=var753, $r3=var1250, java.nio.charset.Charset=var874, r4=var3214, $z0=var3256, $z2=var2784, java.util.List=var3108, $r5=var1035, $r6=var580}
;seq 
;cnt {}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	i0 := @parameter0: int;	r0 := @parameter1: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "pathSegment");	$r2 = (okhttp3.HttpUrl$Builder) r1;	$r3 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	r4 = staticinvoke <okhttp3.HttpUrl$Companion: java.lang.String canonicalize$okhttp$default(okhttp3.HttpUrl$Companion,java.lang.String,int,int,java.lang.String,boolean,boolean,boolean,boolean,java.nio.charset.Charset,int,java.lang.Object)>($r3, r0, 0, 0, " \"<>^`{}|/\\?#", 0, 0, 0, 0, null, 251, null);	$z0 = specialinvoke $r2.<okhttp3.HttpUrl$Builder: boolean isDot(java.lang.String)>(r4);	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	if $z2 != 0 goto $r5 = $r2.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r5 = $r2.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r5.<java.util.List: java.lang.Object set(int,java.lang.Object)>(i0, r4);	$r6 = (okhttp3.HttpUrl$Builder) r1;	return $r6
;block_num 4
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1439 0)
(declare-sort var2697 0)
(declare-sort var3317 0)
(declare-sort var2821 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3317_checkNotNullParameter/-2060636419 (var2821 String) void)
(declare-fun cast-from-String-to-var2821 (String) var2821)
(define-fun cast-from-var1439-to-var1439 ((arg var1439)) var1439 arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun push/1526858787 (var1439 String Int Int Bool Bool) void)
(declare-const null-var1439 var1439)
(declare-const null-String String)
(declare-const var309 var1439) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var309 null-var1439)))
(declare-const var2405 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2405 null-String)))
;(assert (var3317_checkNotNullParameter/-2060636419 (cast-from-String-to-var2821 var2405) "encodedPathSegment")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "encodedPathSegment") 

(declare-const var2405!1 String)
(declare-const var2981 String)
(define-const var137 var1439 (cast-from-var1439-to-var1439 var309)) ; Statement: $r2 = (okhttp3.HttpUrl$Builder) r1 
(assert true)
(define-const var806 Int (length/-134980193 var2405!1)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
;(assert (push/1526858787 var137 var2405!1 0 var806 (ite (= 1 0) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r2.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r0, 0, $i0, 0, 1) 

(declare-const var137!1 var1439)
(declare-const var2405!2 String)
(declare-const var1742 Int)
(declare-const var806!1 Int)
(declare-const var1742!1 Int)
(declare-const var3960 Int)
(define-const var3729 var1439 (cast-from-var1439-to-var1439 var309)) ; Statement: $r3 = (okhttp3.HttpUrl$Builder) r1 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3317_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var2821=([java.lang.String], java.lang.Object), cast-from-var1439-to-var1439=([okhttp3.HttpUrl$Builder], okhttp3.HttpUrl$Builder), length/-134980193=([java.lang.String], int), push/1526858787=([okhttp3.HttpUrl$Builder, java.lang.String, int, int, boolean, boolean], void)}
; {var1439=okhttp3.HttpUrl$Builder, var309=r1, var2405=r0, var2697=null_type, var3317=kotlin.jvm.internal.Intrinsics, var2821=java.lang.Object, var2981="encodedPathSegment", var137=$r2, var806=$i0, var1742=0, var3960=1, var3729=$r3}
; {okhttp3.HttpUrl$Builder=var1439, r1=var309, r0=var2405, null_type=var2697, kotlin.jvm.internal.Intrinsics=var3317, java.lang.Object=var2821, "encodedPathSegment"=var2981, $r2=var137, $i0=var806, 0=var1742, 1=var3960, $r3=var3729}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "encodedPathSegment");	$r2 = (okhttp3.HttpUrl$Builder) r1;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	specialinvoke $r2.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r0, 0, $i0, 0, 1);	$r3 = (okhttp3.HttpUrl$Builder) r1;	return $r3
;block_num 1
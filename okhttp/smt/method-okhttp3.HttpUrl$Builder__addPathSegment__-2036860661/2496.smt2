(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1005 0)
(declare-sort var397 0)
(declare-sort var1842 0)
(declare-sort var1848 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1842_checkNotNullParameter/-2060636419 (var1848 String) void)
(declare-fun cast-from-String-to-var1848 (String) var1848)
(define-fun cast-from-var1005-to-var1005 ((arg var1005)) var1005 arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun push/1526858787 (var1005 String Int Int Bool Bool) void)
(declare-const null-var1005 var1005)
(declare-const null-String String)
(declare-const var394 var1005) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var394 null-var1005)))
(declare-const var626 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var626 null-String)))
;(assert (var1842_checkNotNullParameter/-2060636419 (cast-from-String-to-var1848 var626) "pathSegment")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "pathSegment") 

(declare-const var626!1 String)
(declare-const var2251 String)
(define-const var3667 var1005 (cast-from-var1005-to-var1005 var394)) ; Statement: $r2 = (okhttp3.HttpUrl$Builder) r1 
(assert true)
(define-const var349 Int (length/-134980193 var626!1)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
;(assert (push/1526858787 var3667 var626!1 0 var349 (ite (= 1 0) true false) (ite (= 1 0) true false))) ; Statement: specialinvoke $r2.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r0, 0, $i0, 0, 0) 

(declare-const var3667!1 var1005)
(declare-const var626!2 String)
(declare-const var2716 Int)
(declare-const var349!1 Int)
(declare-const var2716!1 Int)
(declare-const var2716!2 Int)
(define-const var1522 var1005 (cast-from-var1005-to-var1005 var394)) ; Statement: $r3 = (okhttp3.HttpUrl$Builder) r1 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1842_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var1848=([java.lang.String], java.lang.Object), cast-from-var1005-to-var1005=([okhttp3.HttpUrl$Builder], okhttp3.HttpUrl$Builder), length/-134980193=([java.lang.String], int), push/1526858787=([okhttp3.HttpUrl$Builder, java.lang.String, int, int, boolean, boolean], void)}
; {var1005=okhttp3.HttpUrl$Builder, var394=r1, var626=r0, var397=null_type, var1842=kotlin.jvm.internal.Intrinsics, var1848=java.lang.Object, var2251="pathSegment", var3667=$r2, var349=$i0, var2716=0, var1522=$r3}
; {okhttp3.HttpUrl$Builder=var1005, r1=var394, r0=var626, null_type=var397, kotlin.jvm.internal.Intrinsics=var1842, java.lang.Object=var1848, "pathSegment"=var2251, $r2=var3667, $i0=var349, 0=var2716, $r3=var1522}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "pathSegment");	$r2 = (okhttp3.HttpUrl$Builder) r1;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	specialinvoke $r2.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r0, 0, $i0, 0, 0);	$r3 = (okhttp3.HttpUrl$Builder) r1;	return $r3
;block_num 1
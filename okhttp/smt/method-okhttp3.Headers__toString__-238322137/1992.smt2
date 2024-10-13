(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var338 0)
(declare-sort var2480 0)
(declare-sort var2205 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun size/-585410950 (var338) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2480_checkNotNullExpressionValue/47304269 (var2205 String) void)
(declare-fun cast-from-String-to-var2205 (String) var2205)
(declare-const null-var338 var338)
(declare-const var2439 var338) ; Statement: r1 := @this: okhttp3.Headers 
(assert (not (= var2439 null-var338)))
(define-const var2242 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2242)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2242!1 String)
(assert (= var2242!1 ""))
(define-const var89 Int 0) ; Statement: i1 = 0 
(assert true)
(define-const var3462 Int (size/-585410950 var2439)) ; Statement: i0 = virtualinvoke r1.<okhttp3.Headers: int size()>() 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var89 var3462)) ; Cond: i1 >= i0 
(assert true)
(define-const var2727 String (toString/-2075883882 var2242!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2480_checkNotNullExpressionValue/47304269 (cast-from-String-to-var2205 var2727) "StringBuilder().apply(builderAction).toString()")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r2, "StringBuilder().apply(builderAction).toString()") 

(declare-const var2727!1 String)
(declare-const var3507 String)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), size/-585410950=([okhttp3.Headers], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2480_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var2205=([java.lang.String], java.lang.Object)}
; {var338=okhttp3.Headers, var2439=r1, var2242=$r0, var89=i1, var3462=i0, var2727=$r2, var2480=kotlin.jvm.internal.Intrinsics, var2205=java.lang.Object, var3507="StringBuilder().apply(builderAction).toString()"}
; {okhttp3.Headers=var338, r1=var2439, $r0=var2242, i1=var89, i0=var3462, $r2=var2727, kotlin.jvm.internal.Intrinsics=var2480, java.lang.Object=var2205, "StringBuilder().apply(builderAction).toString()"=var3507}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.Headers;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i1 = 0;	i0 = virtualinvoke r1.<okhttp3.Headers: int size()>();	if i1 >= i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r2, "StringBuilder().apply(builderAction).toString()");	return $r2
;block_num 3
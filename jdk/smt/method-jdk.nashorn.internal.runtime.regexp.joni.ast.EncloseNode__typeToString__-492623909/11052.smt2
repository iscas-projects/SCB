(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3377 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun isStopBacktrack/-261191044 (var3377) Bool)
(declare-fun isMemory/-420751205 (var3377) Bool)
(declare-fun isOption/-301930329 (var3377) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3377 var3377)
(declare-const var2858 var3377) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.EncloseNode 
(assert (not (= var2858 null-var3377)))
(define-const var3100 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3100)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3100!1 String)
(assert (= var3100!1 ""))
(assert true)
(define-const var2964 Bool (isStopBacktrack/-261191044 var2858)) ; Statement: $z0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.EncloseNode: boolean isStopBacktrack()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.EncloseNode: boolean isMemory()>() 
(assert (= (ite var2964 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1448 Bool (isMemory/-420751205 var2858)) ; Statement: $z1 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.EncloseNode: boolean isMemory()>() 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.EncloseNode: boolean isOption()>() 
(assert (= (ite var1448 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2836 Bool (isOption/-301930329 var2858)) ; Statement: $z2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.EncloseNode: boolean isOption()>() 
 ; Statement: if $z2 == 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2836 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var2743 String (toString/-2075883882 var3100!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), isStopBacktrack/-261191044=([jdk.nashorn.internal.runtime.regexp.joni.ast.EncloseNode], boolean), isMemory/-420751205=([jdk.nashorn.internal.runtime.regexp.joni.ast.EncloseNode], boolean), isOption/-301930329=([jdk.nashorn.internal.runtime.regexp.joni.ast.EncloseNode], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3377=jdk.nashorn.internal.runtime.regexp.joni.ast.EncloseNode, var2858=r1, var3100=$r0, var2964=$z0, var1448=$z1, var2836=$z2, var2743=$r2}
; {jdk.nashorn.internal.runtime.regexp.joni.ast.EncloseNode=var3377, r1=var2858, $r0=var3100, $z0=var2964, $z1=var1448, $z2=var2836, $r2=var2743}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.EncloseNode;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.EncloseNode: boolean isStopBacktrack()>();	if $z0 == 0 goto $z1 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.EncloseNode: boolean isMemory()>();	$z1 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.EncloseNode: boolean isMemory()>();	if $z1 == 0 goto $z2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.EncloseNode: boolean isOption()>();	$z2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.EncloseNode: boolean isOption()>();	if $z2 == 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 4
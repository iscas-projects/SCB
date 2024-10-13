(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3626 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun stateToString/-1057717062 (var3626) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3626 var3626)
(declare-const null-Int Int)
(declare-const var582 var3626) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode 
(assert (not (= var582 null-var3626)))
(declare-const var2673 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2673 null-Int)))
(define-const var3842 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3842)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3842!1 String)
(assert (= var3842!1 ""))
(assert true)
(define-const var2329 String (append/672562846 var3842!1 "\n  state: ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  state: ") 
(declare-const var3842!2 String)
(assert (= var3842!2 (str.++ var3842!1 "\n  state: ")))
(assert true)
(define-const var710 String (stateToString/-1057717062 var582)) ; Statement: $r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: java.lang.String stateToString()>() 
(assert true)
(define-const var3452 String (append/672562846 var2329 var710)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2329!1 String)
(assert (= var2329!1 (str.++ var2329 var710)))
(assert true)
(define-const var626 String (toString/-2075883882 var3452)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), stateToString/-1057717062=([jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3626=jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode, var582=r1, var2673=i0, var3842=$r0, var2329=$r3, var710=$r2, var3452=$r4, var626=$r5}
; {jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode=var3626, r1=var582, i0=var2673, $r0=var3842, $r3=var2329, $r2=var710, $r4=var3452, $r5=var626}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode;	i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  state: ");	$r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ast.StateNode: java.lang.String stateToString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
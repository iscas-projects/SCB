(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2473 0)
(declare-sort var1929 0)
(declare-sort var3523 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-457586411 (var2473) String)
(declare-fun getScopeRoot/1238209012 (var2473) var1929)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun hashCode/1739917532 (var3523) Int)
(declare-fun cast-from-var1929-to-var3523 (var1929) var3523)
(declare-const null-var2473 var2473)
(declare-const var286 var2473) ; Statement: r0 := @this: com.google.javascript.jscomp.ScopedName 
(assert (not (= var286 null-var2473)))
(assert true)
(define-const var3933 String (getName/-457586411 var286)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.ScopedName: java.lang.String getName()>() 
(assert true)
(define-const var2493 var1929 (getScopeRoot/1238209012 var286)) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.jscomp.ScopedName: com.google.javascript.rhino.Node getScopeRoot()>() 
(assert true)
(define-const var1498 Int (hashCode/-467973558 var3933)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
(define-const var3141 Int (+ 31 var1498)) ; Statement: i3 = 31 + $i0 
(define-const var2644 Int (* 31 var3141)) ; Statement: $i2 = 31 * i3 
(assert true)
(define-const var3274 Int (hashCode/1739917532 (cast-from-var1929-to-var3523 var2493))) ; Statement: $i1 = virtualinvoke r2.<java.lang.Object: int hashCode()>() 
(define-const var1116 Int (+ var2644 var3274)) ; Statement: i4 = $i2 + $i1 
 ; Statement: return i4 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-457586411=([com.google.javascript.jscomp.ScopedName], java.lang.String), getScopeRoot/1238209012=([com.google.javascript.jscomp.ScopedName], com.google.javascript.rhino.Node), hashCode/-467973558=([java.lang.String], int), hashCode/1739917532=([java.lang.Object], int), cast-from-var1929-to-var3523=([com.google.javascript.rhino.Node], java.lang.Object)}
; {var2473=com.google.javascript.jscomp.ScopedName, var286=r0, var3933=r1, var1929=com.google.javascript.rhino.Node, var2493=r2, var1498=$i0, var3141=i3, var2644=$i2, var3523=java.lang.Object, var3274=$i1, var1116=i4}
; {com.google.javascript.jscomp.ScopedName=var2473, r0=var286, r1=var3933, com.google.javascript.rhino.Node=var1929, r2=var2493, $i0=var1498, i3=var3141, $i2=var2644, java.lang.Object=var3523, $i1=var3274, i4=var1116}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.ScopedName;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.ScopedName: java.lang.String getName()>();	r2 = virtualinvoke r0.<com.google.javascript.jscomp.ScopedName: com.google.javascript.rhino.Node getScopeRoot()>();	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	i3 = 31 + $i0;	$i2 = 31 * i3;	$i1 = virtualinvoke r2.<java.lang.Object: int hashCode()>();	i4 = $i2 + $i1;	return i4
;block_num 1
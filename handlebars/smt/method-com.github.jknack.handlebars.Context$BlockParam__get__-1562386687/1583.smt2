(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3888 0)
(declare-sort var199 0)
(declare-sort var2955 0)
(declare-sort var3418 0)
(declare-sort var2550 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var199_get/-1216255739 (var199 Int) var2955)
(declare-fun cast-from-var2955-to-var3418 (var2955) var3418)
(declare-fun toString/-522406933 (var2955) String)
(declare-fun cast-from-var3418-to-var2955 (var3418) var2955)
(declare-fun var199_size/-959786421 (var199) Int)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun get/918749235 (var2550 var199) var2955)
(declare-fun cast-from-var3888-to-var2550 (var3888) var2550)
(declare-const null-var3888 var3888)
(declare-const null-var199 var199)
(declare-const var3511 var3888) ; Statement: r4 := @this: com.github.jknack.handlebars.Context$BlockParam 
(assert (not (= var3511 null-var3888)))
(declare-const var1201 var199) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var1201 null-var199)))
(define-const var3071 var2955 (var199_get/-1216255739 var1201 0)) ; Statement: $r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var2203 var3418 (cast-from-var2955-to-var3418 var3071)) ; Statement: $r2 = (com.github.jknack.handlebars.PathExpression) $r1 
(assert true)
(define-const var896 String (toString/-522406933 (cast-from-var3418-to-var2955 var2203))) ; Statement: r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(define-const var64 Int (var199_size/-959786421 var1201)) ; Statement: $i0 = interfaceinvoke r0.<java.util.List: int size()>() 
 ; Statement: if $i0 != 1 goto $z0 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>(".") 
(assert (not (= var64 1))) ; Cond: $i0 != 1 
(assert true)
(define-const var3056 Bool (startsWith/-1785782452 var896 ".")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>(".") 
 ; Statement: if $z0 == 0 goto $r5 = specialinvoke r4.<com.github.jknack.handlebars.Context: java.lang.Object get(java.util.List)>(r0) 
(assert (= (ite var3056 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3218 var2955 (get/918749235 (cast-from-var3888-to-var2550 var3511) var1201)) ; Statement: $r5 = specialinvoke r4.<com.github.jknack.handlebars.Context: java.lang.Object get(java.util.List)>(r0) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var199_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var2955-to-var3418=([java.lang.Object], com.github.jknack.handlebars.PathExpression), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var3418-to-var2955=([com.github.jknack.handlebars.PathExpression], java.lang.Object), var199_size/-959786421=([java.util.List], int), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), get/918749235=([com.github.jknack.handlebars.Context, java.util.List], java.lang.Object), cast-from-var3888-to-var2550=([com.github.jknack.handlebars.Context$BlockParam], com.github.jknack.handlebars.Context)}
; {var3888=com.github.jknack.handlebars.Context$BlockParam, var3511=r4, var199=java.util.List, var1201=r0, var2955=java.lang.Object, var3071=$r1, var3418=com.github.jknack.handlebars.PathExpression, var2203=$r2, var896=r3, var64=$i0, var3056=$z0, var2550=com.github.jknack.handlebars.Context, var3218=$r5}
; {com.github.jknack.handlebars.Context$BlockParam=var3888, r4=var3511, java.util.List=var199, r0=var1201, java.lang.Object=var2955, $r1=var3071, com.github.jknack.handlebars.PathExpression=var3418, $r2=var2203, r3=var896, $i0=var64, $z0=var3056, com.github.jknack.handlebars.Context=var2550, $r5=var3218}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r4 := @this: com.github.jknack.handlebars.Context$BlockParam;	r0 := @parameter0: java.util.List;	$r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0);	$r2 = (com.github.jknack.handlebars.PathExpression) $r1;	r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$i0 = interfaceinvoke r0.<java.util.List: int size()>();	if $i0 != 1 goto $z0 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>(".");	$z0 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>(".");	if $z0 == 0 goto $r5 = specialinvoke r4.<com.github.jknack.handlebars.Context: java.lang.Object get(java.util.List)>(r0);	$r5 = specialinvoke r4.<com.github.jknack.handlebars.Context: java.lang.Object get(java.util.List)>(r0);	return $r5
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2406 0)
(declare-sort var588 0)
(declare-sort var536 0)
(declare-sort var2625 0)
(declare-sort var1621 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var588_get/-1216255739 (var588 Int) var536)
(declare-fun cast-from-var536-to-var2625 (var536) var2625)
(declare-fun toString/-522406933 (var536) String)
(declare-fun cast-from-var2625-to-var536 (var2625) var536)
(declare-fun var588_size/-959786421 (var588) Int)
(declare-fun parent/1707031581 (var1621) var1621)
(declare-fun cast-from-var2406-to-var1621 (var2406) var1621)
(declare-fun model/1707031581 (var1621) var536)
(declare-const null-var2406 var2406)
(declare-const null-var588 var588)
(declare-const var181 var2406) ; Statement: r4 := @this: com.github.jknack.handlebars.Context$BlockParam 
(assert (not (= var181 null-var2406)))
(declare-const var3364 var588) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var3364 null-var588)))
(define-const var3912 var536 (var588_get/-1216255739 var3364 0)) ; Statement: $r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var2732 var2625 (cast-from-var536-to-var2625 var3912)) ; Statement: $r2 = (com.github.jknack.handlebars.PathExpression) $r1 
(assert true)
(define-const var2685 String (toString/-522406933 (cast-from-var2625-to-var536 var2732))) ; Statement: r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(define-const var2537 Int (var588_size/-959786421 var3364)) ; Statement: $i0 = interfaceinvoke r0.<java.util.List: int size()>() 
 ; Statement: if $i0 != 1 goto $z0 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>(".") 
(assert (not (not (= var2537 1)))) ; Negate: Cond: $i0 != 1  
(assert true)
(define-const var170 Bool (= var2685 "this")) ; Statement: $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("this") 
 ; Statement: if $z1 == 0 goto $z0 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>(".") 
(assert (not (= (ite var170 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var712 var1621 (parent/1707031581 (cast-from-var2406-to-var1621 var181))) ; Statement: $r9 = r4.<com.github.jknack.handlebars.Context$BlockParam: com.github.jknack.handlebars.Context parent> 
(define-const var2255 var536 (model/1707031581 var712)) ; Statement: $r10 = $r9.<com.github.jknack.handlebars.Context: java.lang.Object model> 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var588_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var536-to-var2625=([java.lang.Object], com.github.jknack.handlebars.PathExpression), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2625-to-var536=([com.github.jknack.handlebars.PathExpression], java.lang.Object), var588_size/-959786421=([java.util.List], int), parent/1707031581=([com.github.jknack.handlebars.Context], com.github.jknack.handlebars.Context), cast-from-var2406-to-var1621=([com.github.jknack.handlebars.Context$BlockParam], com.github.jknack.handlebars.Context), model/1707031581=([com.github.jknack.handlebars.Context], java.lang.Object)}
; {var2406=com.github.jknack.handlebars.Context$BlockParam, var181=r4, var588=java.util.List, var3364=r0, var536=java.lang.Object, var3912=$r1, var2625=com.github.jknack.handlebars.PathExpression, var2732=$r2, var2685=r3, var2537=$i0, var170=$z1, var1621=com.github.jknack.handlebars.Context, var712=$r9, var2255=$r10}
; {com.github.jknack.handlebars.Context$BlockParam=var2406, r4=var181, java.util.List=var588, r0=var3364, java.lang.Object=var536, $r1=var3912, com.github.jknack.handlebars.PathExpression=var2625, $r2=var2732, r3=var2685, $i0=var2537, $z1=var170, com.github.jknack.handlebars.Context=var1621, $r9=var712, $r10=var2255}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: com.github.jknack.handlebars.Context$BlockParam;	r0 := @parameter0: java.util.List;	$r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0);	$r2 = (com.github.jknack.handlebars.PathExpression) $r1;	r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$i0 = interfaceinvoke r0.<java.util.List: int size()>();	if $i0 != 1 goto $z0 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>(".");	$z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("this");	if $z1 == 0 goto $z0 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>(".");	$r9 = r4.<com.github.jknack.handlebars.Context$BlockParam: com.github.jknack.handlebars.Context parent>;	$r10 = $r9.<com.github.jknack.handlebars.Context: java.lang.Object model>;	return $r10
;block_num 3
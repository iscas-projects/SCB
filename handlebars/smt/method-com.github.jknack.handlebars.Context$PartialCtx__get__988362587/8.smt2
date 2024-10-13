(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2208 0)
(declare-sort var1798 0)
(declare-sort var877 0)
(declare-sort var3048 0)
(declare-sort var1271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1798_get/-1216255739 (var1798 Int) var877)
(declare-fun cast-from-var877-to-var3048 (var877) var3048)
(declare-fun toString/-522406933 (var877) String)
(declare-fun cast-from-var3048-to-var877 (var3048) var877)
(declare-fun get/918749235 (var1271 var1798) var877)
(declare-fun cast-from-var2208-to-var1271 (var2208) var1271)
(declare-const null-var2208 var2208)
(declare-const null-var1798 var1798)
(declare-const var2197 var2208) ; Statement: r4 := @this: com.github.jknack.handlebars.Context$PartialCtx 
(assert (not (= var2197 null-var2208)))
(declare-const var3633 var1798) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var3633 null-var1798)))
(define-const var308 var877 (var1798_get/-1216255739 var3633 0)) ; Statement: $r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var977 var3048 (cast-from-var877-to-var3048 var308)) ; Statement: $r2 = (com.github.jknack.handlebars.PathExpression) $r1 
(assert true)
(define-const var2588 String (toString/-522406933 (cast-from-var3048-to-var877 var977))) ; Statement: r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3661 Bool (= var2588 "this")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("this") 
 ; Statement: if $z0 == 0 goto $r5 = r4.<com.github.jknack.handlebars.Context$PartialCtx: com.github.jknack.handlebars.Context extendedContext> 
(assert (not (= (ite var3661 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2427 var877 (get/918749235 (cast-from-var2208-to-var1271 var2197) var3633)) ; Statement: $r8 = specialinvoke r4.<com.github.jknack.handlebars.Context: java.lang.Object get(java.util.List)>(r0) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1798_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var877-to-var3048=([java.lang.Object], com.github.jknack.handlebars.PathExpression), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var3048-to-var877=([com.github.jknack.handlebars.PathExpression], java.lang.Object), get/918749235=([com.github.jknack.handlebars.Context, java.util.List], java.lang.Object), cast-from-var2208-to-var1271=([com.github.jknack.handlebars.Context$PartialCtx], com.github.jknack.handlebars.Context)}
; {var2208=com.github.jknack.handlebars.Context$PartialCtx, var2197=r4, var1798=java.util.List, var3633=r0, var877=java.lang.Object, var308=$r1, var3048=com.github.jknack.handlebars.PathExpression, var977=$r2, var2588=r3, var3661=$z0, var1271=com.github.jknack.handlebars.Context, var2427=$r8}
; {com.github.jknack.handlebars.Context$PartialCtx=var2208, r4=var2197, java.util.List=var1798, r0=var3633, java.lang.Object=var877, $r1=var308, com.github.jknack.handlebars.PathExpression=var3048, $r2=var977, r3=var2588, $z0=var3661, com.github.jknack.handlebars.Context=var1271, $r8=var2427}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: com.github.jknack.handlebars.Context$PartialCtx;	r0 := @parameter0: java.util.List;	$r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0);	$r2 = (com.github.jknack.handlebars.PathExpression) $r1;	r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("this");	if $z0 == 0 goto $r5 = r4.<com.github.jknack.handlebars.Context$PartialCtx: com.github.jknack.handlebars.Context extendedContext>;	$r8 = specialinvoke r4.<com.github.jknack.handlebars.Context: java.lang.Object get(java.util.List)>(r0);	return $r8
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2040 0)
(declare-sort var559 0)
(declare-sort var425 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var559_size/-959786421 (var559) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun method/-1599385294 (var2040) var425)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun markSymbolBoundariesInLvarTypesDescriptor/713645671 (var425 String) String)
(declare-const null-var2040 var2040)
(declare-const null-var559 var559)
(declare-const var639 var2040) ; Statement: r2 := @this: jdk.nashorn.internal.codegen.CodeGenerator 
(assert (not (= var639 null-var2040)))
(declare-const var60 var559) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var60 null-var559)))
(define-const var3158 Int (var559_size/-959786421 var60)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var251 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var251 var3158)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i0) 

(declare-const var251!1 String)
(declare-const var3158!1 Int)
(define-const var272 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r3 = r2.<jdk.nashorn.internal.codegen.CodeGenerator: jdk.nashorn.internal.codegen.MethodEmitter method> 
(assert (>= var272 var3158!1)) ; Cond: i2 >= i0 
(define-const var1807 var425 (method/-1599385294 var639)) ; Statement: $r3 = r2.<jdk.nashorn.internal.codegen.CodeGenerator: jdk.nashorn.internal.codegen.MethodEmitter method> 
(assert true)
(define-const var1554 String (toString/-2075883882 var251!1)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2494 String (markSymbolBoundariesInLvarTypesDescriptor/713645671 var1807 var1554)) ; Statement: $r5 = virtualinvoke $r3.<jdk.nashorn.internal.codegen.MethodEmitter: java.lang.String markSymbolBoundariesInLvarTypesDescriptor(java.lang.String)>($r4) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var559_size/-959786421=([java.util.List], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), method/-1599385294=([jdk.nashorn.internal.codegen.CodeGenerator], jdk.nashorn.internal.codegen.MethodEmitter), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), markSymbolBoundariesInLvarTypesDescriptor/713645671=([jdk.nashorn.internal.codegen.MethodEmitter, java.lang.String], java.lang.String)}
; {var2040=jdk.nashorn.internal.codegen.CodeGenerator, var639=r2, var559=java.util.List, var60=r0, var3158=i0, var251=$r1, var272=i2, var425=jdk.nashorn.internal.codegen.MethodEmitter, var1807=$r3, var1554=$r4, var2494=$r5}
; {jdk.nashorn.internal.codegen.CodeGenerator=var2040, r2=var639, java.util.List=var559, r0=var60, i0=var3158, $r1=var251, i2=var272, jdk.nashorn.internal.codegen.MethodEmitter=var425, $r3=var1807, $r4=var1554, $r5=var2494}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: jdk.nashorn.internal.codegen.CodeGenerator;	r0 := @parameter0: java.util.List;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i0);	i2 = 0;	if i2 >= i0 goto $r3 = r2.<jdk.nashorn.internal.codegen.CodeGenerator: jdk.nashorn.internal.codegen.MethodEmitter method>;	$r3 = r2.<jdk.nashorn.internal.codegen.CodeGenerator: jdk.nashorn.internal.codegen.MethodEmitter method>;	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r3.<jdk.nashorn.internal.codegen.MethodEmitter: java.lang.String markSymbolBoundariesInLvarTypesDescriptor(java.lang.String)>($r4);	return $r5
;block_num 3
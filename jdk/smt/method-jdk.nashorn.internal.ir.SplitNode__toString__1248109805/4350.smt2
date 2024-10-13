(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3613 0)
(declare-sort var3082 0)
(declare-sort var1037 0)
(declare-sort var844 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun compileUnit/-1514077856 (var3613) var3082)
(declare-fun getClass/1258963082 (var1037) ClassObject)
(declare-fun cast-from-var3082-to-var1037 (var3082) var1037)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun body/-1514077856 (var3613) var844)
(declare-fun toString/58203324 (var844 String Bool) void)
(declare-const null-var3613 var3613)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2169 var3613) ; Statement: r1 := @this: jdk.nashorn.internal.ir.SplitNode 
(assert (not (= var2169 null-var3613)))
(declare-const var2518 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2518 null-String)))
(declare-const var3074 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3074 null-Bool)))
(assert true)
;(assert (append/672562846 var2518 "<split>(")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<split>(") 
(declare-const var2518!1 String)
(assert (= var2518!1 (str.++ var2518 "<split>(")))
(define-const var1208 var3082 (compileUnit/-1514077856 var2169)) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.SplitNode: jdk.nashorn.internal.codegen.CompileUnit compileUnit> 
(assert true)
(define-const var2711 ClassObject (getClass/1258963082 (cast-from-var3082-to-var1037 var1208))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3164 String (getSimpleName/-390194377 var2711)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
;(assert (append/672562846 var2518!1 var3164)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2518!2 String)
(assert (= var2518!2 (str.++ var2518!1 var3164)))
(assert true)
;(assert (append/672562846 var2518!2 ") ")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var2518!3 String)
(assert (= var2518!3 (str.++ var2518!2 ") ")))
(define-const var3442 var844 (body/-1514077856 var2169)) ; Statement: $r5 = r1.<jdk.nashorn.internal.ir.SplitNode: jdk.nashorn.internal.ir.Block body> 
(assert true)
;(assert (toString/58203324 var3442 var2518!3 var3074)) ; Statement: virtualinvoke $r5.<jdk.nashorn.internal.ir.Block: void toString(java.lang.StringBuilder,boolean)>(r0, z0) 

(declare-const var3442!1 var844)
(declare-const var2518!4 String)
(declare-const var3074!1 Bool)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), compileUnit/-1514077856=([jdk.nashorn.internal.ir.SplitNode], jdk.nashorn.internal.codegen.CompileUnit), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3082-to-var1037=([jdk.nashorn.internal.codegen.CompileUnit], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), body/-1514077856=([jdk.nashorn.internal.ir.SplitNode], jdk.nashorn.internal.ir.Block), toString/58203324=([jdk.nashorn.internal.ir.Block, java.lang.StringBuilder, boolean], void)}
; {var3613=jdk.nashorn.internal.ir.SplitNode, var2169=r1, var2518=r0, var3074=z0, var3082=jdk.nashorn.internal.codegen.CompileUnit, var1208=$r2, var1037=java.lang.Object, var2711=$r3, var3164=$r4, var844=jdk.nashorn.internal.ir.Block, var3442=$r5}
; {jdk.nashorn.internal.ir.SplitNode=var3613, r1=var2169, r0=var2518, z0=var3074, jdk.nashorn.internal.codegen.CompileUnit=var3082, $r2=var1208, java.lang.Object=var1037, $r3=var2711, $r4=var3164, jdk.nashorn.internal.ir.Block=var844, $r5=var3442}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<jdk.nashorn.internal.ir.Block: void toString(java.lang.StringBuilder,boolean)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3}
;stmts r1 := @this: jdk.nashorn.internal.ir.SplitNode;	r0 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<split>(");	$r2 = r1.<jdk.nashorn.internal.ir.SplitNode: jdk.nashorn.internal.codegen.CompileUnit compileUnit>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getSimpleName()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r5 = r1.<jdk.nashorn.internal.ir.SplitNode: jdk.nashorn.internal.ir.Block body>;	virtualinvoke $r5.<jdk.nashorn.internal.ir.Block: void toString(java.lang.StringBuilder,boolean)>(r0, z0);	return
;block_num 1
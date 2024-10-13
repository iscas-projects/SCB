(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2306 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/740977591 (var2306 String Bool) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2306 var2306)
(declare-const null-Bool Bool)
(declare-const var2110 var2306) ; Statement: r1 := @this: jdk.nashorn.internal.ir.Node 
(assert (not (= var2110 null-var2306)))
(declare-const var1854 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1854 null-Bool)))
(define-const var3847 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3847)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3847!1 String)
(assert (= var3847!1 ""))
(assert true)
;(assert (toString/740977591 var2110 var3847!1 var1854)) ; Statement: virtualinvoke r1.<jdk.nashorn.internal.ir.Node: void toString(java.lang.StringBuilder,boolean)>($r0, z0) 

(declare-const var2110!1 var2306)
(declare-const var3847!2 String)
(declare-const var1854!1 Bool)
(assert true)
(define-const var788 String (toString/-2075883882 var3847!2)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/740977591=([jdk.nashorn.internal.ir.Node, java.lang.StringBuilder, boolean], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2306=jdk.nashorn.internal.ir.Node, var2110=r1, var1854=z0, var3847=$r0, var788=$r2}
; {jdk.nashorn.internal.ir.Node=var2306, r1=var2110, z0=var1854, $r0=var3847, $r2=var788}
;seq <java.lang.StringBuilder: void <init>()>;	<jdk.nashorn.internal.ir.Node: void toString(java.lang.StringBuilder,boolean)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.Node;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke r1.<jdk.nashorn.internal.ir.Node: void toString(java.lang.StringBuilder,boolean)>($r0, z0);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1
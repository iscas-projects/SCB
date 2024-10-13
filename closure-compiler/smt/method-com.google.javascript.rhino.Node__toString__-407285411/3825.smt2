(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1449 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/1534153112 (var1449 String Bool Bool Bool) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1449 var1449)
(declare-const null-Bool Bool)
(declare-const var3082 var1449) ; Statement: r1 := @this: com.google.javascript.rhino.Node 
(assert (not (= var3082 null-var1449)))
(declare-const var3093 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3093 null-Bool)))
(declare-const var3948 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3948 null-Bool)))
(declare-const var161 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var161 null-Bool)))
(define-const var1076 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1076)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1076!1 String)
(assert (= var1076!1 ""))
(assert true)
;(assert (toString/1534153112 var3082 var1076!1 var3093 var3948 var161)) ; Statement: virtualinvoke r1.<com.google.javascript.rhino.Node: void toString(java.lang.StringBuilder,boolean,boolean,boolean)>($r0, z0, z1, z2) 

(declare-const var3082!1 var1449)
(declare-const var1076!2 String)
(declare-const var3093!1 Bool)
(declare-const var3948!1 Bool)
(declare-const var161!1 Bool)
(assert true)
(define-const var416 String (toString/-2075883882 var1076!2)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/1534153112=([com.google.javascript.rhino.Node, java.lang.StringBuilder, boolean, boolean, boolean], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1449=com.google.javascript.rhino.Node, var3082=r1, var3093=z0, var3948=z1, var161=z2, var1076=$r0, var416=$r2}
; {com.google.javascript.rhino.Node=var1449, r1=var3082, z0=var3093, z1=var3948, z2=var161, $r0=var1076, $r2=var416}
;seq <java.lang.StringBuilder: void <init>()>;	<com.google.javascript.rhino.Node: void toString(java.lang.StringBuilder,boolean,boolean,boolean)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.rhino.Node;	z0 := @parameter0: boolean;	z1 := @parameter1: boolean;	z2 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke r1.<com.google.javascript.rhino.Node: void toString(java.lang.StringBuilder,boolean,boolean,boolean)>($r0, z0, z1, z2);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1
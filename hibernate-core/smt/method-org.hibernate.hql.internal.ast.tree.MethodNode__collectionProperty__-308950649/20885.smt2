(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2506 0)
(declare-sort var621 0)
(declare-sort var861 0)
(declare-sort var938 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var861-init () var861)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var621_getText/-200495485 (var621) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1580113206 (var861 String) void)
(declare-fun cast-from-var861-to-var938 (var861) var938)
(declare-const null-var2506 var2506)
(declare-const null-var621 var621)
(declare-const var3111 var2506) ; Statement: r5 := @this: org.hibernate.hql.internal.ast.tree.MethodNode 
(assert (not (= var3111 null-var2506)))
(declare-const var1776 var621) ; Statement: r0 := @parameter0: antlr.collections.AST 
(assert (not (= var1776 null-var621)))
(declare-const var3171 var621) ; Statement: r3 := @parameter1: antlr.collections.AST 
(assert (not (= var3171 null-var621)))
 ; Statement: if r0 != null goto r1 = (org.hibernate.hql.internal.ast.tree.SqlNode) r0 
(assert (not (not (= var1776 null-var621)))) ; Negate: Cond: r0 != null  
(define-const var2064 var861 var861-init) ; Statement: $r14 = new antlr.SemanticException 
(define-const var980 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var980)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var980!1 String)
(assert (= var980!1 ""))
(assert true)
(define-const var285 String (append/672562846 var980!1 "Collection function ")) ; Statement: $r9 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Collection function ") 
(declare-const var980!2 String)
(assert (= var980!2 (str.++ var980!1 "Collection function ")))
(define-const var3595 String (var621_getText/-200495485 var3171)) ; Statement: $r8 = interfaceinvoke r3.<antlr.collections.AST: java.lang.String getText()>() 
(assert true)
(define-const var3429 String (append/672562846 var285 var3595)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var285!1 String)
(assert (= var285!1 (str.++ var285 var3595)))
(assert true)
(define-const var3337 String (append/672562846 var3429 " has no path!")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" has no path!") 
(declare-const var3429!1 String)
(assert (= var3429!1 (str.++ var3429 " has no path!")))
(assert true)
(define-const var596 String (toString/-2075883882 var3337)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1580113206 var2064 var596)) ; Statement: specialinvoke $r14.<antlr.SemanticException: void <init>(java.lang.String)>($r12) 

(declare-const var2064!1 var861)
(declare-const var596!1 String)
(define-const var1205 var938 (cast-from-var861-to-var938 var2064!1)) ; Statement: $r15 = (java.lang.Throwable) $r14 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var861-init=([], antlr.SemanticException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var621_getText/-200495485=([antlr.collections.AST], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1580113206=([antlr.SemanticException, java.lang.String], void), cast-from-var861-to-var938=([antlr.SemanticException], java.lang.Throwable)}
; {var2506=org.hibernate.hql.internal.ast.tree.MethodNode, var3111=r5, var621=antlr.collections.AST, var1776=r0, var3171=r3, var861=antlr.SemanticException, var2064=$r14, var980=$r13, var285=$r9, var3595=$r8, var3429=$r10, var3337=$r11, var596=$r12, var938=java.lang.Throwable, var1205=$r15}
; {org.hibernate.hql.internal.ast.tree.MethodNode=var2506, r5=var3111, antlr.collections.AST=var621, r0=var1776, r3=var3171, antlr.SemanticException=var861, $r14=var2064, $r13=var980, $r9=var285, $r8=var3595, $r10=var3429, $r11=var3337, $r12=var596, java.lang.Throwable=var938, $r15=var1205}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.hql.internal.ast.tree.MethodNode;	r0 := @parameter0: antlr.collections.AST;	r3 := @parameter1: antlr.collections.AST;	if r0 != null goto r1 = (org.hibernate.hql.internal.ast.tree.SqlNode) r0;	$r14 = new antlr.SemanticException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Collection function ");	$r8 = interfaceinvoke r3.<antlr.collections.AST: java.lang.String getText()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" has no path!");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<antlr.SemanticException: void <init>(java.lang.String)>($r12);	$r15 = (java.lang.Throwable) $r14;	throw $r15
;block_num 2
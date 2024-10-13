(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3690 0)
(declare-sort var1650 0)
(declare-sort var1276 0)
(declare-sort var621 0)
(declare-sort var344 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var621-init () var621)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun expressionDescription/-392226698 (var3690) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1580113206 (var621 String) void)
(declare-fun cast-from-var621-to-var344 (var621) var344)
(declare-const null-var3690 var3690)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const null-var1276 var1276)
(declare-const var1729 var3690) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.MapEntryNode 
(assert (not (= var1729 null-var3690)))
(declare-const var3291 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3291 null-Bool)))
(declare-const var3285 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3285 null-Bool)))
(declare-const var1682 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var1682 null-String)))
(declare-const var1967 var1276) ; Statement: r0 := @parameter3: antlr.collections.AST 
(assert (not (= var1967 null-var1276)))
(declare-const var761 var1276) ; Statement: r3 := @parameter4: antlr.collections.AST 
(assert (not (= var761 null-var1276)))
 ; Statement: if r0 == null goto specialinvoke r1.<org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode: void resolve(boolean,boolean,java.lang.String,antlr.collections.AST,antlr.collections.AST)>(z0, z1, r2, r0, r3) 
(assert (not (= var1967 null-var1276))) ; Negate: Cond: r0 == null  
(define-const var2147 var621 var621-init) ; Statement: $r11 = new antlr.SemanticException 
(define-const var3541 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3541)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3541!1 String)
(assert (= var3541!1 ""))
(assert true)
(define-const var2320 String (expressionDescription/-392226698 var1729)) ; Statement: $r6 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.MapEntryNode: java.lang.String expressionDescription()>() 
(assert true)
(define-const var3012 String (append/672562846 var3541!1 var2320)) ; Statement: $r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3541!2 String)
(assert (= var3541!2 (str.++ var3541!1 var2320)))
(assert true)
(define-const var671 String (append/672562846 var3012 " expression cannot be further de-referenced")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" expression cannot be further de-referenced") 
(declare-const var3012!1 String)
(assert (= var3012!1 (str.++ var3012 " expression cannot be further de-referenced")))
(assert true)
(define-const var3477 String (toString/-2075883882 var671)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1580113206 var2147 var3477)) ; Statement: specialinvoke $r11.<antlr.SemanticException: void <init>(java.lang.String)>($r9) 

(declare-const var2147!1 var621)
(declare-const var3477!1 String)
(define-const var1377 var344 (cast-from-var621-to-var344 var2147!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var621-init=([], antlr.SemanticException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), expressionDescription/-392226698=([org.hibernate.hql.internal.ast.tree.MapEntryNode], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1580113206=([antlr.SemanticException, java.lang.String], void), cast-from-var621-to-var344=([antlr.SemanticException], java.lang.Throwable)}
; {var3690=org.hibernate.hql.internal.ast.tree.MapEntryNode, var1729=r1, var3291=z0, var3285=z1, var1682=r2, var1650=null_type, var1276=antlr.collections.AST, var1967=r0, var761=r3, var621=antlr.SemanticException, var2147=$r11, var3541=$r10, var2320=$r6, var3012=$r7, var671=$r8, var3477=$r9, var344=java.lang.Throwable, var1377=$r12}
; {org.hibernate.hql.internal.ast.tree.MapEntryNode=var3690, r1=var1729, z0=var3291, z1=var3285, r2=var1682, null_type=var1650, antlr.collections.AST=var1276, r0=var1967, r3=var761, antlr.SemanticException=var621, $r11=var2147, $r10=var3541, $r6=var2320, $r7=var3012, $r8=var671, $r9=var3477, java.lang.Throwable=var344, $r12=var1377}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.MapEntryNode;	z0 := @parameter0: boolean;	z1 := @parameter1: boolean;	r2 := @parameter2: java.lang.String;	r0 := @parameter3: antlr.collections.AST;	r3 := @parameter4: antlr.collections.AST;	if r0 == null goto specialinvoke r1.<org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode: void resolve(boolean,boolean,java.lang.String,antlr.collections.AST,antlr.collections.AST)>(z0, z1, r2, r0, r3);	$r11 = new antlr.SemanticException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.MapEntryNode: java.lang.String expressionDescription()>();	$r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" expression cannot be further de-referenced");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<antlr.SemanticException: void <init>(java.lang.String)>($r9);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2
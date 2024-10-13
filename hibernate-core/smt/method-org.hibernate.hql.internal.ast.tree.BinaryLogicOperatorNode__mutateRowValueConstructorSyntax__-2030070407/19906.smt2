(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var64 0)
(declare-sort var3092 0)
(declare-sort var878 0)
(declare-sort var221 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/210539742 (var3092) Int)
(declare-fun cast-from-var64-to-var3092 (var64) var3092)
(declare-fun getText/-2049517291 (var3092) String)
(declare-fun isInsideSetClause/-113537325 (var64) Bool)
(declare-fun var878-init () var878)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1980921278 (var878 String) void)
(declare-fun cast-from-var878-to-var221 (var878) var221)
(declare-const null-var64 var64)
(declare-const null-Int Int)
(declare-const var3125 var64) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.BinaryLogicOperatorNode 
(assert (not (= var3125 null-var64)))
(declare-const var3691 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var3691 null-Int)))
(assert true)
(define-const var3545 Int (getType/210539742 (cast-from-var64-to-var3092 var3125))) ; Statement: i0 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.BinaryLogicOperatorNode: int getType()>() 
(assert true)
(define-const var1760 String (getText/-2049517291 (cast-from-var64-to-var3092 var3125))) ; Statement: r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.BinaryLogicOperatorNode: java.lang.String getText()>() 
(assert true)
(define-const var3237 Bool (isInsideSetClause/-113537325 var3125)) ; Statement: $z0 = specialinvoke r0.<org.hibernate.hql.internal.ast.tree.BinaryLogicOperatorNode: boolean isInsideSetClause()>() 
 ; Statement: if $z0 != 0 goto $r17 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.BinaryLogicOperatorNode: org.hibernate.hql.internal.ast.tree.Node getLeftHandOperand()>() 
(assert (not (not (= (ite var3237 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: lookupswitch(i0) {     case 108: goto virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.BinaryLogicOperatorNode: void setType(int)>(6);     case 115: goto virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.BinaryLogicOperatorNode: void setType(int)>(41);     default: goto $r25 = new org.hibernate.hql.internal.ast.QuerySyntaxException; } 
(assert (and (not (= var3545 115)) (and (not (= var3545 108)) true))) ; Intersect: Negate: Cond: i0 == 115   and Intersect: Negate: Cond: i0 == 108   and Non Conditional  
(define-const var1146 var878 var878-init) ; Statement: $r25 = new org.hibernate.hql.internal.ast.QuerySyntaxException 
(define-const var1110 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1110)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1110!1 String)
(assert (= var1110!1 ""))
(assert true)
(define-const var1660 String (append/672562846 var1110!1 var1760)) ; Statement: $r14 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1110!2 String)
(assert (= var1110!2 (str.++ var1110!1 var1760)))
(assert true)
(define-const var1291 String (append/672562846 var1660 " operator not supported on composite types.")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" operator not supported on composite types.") 
(declare-const var1660!1 String)
(assert (= var1660!1 (str.++ var1660 " operator not supported on composite types.")))
(assert true)
(define-const var1699 String (toString/-2075883882 var1291)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1980921278 var1146 var1699)) ; Statement: specialinvoke $r25.<org.hibernate.hql.internal.ast.QuerySyntaxException: void <init>(java.lang.String)>($r16) 

(declare-const var1146!1 var878)
(declare-const var1699!1 String)
(define-const var3568 var221 (cast-from-var878-to-var221 var1146!1)) ; Statement: $r26 = (java.lang.Throwable) $r25 
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/210539742=([antlr.CommonAST], int), cast-from-var64-to-var3092=([org.hibernate.hql.internal.ast.tree.BinaryLogicOperatorNode], antlr.CommonAST), getText/-2049517291=([antlr.CommonAST], java.lang.String), isInsideSetClause/-113537325=([org.hibernate.hql.internal.ast.tree.BinaryLogicOperatorNode], boolean), var878-init=([], org.hibernate.hql.internal.ast.QuerySyntaxException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1980921278=([org.hibernate.hql.internal.ast.QuerySyntaxException, java.lang.String], void), cast-from-var878-to-var221=([org.hibernate.hql.internal.ast.QuerySyntaxException], java.lang.Throwable)}
; {var64=org.hibernate.hql.internal.ast.tree.BinaryLogicOperatorNode, var3125=r0, var3691=i1, var3092=antlr.CommonAST, var3545=i0, var1760=r1, var3237=$z0, var878=org.hibernate.hql.internal.ast.QuerySyntaxException, var1146=$r25, var1110=$r24, var1660=$r14, var1291=$r15, var1699=$r16, var221=java.lang.Throwable, var3568=$r26}
; {org.hibernate.hql.internal.ast.tree.BinaryLogicOperatorNode=var64, r0=var3125, i1=var3691, antlr.CommonAST=var3092, i0=var3545, r1=var1760, $z0=var3237, org.hibernate.hql.internal.ast.QuerySyntaxException=var878, $r25=var1146, $r24=var1110, $r14=var1660, $r15=var1291, $r16=var1699, java.lang.Throwable=var221, $r26=var3568}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.BinaryLogicOperatorNode;	i1 := @parameter0: int;	i0 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.BinaryLogicOperatorNode: int getType()>();	r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.BinaryLogicOperatorNode: java.lang.String getText()>();	$z0 = specialinvoke r0.<org.hibernate.hql.internal.ast.tree.BinaryLogicOperatorNode: boolean isInsideSetClause()>();	if $z0 != 0 goto $r17 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.BinaryLogicOperatorNode: org.hibernate.hql.internal.ast.tree.Node getLeftHandOperand()>();	lookupswitch(i0) {     case 108: goto virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.BinaryLogicOperatorNode: void setType(int)>(6);     case 115: goto virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.BinaryLogicOperatorNode: void setType(int)>(41);     default: goto $r25 = new org.hibernate.hql.internal.ast.QuerySyntaxException; };	$r25 = new org.hibernate.hql.internal.ast.QuerySyntaxException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" operator not supported on composite types.");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r25.<org.hibernate.hql.internal.ast.QuerySyntaxException: void <init>(java.lang.String)>($r16);	$r26 = (java.lang.Throwable) $r25;	throw $r26
;block_num 3
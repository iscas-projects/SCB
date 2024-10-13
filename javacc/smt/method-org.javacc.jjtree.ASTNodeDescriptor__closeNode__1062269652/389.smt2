(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1093 0)
(declare-sort var2420 0)
(declare-sort var1208 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun expression/-1689018267 (var1093) var1208)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1093 var1093)
(declare-const null-String String)
(declare-const null-var1208 var1208)
(declare-const var1033 var1093) ; Statement: r0 := @this: org.javacc.jjtree.ASTNodeDescriptor 
(assert (not (= var1033 null-var1093)))
(declare-const var2295 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2295 null-String)))
(define-const var2017 var1208 (expression/-1689018267 var1033)) ; Statement: $r1 = r0.<org.javacc.jjtree.ASTNodeDescriptor: org.javacc.jjtree.ASTNodeDescriptorExpression expression> 
 ; Statement: if $r1 != null goto $z0 = r0.<org.javacc.jjtree.ASTNodeDescriptor: boolean isGT> 
(assert (not (not (= var2017 null-var1208)))) ; Negate: Cond: $r1 != null  
(define-const var388 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var388)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var388!1 String)
(assert (= var388!1 ""))
(assert true)
(define-const var3151 String (append/672562846 var388!1 "jjtree.closeNodeScope(")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jjtree.closeNodeScope(") 
(declare-const var388!2 String)
(assert (= var388!2 (str.++ var388!1 "jjtree.closeNodeScope(")))
(assert true)
(define-const var2337 String (append/672562846 var3151 var2295)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3151!1 String)
(assert (= var3151!1 (str.++ var3151 var2295)))
(assert true)
(define-const var2896 String (append/672562846 var2337 ", true);")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", true);") 
(declare-const var2337!1 String)
(assert (= var2337!1 (str.++ var2337 ", true);")))
(assert true)
(define-const var2233 String (toString/-2075883882 var2896)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {expression/-1689018267=([org.javacc.jjtree.ASTNodeDescriptor], org.javacc.jjtree.ASTNodeDescriptorExpression), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1093=org.javacc.jjtree.ASTNodeDescriptor, var1033=r0, var2295=r3, var2420=null_type, var1208=org.javacc.jjtree.ASTNodeDescriptorExpression, var2017=$r1, var388=$r19, var3151=$r20, var2337=$r21, var2896=$r22, var2233=$r23}
; {org.javacc.jjtree.ASTNodeDescriptor=var1093, r0=var1033, r3=var2295, null_type=var2420, org.javacc.jjtree.ASTNodeDescriptorExpression=var1208, $r1=var2017, $r19=var388, $r20=var3151, $r21=var2337, $r22=var2896, $r23=var2233}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.jjtree.ASTNodeDescriptor;	r3 := @parameter0: java.lang.String;	$r1 = r0.<org.javacc.jjtree.ASTNodeDescriptor: org.javacc.jjtree.ASTNodeDescriptorExpression expression>;	if $r1 != null goto $z0 = r0.<org.javacc.jjtree.ASTNodeDescriptor: boolean isGT>;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jjtree.closeNodeScope(");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", true);");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	return $r23
;block_num 2
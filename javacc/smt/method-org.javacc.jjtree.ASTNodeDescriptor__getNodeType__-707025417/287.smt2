(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1879 0)
(declare-sort var2156 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2156_getMulti/-1858061690 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2156_getNodePrefix/-1263226158 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1689018267 (var1879) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1879 var1879)
(declare-const var1341 var1879) ; Statement: r2 := @this: org.javacc.jjtree.ASTNodeDescriptor 
(assert (not (= var1341 null-var1879)))
(define-const var131 Bool var2156_getMulti/-1858061690) ; Statement: $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getMulti()>() 
 ; Statement: if $z0 == 0 goto return "SimpleNode" 
(assert (not (= (ite var131 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var203 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var203)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var203!1 String)
(assert (= var203!1 ""))
(define-const var46 String var2156_getNodePrefix/-1263226158) ; Statement: $r1 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodePrefix()>() 
(assert true)
(define-const var1914 String (append/672562846 var203!1 var46)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var203!2 String)
(assert (= var203!2 (str.++ var203!1 var46)))
(define-const var1628 String (name/-1689018267 var1341)) ; Statement: $r3 = r2.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String name> 
(assert true)
(define-const var634 String (append/672562846 var1914 var1628)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1914!1 String)
(assert (= var1914!1 (str.++ var1914 var1628)))
(assert true)
(define-const var1829 String (toString/-2075883882 var634)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2156_getMulti/-1858061690=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2156_getNodePrefix/-1263226158=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-1689018267=([org.javacc.jjtree.ASTNodeDescriptor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1879=org.javacc.jjtree.ASTNodeDescriptor, var1341=r2, var2156=org.javacc.jjtree.JJTreeOptions, var131=$z0, var203=$r0, var46=$r1, var1914=$r4, var1628=$r3, var634=$r5, var1829=$r6}
; {org.javacc.jjtree.ASTNodeDescriptor=var1879, r2=var1341, org.javacc.jjtree.JJTreeOptions=var2156, $z0=var131, $r0=var203, $r1=var46, $r4=var1914, $r3=var1628, $r5=var634, $r6=var1829}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.javacc.jjtree.ASTNodeDescriptor;	$z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getMulti()>();	if $z0 == 0 goto return "SimpleNode";	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodePrefix()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r3 = r2.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String name>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var72 0)
(declare-sort var178 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun faked/-1689018267 (var72) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/2055603450 (var178) String)
(declare-fun cast-from-var72-to-var178 (var72) var178)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1689018267 (var72) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var72 var72)
(declare-const var2884 var72) ; Statement: r0 := @this: org.javacc.jjtree.ASTNodeDescriptor 
(assert (not (= var2884 null-var72)))
(define-const var502 Bool (faked/-1689018267 var2884)) ; Statement: $z0 = r0.<org.javacc.jjtree.ASTNodeDescriptor: boolean faked> 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var502 1 0) 0)) ; Cond: $z0 == 0 
(define-const var749 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var749)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var749!1 String)
(assert (= var749!1 ""))
(assert true)
(define-const var2017 String (toString/2055603450 (cast-from-var72-to-var178 var2884))) ; Statement: $r2 = specialinvoke r0.<org.javacc.jjtree.JJTreeNode: java.lang.String toString()>() 
(assert true)
(define-const var1397 String (append/672562846 var749!1 var2017)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var749!2 String)
(assert (= var749!2 (str.++ var749!1 var2017)))
(assert true)
(define-const var2298 String (append/672562846 var1397 ": ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var1397!1 String)
(assert (= var1397!1 (str.++ var1397 ": ")))
(define-const var2392 String (name/-1689018267 var2884)) ; Statement: $r4 = r0.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String name> 
(assert true)
(define-const var1281 String (append/672562846 var2298 var2392)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2298!1 String)
(assert (= var2298!1 (str.++ var2298 var2392)))
(assert true)
(define-const var3228 String (toString/-2075883882 var1281)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {faked/-1689018267=([org.javacc.jjtree.ASTNodeDescriptor], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/2055603450=([org.javacc.jjtree.SimpleNode], java.lang.String), cast-from-var72-to-var178=([org.javacc.jjtree.ASTNodeDescriptor], org.javacc.jjtree.SimpleNode), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-1689018267=([org.javacc.jjtree.ASTNodeDescriptor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var72=org.javacc.jjtree.ASTNodeDescriptor, var2884=r0, var502=$z0, var749=$r1, var178=org.javacc.jjtree.SimpleNode, var2017=$r2, var1397=$r3, var2298=$r5, var2392=$r4, var1281=$r6, var3228=$r7}
; {org.javacc.jjtree.ASTNodeDescriptor=var72, r0=var2884, $z0=var502, $r1=var749, org.javacc.jjtree.SimpleNode=var178, $r2=var2017, $r3=var1397, $r5=var2298, $r4=var2392, $r6=var1281, $r7=var3228}
;seq <java.lang.StringBuilder: void <init>()>;	<org.javacc.jjtree.SimpleNode: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.jjtree.ASTNodeDescriptor;	$z0 = r0.<org.javacc.jjtree.ASTNodeDescriptor: boolean faked>;	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r0.<org.javacc.jjtree.JJTreeNode: java.lang.String toString()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r4 = r0.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String name>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2
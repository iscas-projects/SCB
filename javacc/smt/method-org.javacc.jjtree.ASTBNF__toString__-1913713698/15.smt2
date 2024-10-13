(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1498 0)
(declare-sort var2579 0)
(declare-sort var1347 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/2055603450 (var2579) String)
(declare-fun cast-from-var1498-to-var2579 (var1498) var2579)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-165013491 (var1347) String)
(declare-fun cast-from-var1498-to-var1347 (var1498) var1347)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1498 var1498)
(declare-const var3983 var1498) ; Statement: r1 := @this: org.javacc.jjtree.ASTBNF 
(assert (not (= var3983 null-var1498)))
(define-const var3082 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3082)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3082!1 String)
(assert (= var3082!1 ""))
(assert true)
(define-const var2546 String (toString/2055603450 (cast-from-var1498-to-var2579 var3983))) ; Statement: $r2 = specialinvoke r1.<org.javacc.jjtree.ASTProduction: java.lang.String toString()>() 
(assert true)
(define-const var355 String (append/672562846 var3082!1 var2546)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3082!2 String)
(assert (= var3082!2 (str.++ var3082!1 var2546)))
(assert true)
(define-const var3952 String (append/672562846 var355 ": ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var355!1 String)
(assert (= var355!1 (str.++ var355 ": ")))
(define-const var1679 String (name/-165013491 (cast-from-var1498-to-var1347 var3983))) ; Statement: $r4 = r1.<org.javacc.jjtree.ASTBNF: java.lang.String name> 
(assert true)
(define-const var1565 String (append/672562846 var3952 var1679)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3952!1 String)
(assert (= var3952!1 (str.++ var3952 var1679)))
(assert true)
(define-const var1600 String (toString/-2075883882 var1565)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/2055603450=([org.javacc.jjtree.SimpleNode], java.lang.String), cast-from-var1498-to-var2579=([org.javacc.jjtree.ASTBNF], org.javacc.jjtree.SimpleNode), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-165013491=([org.javacc.jjtree.ASTProduction], java.lang.String), cast-from-var1498-to-var1347=([org.javacc.jjtree.ASTBNF], org.javacc.jjtree.ASTProduction), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1498=org.javacc.jjtree.ASTBNF, var3983=r1, var3082=$r0, var2579=org.javacc.jjtree.SimpleNode, var2546=$r2, var355=$r3, var3952=$r5, var1347=org.javacc.jjtree.ASTProduction, var1679=$r4, var1565=$r6, var1600=$r7}
; {org.javacc.jjtree.ASTBNF=var1498, r1=var3983, $r0=var3082, org.javacc.jjtree.SimpleNode=var2579, $r2=var2546, $r3=var355, $r5=var3952, org.javacc.jjtree.ASTProduction=var1347, $r4=var1679, $r6=var1565, $r7=var1600}
;seq <java.lang.StringBuilder: void <init>()>;	<org.javacc.jjtree.SimpleNode: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.javacc.jjtree.ASTBNF;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.javacc.jjtree.ASTProduction: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r4 = r1.<org.javacc.jjtree.ASTBNF: java.lang.String name>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1
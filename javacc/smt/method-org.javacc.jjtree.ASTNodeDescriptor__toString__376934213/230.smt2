(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3068 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun faked/-1689018267 (var3068) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1689018267 (var3068) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3068 var3068)
(declare-const var1450 var3068) ; Statement: r0 := @this: org.javacc.jjtree.ASTNodeDescriptor 
(assert (not (= var1450 null-var3068)))
(define-const var2541 Bool (faked/-1689018267 var1450)) ; Statement: $z0 = r0.<org.javacc.jjtree.ASTNodeDescriptor: boolean faked> 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= (ite var2541 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3271 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3271)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3271!1 String)
(assert (= var3271!1 ""))
(assert true)
(define-const var2930 String (append/672562846 var3271!1 "(faked) ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(faked) ") 
(declare-const var3271!2 String)
(assert (= var3271!2 (str.++ var3271!1 "(faked) ")))
(define-const var3648 String (name/-1689018267 var1450)) ; Statement: $r9 = r0.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String name> 
(assert true)
(define-const var291 String (append/672562846 var2930 var3648)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2930!1 String)
(assert (= var2930!1 (str.++ var2930 var3648)))
(assert true)
(define-const var3441 String (toString/-2075883882 var291)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {faked/-1689018267=([org.javacc.jjtree.ASTNodeDescriptor], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-1689018267=([org.javacc.jjtree.ASTNodeDescriptor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3068=org.javacc.jjtree.ASTNodeDescriptor, var1450=r0, var2541=$z0, var3271=$r8, var2930=$r10, var3648=$r9, var291=$r11, var3441=$r12}
; {org.javacc.jjtree.ASTNodeDescriptor=var3068, r0=var1450, $z0=var2541, $r8=var3271, $r10=var2930, $r9=var3648, $r11=var291, $r12=var3441}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.jjtree.ASTNodeDescriptor;	$z0 = r0.<org.javacc.jjtree.ASTNodeDescriptor: boolean faked>;	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(faked) ");	$r9 = r0.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String name>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 2
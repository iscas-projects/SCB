(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1278 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const var1278-parserName String)
(define-const var667 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var667)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var667!1 String)
(assert (= var667!1 ""))
(define-const var204 String var1278-parserName) ; Statement: $r1 = <org.javacc.jjtree.JJTreeGlobals: java.lang.String parserName> 
(assert true)
(define-const var1663 String (append/672562846 var667!1 var204)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var667!2 String)
(assert (= var667!2 (str.++ var667!1 var204)))
(assert true)
(define-const var614 String (append/672562846 var1663 "DefaultVisitor")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("DefaultVisitor") 
(declare-const var1663!1 String)
(assert (= var1663!1 (str.++ var1663 "DefaultVisitor")))
(assert true)
(define-const var2133 String (toString/-2075883882 var614)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var667=$r0, var1278=org.javacc.jjtree.JJTreeGlobals, var204=$r1, var1663=$r2, var614=$r3, var2133=$r4}
; {$r0=var667, org.javacc.jjtree.JJTreeGlobals=var1278, $r1=var204, $r2=var1663, $r3=var614, $r4=var2133}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = <org.javacc.jjtree.JJTreeGlobals: java.lang.String parserName>;	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("DefaultVisitor");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1
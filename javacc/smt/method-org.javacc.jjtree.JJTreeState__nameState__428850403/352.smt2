(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2301 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const var2301-parserName String)
(define-const var3303 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3303)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3303!1 String)
(assert (= var3303!1 ""))
(assert true)
(define-const var3806 String (append/672562846 var3303!1 "JJT")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JJT") 
(declare-const var3303!2 String)
(assert (= var3303!2 (str.++ var3303!1 "JJT")))
(define-const var3800 String var2301-parserName) ; Statement: $r1 = <org.javacc.jjtree.JJTreeGlobals: java.lang.String parserName> 
(assert true)
(define-const var1028 String (append/672562846 var3806 var3800)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var3806!1 String)
(assert (= var3806!1 (str.++ var3806 var3800)))
(assert true)
(define-const var1303 String (append/672562846 var1028 "State")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("State") 
(declare-const var1028!1 String)
(assert (= var1028!1 (str.++ var1028 "State")))
(assert true)
(define-const var3425 String (toString/-2075883882 var1303)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3303=$r0, var3806=$r2, var2301=org.javacc.jjtree.JJTreeGlobals, var3800=$r1, var1028=$r3, var1303=$r4, var3425=$r5}
; {$r0=var3303, $r2=var3806, org.javacc.jjtree.JJTreeGlobals=var2301, $r1=var3800, $r3=var1028, $r4=var1303, $r5=var3425}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JJT");	$r1 = <org.javacc.jjtree.JJTreeGlobals: java.lang.String parserName>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("State");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
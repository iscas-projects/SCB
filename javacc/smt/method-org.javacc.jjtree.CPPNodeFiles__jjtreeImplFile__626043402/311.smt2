(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3975 0)
(declare-sort var427 0)
(declare-sort var170 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3975-init () var3975)
(declare-fun var427_getJJTreeOutputDirectory/-709711143 () var3975)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var3975 var3975 String) void)
(declare-fun getAbsolutePath/-802773300 (var3975) String)
(declare-const var170-parserName String)
(define-const var3375 var3975 var3975-init) ; Statement: $r0 = new java.io.File 
(define-const var2028 var3975 var427_getJJTreeOutputDirectory/-709711143) ; Statement: $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getJJTreeOutputDirectory()>() 
(define-const var1230 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1230)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1230!1 String)
(assert (= var1230!1 ""))
(define-const var1102 String var170-parserName) ; Statement: $r2 = <org.javacc.jjtree.JJTreeGlobals: java.lang.String parserName> 
(assert true)
(define-const var2137 String (append/672562846 var1230!1 var1102)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1230!2 String)
(assert (= var1230!2 (str.++ var1230!1 var1102)))
(assert true)
(define-const var250 String (append/672562846 var2137 "Tree.cc")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Tree.cc") 
(declare-const var2137!1 String)
(assert (= var2137!1 (str.++ var2137 "Tree.cc")))
(assert true)
(define-const var777 String (toString/-2075883882 var250)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var3375 var2028 var777)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r5) 

(declare-const var3375!1 var3975)
(declare-const var2028!1 var3975)
(declare-const var777!1 String)
(assert true)
(define-const var3878 String (getAbsolutePath/-802773300 var3375!1)) ; Statement: $r7 = virtualinvoke $r0.<java.io.File: java.lang.String getAbsolutePath()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3975-init=([], java.io.File), var427_getJJTreeOutputDirectory/-709711143=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), getAbsolutePath/-802773300=([java.io.File], java.lang.String)}
; {var3975=java.io.File, var3375=$r0, var427=org.javacc.jjtree.JJTreeOptions, var2028=$r6, var1230=$r1, var170=org.javacc.jjtree.JJTreeGlobals, var1102=$r2, var2137=$r3, var250=$r4, var777=$r5, var3878=$r7}
; {java.io.File=var3975, $r0=var3375, org.javacc.jjtree.JJTreeOptions=var427, $r6=var2028, $r1=var1230, org.javacc.jjtree.JJTreeGlobals=var170, $r2=var1102, $r3=var2137, $r4=var250, $r5=var777, $r7=var3878}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new java.io.File;	$r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getJJTreeOutputDirectory()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = <org.javacc.jjtree.JJTreeGlobals: java.lang.String parserName>;	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Tree.cc");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r5);	$r7 = virtualinvoke $r0.<java.io.File: java.lang.String getAbsolutePath()>();	return $r7
;block_num 1
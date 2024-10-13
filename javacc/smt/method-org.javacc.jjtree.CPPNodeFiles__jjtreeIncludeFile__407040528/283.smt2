(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var393 0)
(declare-sort var3554 0)
(declare-sort var3176 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var393-init () var393)
(declare-fun var3554_getJJTreeOutputDirectory/-709711143 () var393)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var393 var393 String) void)
(declare-fun getAbsolutePath/-802773300 (var393) String)
(declare-const var3176-parserName String)
(define-const var567 var393 var393-init) ; Statement: $r0 = new java.io.File 
(define-const var2003 var393 var3554_getJJTreeOutputDirectory/-709711143) ; Statement: $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getJJTreeOutputDirectory()>() 
(define-const var3850 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3850)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3850!1 String)
(assert (= var3850!1 ""))
(define-const var1070 String var3176-parserName) ; Statement: $r2 = <org.javacc.jjtree.JJTreeGlobals: java.lang.String parserName> 
(assert true)
(define-const var2203 String (append/672562846 var3850!1 var1070)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3850!2 String)
(assert (= var3850!2 (str.++ var3850!1 var1070)))
(assert true)
(define-const var208 String (append/672562846 var2203 "Tree.h")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Tree.h") 
(declare-const var2203!1 String)
(assert (= var2203!1 (str.++ var2203 "Tree.h")))
(assert true)
(define-const var3292 String (toString/-2075883882 var208)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var567 var2003 var3292)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r5) 

(declare-const var567!1 var393)
(declare-const var2003!1 var393)
(declare-const var3292!1 String)
(assert true)
(define-const var3514 String (getAbsolutePath/-802773300 var567!1)) ; Statement: $r7 = virtualinvoke $r0.<java.io.File: java.lang.String getAbsolutePath()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var393-init=([], java.io.File), var3554_getJJTreeOutputDirectory/-709711143=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), getAbsolutePath/-802773300=([java.io.File], java.lang.String)}
; {var393=java.io.File, var567=$r0, var3554=org.javacc.jjtree.JJTreeOptions, var2003=$r6, var3850=$r1, var3176=org.javacc.jjtree.JJTreeGlobals, var1070=$r2, var2203=$r3, var208=$r4, var3292=$r5, var3514=$r7}
; {java.io.File=var393, $r0=var567, org.javacc.jjtree.JJTreeOptions=var3554, $r6=var2003, $r1=var3850, org.javacc.jjtree.JJTreeGlobals=var3176, $r2=var1070, $r3=var2203, $r4=var208, $r5=var3292, $r7=var3514}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new java.io.File;	$r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getJJTreeOutputDirectory()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = <org.javacc.jjtree.JJTreeGlobals: java.lang.String parserName>;	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Tree.h");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r5);	$r7 = virtualinvoke $r0.<java.io.File: java.lang.String getAbsolutePath()>();	return $r7
;block_num 1
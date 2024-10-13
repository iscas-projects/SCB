(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1804 0)
(declare-sort var3773 0)
(declare-sort var1887 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1804_visitorClass/-25171238 () String)
(declare-fun var3773-init () var3773)
(declare-fun var1887_getJJTreeOutputDirectory/-709711143 () var3773)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var3773 var3773 String) void)
(declare-fun getAbsolutePath/-802773300 (var3773) String)
(define-const var1681 String var1804_visitorClass/-25171238) ; Statement: r0 = staticinvoke <org.javacc.jjtree.CPPNodeFiles: java.lang.String visitorClass()>() 
(define-const var702 var3773 var3773-init) ; Statement: $r1 = new java.io.File 
(define-const var954 var3773 var1887_getJJTreeOutputDirectory/-709711143) ; Statement: $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getJJTreeOutputDirectory()>() 
(define-const var2223 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2223)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2223!1 String)
(assert (= var2223!1 ""))
(assert true)
(define-const var2042 String (append/672562846 var2223!1 var1681)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2223!2 String)
(assert (= var2223!2 (str.++ var2223!1 var1681)))
(assert true)
(define-const var2969 String (append/672562846 var2042 ".h")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".h") 
(declare-const var2042!1 String)
(assert (= var2042!1 (str.++ var2042 ".h")))
(assert true)
(define-const var1594 String (toString/-2075883882 var2969)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var702 var954 var1594)) ; Statement: specialinvoke $r1.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r5) 

(declare-const var702!1 var3773)
(declare-const var954!1 var3773)
(declare-const var1594!1 String)
(assert true)
(define-const var3421 String (getAbsolutePath/-802773300 var702!1)) ; Statement: $r7 = virtualinvoke $r1.<java.io.File: java.lang.String getAbsolutePath()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var1804_visitorClass/-25171238=([], java.lang.String), var3773-init=([], java.io.File), var1887_getJJTreeOutputDirectory/-709711143=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), getAbsolutePath/-802773300=([java.io.File], java.lang.String)}
; {var1804=org.javacc.jjtree.CPPNodeFiles, var1681=r0, var3773=java.io.File, var702=$r1, var1887=org.javacc.jjtree.JJTreeOptions, var954=$r6, var2223=$r2, var2042=$r3, var2969=$r4, var1594=$r5, var3421=$r7}
; {org.javacc.jjtree.CPPNodeFiles=var1804, r0=var1681, java.io.File=var3773, $r1=var702, org.javacc.jjtree.JJTreeOptions=var1887, $r6=var954, $r2=var2223, $r3=var2042, $r4=var2969, $r5=var1594, $r7=var3421}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 = staticinvoke <org.javacc.jjtree.CPPNodeFiles: java.lang.String visitorClass()>();	$r1 = new java.io.File;	$r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getJJTreeOutputDirectory()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".h");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r5);	$r7 = virtualinvoke $r1.<java.io.File: java.lang.String getAbsolutePath()>();	return $r7
;block_num 1
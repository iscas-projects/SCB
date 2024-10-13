(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3424 0)
(declare-sort var3272 0)
(declare-sort var3016 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3272-init () var3272)
(declare-fun var3016_getJJTreeOutputDirectory/-709711143 () var3272)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var3272 var3272 String) void)
(declare-fun getAbsolutePath/-802773300 (var3272) String)
(declare-const null-String String)
(declare-const var418 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var418 null-String)))
(define-const var3000 var3272 var3272-init) ; Statement: $r0 = new java.io.File 
(define-const var2515 var3272 var3016_getJJTreeOutputDirectory/-709711143) ; Statement: $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getJJTreeOutputDirectory()>() 
(define-const var3737 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3737)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3737!1 String)
(assert (= var3737!1 ""))
(assert true)
(define-const var2244 String (append/672562846 var3737!1 var418)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3737!2 String)
(assert (= var3737!2 (str.++ var3737!1 var418)))
(assert true)
(define-const var1214 String (append/672562846 var2244 ".h")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".h") 
(declare-const var2244!1 String)
(assert (= var2244!1 (str.++ var2244 ".h")))
(assert true)
(define-const var2437 String (toString/-2075883882 var1214)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var3000 var2515 var2437)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r5) 

(declare-const var3000!1 var3272)
(declare-const var2515!1 var3272)
(declare-const var2437!1 String)
(assert true)
(define-const var2524 String (getAbsolutePath/-802773300 var3000!1)) ; Statement: $r7 = virtualinvoke $r0.<java.io.File: java.lang.String getAbsolutePath()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3272-init=([], java.io.File), var3016_getJJTreeOutputDirectory/-709711143=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), getAbsolutePath/-802773300=([java.io.File], java.lang.String)}
; {var418=r2, var3424=null_type, var3272=java.io.File, var3000=$r0, var3016=org.javacc.jjtree.JJTreeOptions, var2515=$r6, var3737=$r1, var2244=$r3, var1214=$r4, var2437=$r5, var2524=$r7}
; {r2=var418, null_type=var3424, java.io.File=var3272, $r0=var3000, org.javacc.jjtree.JJTreeOptions=var3016, $r6=var2515, $r1=var3737, $r3=var2244, $r4=var1214, $r5=var2437, $r7=var2524}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	$r0 = new java.io.File;	$r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getJJTreeOutputDirectory()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".h");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r5);	$r7 = virtualinvoke $r0.<java.io.File: java.lang.String getAbsolutePath()>();	return $r7
;block_num 1
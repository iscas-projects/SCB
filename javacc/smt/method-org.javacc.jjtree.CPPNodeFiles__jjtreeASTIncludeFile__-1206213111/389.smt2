(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3847 0)
(declare-sort var1563 0)
(declare-sort var1632 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1563-init () var1563)
(declare-fun var1632_getJJTreeOutputDirectory/-709711143 () var1563)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var1563 var1563 String) void)
(declare-fun getAbsolutePath/-802773300 (var1563) String)
(declare-const null-String String)
(declare-const var3503 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3503 null-String)))
(define-const var1550 var1563 var1563-init) ; Statement: $r0 = new java.io.File 
(define-const var1073 var1563 var1632_getJJTreeOutputDirectory/-709711143) ; Statement: $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getJJTreeOutputDirectory()>() 
(define-const var600 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var600)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var600!1 String)
(assert (= var600!1 ""))
(assert true)
(define-const var243 String (append/672562846 var600!1 var3503)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var600!2 String)
(assert (= var600!2 (str.++ var600!1 var3503)))
(assert true)
(define-const var1224 String (append/672562846 var243 ".h")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".h") 
(declare-const var243!1 String)
(assert (= var243!1 (str.++ var243 ".h")))
(assert true)
(define-const var3498 String (toString/-2075883882 var1224)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var1550 var1073 var3498)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r5) 

(declare-const var1550!1 var1563)
(declare-const var1073!1 var1563)
(declare-const var3498!1 String)
(assert true)
(define-const var3107 String (getAbsolutePath/-802773300 var1550!1)) ; Statement: $r7 = virtualinvoke $r0.<java.io.File: java.lang.String getAbsolutePath()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var1563-init=([], java.io.File), var1632_getJJTreeOutputDirectory/-709711143=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), getAbsolutePath/-802773300=([java.io.File], java.lang.String)}
; {var3503=r2, var3847=null_type, var1563=java.io.File, var1550=$r0, var1632=org.javacc.jjtree.JJTreeOptions, var1073=$r6, var600=$r1, var243=$r3, var1224=$r4, var3498=$r5, var3107=$r7}
; {r2=var3503, null_type=var3847, java.io.File=var1563, $r0=var1550, org.javacc.jjtree.JJTreeOptions=var1632, $r6=var1073, $r1=var600, $r3=var243, $r4=var1224, $r5=var3498, $r7=var3107}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	$r0 = new java.io.File;	$r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getJJTreeOutputDirectory()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".h");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r5);	$r7 = virtualinvoke $r0.<java.io.File: java.lang.String getAbsolutePath()>();	return $r7
;block_num 1
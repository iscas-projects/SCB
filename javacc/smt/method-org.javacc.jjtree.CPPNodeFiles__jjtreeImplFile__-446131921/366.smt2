(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2354 0)
(declare-sort var257 0)
(declare-sort var3797 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var257-init () var257)
(declare-fun var3797_getJJTreeOutputDirectory/-709711143 () var257)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var257 var257 String) void)
(declare-fun getAbsolutePath/-802773300 (var257) String)
(declare-const null-String String)
(declare-const var2548 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2548 null-String)))
(define-const var1955 var257 var257-init) ; Statement: $r0 = new java.io.File 
(define-const var3941 var257 var3797_getJJTreeOutputDirectory/-709711143) ; Statement: $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getJJTreeOutputDirectory()>() 
(define-const var775 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var775)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var775!1 String)
(assert (= var775!1 ""))
(assert true)
(define-const var3202 String (append/672562846 var775!1 var2548)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var775!2 String)
(assert (= var775!2 (str.++ var775!1 var2548)))
(assert true)
(define-const var3039 String (append/672562846 var3202 ".cc")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".cc") 
(declare-const var3202!1 String)
(assert (= var3202!1 (str.++ var3202 ".cc")))
(assert true)
(define-const var1365 String (toString/-2075883882 var3039)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var1955 var3941 var1365)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r5) 

(declare-const var1955!1 var257)
(declare-const var3941!1 var257)
(declare-const var1365!1 String)
(assert true)
(define-const var3217 String (getAbsolutePath/-802773300 var1955!1)) ; Statement: $r7 = virtualinvoke $r0.<java.io.File: java.lang.String getAbsolutePath()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var257-init=([], java.io.File), var3797_getJJTreeOutputDirectory/-709711143=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), getAbsolutePath/-802773300=([java.io.File], java.lang.String)}
; {var2548=r2, var2354=null_type, var257=java.io.File, var1955=$r0, var3797=org.javacc.jjtree.JJTreeOptions, var3941=$r6, var775=$r1, var3202=$r3, var3039=$r4, var1365=$r5, var3217=$r7}
; {r2=var2548, null_type=var2354, java.io.File=var257, $r0=var1955, org.javacc.jjtree.JJTreeOptions=var3797, $r6=var3941, $r1=var775, $r3=var3202, $r4=var3039, $r5=var1365, $r7=var3217}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	$r0 = new java.io.File;	$r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getJJTreeOutputDirectory()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".cc");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r5);	$r7 = virtualinvoke $r0.<java.io.File: java.lang.String getAbsolutePath()>();	return $r7
;block_num 1
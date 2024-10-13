(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var209 0)
(declare-sort var1859 0)
(declare-sort var470 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1859-init () var1859)
(declare-fun var470_getJJTreeOutputDirectory/-709711143 () var1859)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var1859 var1859 String) void)
(declare-fun getAbsolutePath/-802773300 (var1859) String)
(declare-const null-String String)
(declare-const var2686 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2686 null-String)))
(define-const var2659 var1859 var1859-init) ; Statement: $r0 = new java.io.File 
(define-const var1679 var1859 var470_getJJTreeOutputDirectory/-709711143) ; Statement: $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getJJTreeOutputDirectory()>() 
(define-const var3521 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3521)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3521!1 String)
(assert (= var3521!1 ""))
(assert true)
(define-const var3877 String (append/672562846 var3521!1 var2686)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3521!2 String)
(assert (= var3521!2 (str.++ var3521!1 var2686)))
(assert true)
(define-const var959 String (append/672562846 var3877 ".cc")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".cc") 
(declare-const var3877!1 String)
(assert (= var3877!1 (str.++ var3877 ".cc")))
(assert true)
(define-const var979 String (toString/-2075883882 var959)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var2659 var1679 var979)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r5) 

(declare-const var2659!1 var1859)
(declare-const var1679!1 var1859)
(declare-const var979!1 String)
(assert true)
(define-const var241 String (getAbsolutePath/-802773300 var2659!1)) ; Statement: $r7 = virtualinvoke $r0.<java.io.File: java.lang.String getAbsolutePath()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var1859-init=([], java.io.File), var470_getJJTreeOutputDirectory/-709711143=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), getAbsolutePath/-802773300=([java.io.File], java.lang.String)}
; {var2686=r2, var209=null_type, var1859=java.io.File, var2659=$r0, var470=org.javacc.jjtree.JJTreeOptions, var1679=$r6, var3521=$r1, var3877=$r3, var959=$r4, var979=$r5, var241=$r7}
; {r2=var2686, null_type=var209, java.io.File=var1859, $r0=var2659, org.javacc.jjtree.JJTreeOptions=var470, $r6=var1679, $r1=var3521, $r3=var3877, $r4=var959, $r5=var979, $r7=var241}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	$r0 = new java.io.File;	$r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getJJTreeOutputDirectory()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".cc");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r5);	$r7 = virtualinvoke $r0.<java.io.File: java.lang.String getAbsolutePath()>();	return $r7
;block_num 1
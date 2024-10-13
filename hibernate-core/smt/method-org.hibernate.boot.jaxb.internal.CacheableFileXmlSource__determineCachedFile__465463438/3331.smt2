(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1083 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1083-init () var1083)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getAbsolutePath/-802773300 (var1083) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1681595970 (var1083 String) void)
(declare-const null-var1083 var1083)
(declare-const var2420 var1083) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var2420 null-var1083)))
(define-const var3086 var1083 var1083-init) ; Statement: $r0 = new java.io.File 
(define-const var2063 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2063)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2063!1 String)
(assert (= var2063!1 ""))
(assert true)
(define-const var3951 String (getAbsolutePath/-802773300 var2420)) ; Statement: $r3 = virtualinvoke r2.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var1770 String (append/672562846 var2063!1 var3951)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2063!2 String)
(assert (= var2063!2 (str.++ var2063!1 var3951)))
(assert true)
(define-const var3367 String (append/672562846 var1770 ".bin")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".bin") 
(declare-const var1770!1 String)
(assert (= var1770!1 (str.++ var1770 ".bin")))
(assert true)
(define-const var666 String (toString/-2075883882 var3367)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1681595970 var3086 var666)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>($r6) 

(declare-const var3086!1 var1083)
(declare-const var666!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1083-init=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getAbsolutePath/-802773300=([java.io.File], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1681595970=([java.io.File, java.lang.String], void)}
; {var1083=java.io.File, var2420=r2, var3086=$r0, var2063=$r1, var3951=$r3, var1770=$r4, var3367=$r5, var666=$r6}
; {java.io.File=var1083, r2=var2420, $r0=var3086, $r1=var2063, $r3=var3951, $r4=var1770, $r5=var3367, $r6=var666}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.io.File;	$r0 = new java.io.File;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.io.File: java.lang.String getAbsolutePath()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".bin");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>($r6);	return $r0
;block_num 1
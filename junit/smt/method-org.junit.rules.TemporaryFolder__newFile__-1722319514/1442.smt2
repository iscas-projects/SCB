(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2482 0)
(declare-sort var1641 0)
(declare-sort var2589 0)
(declare-sort var2833 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2589-init () var2589)
(declare-fun getRoot/1879586981 (var2482) var2589)
(declare-fun <init>/-1833447926 (var2589 var2589 String) void)
(declare-fun createNewFile/-1713059409 (var2589) Bool)
(declare-fun var2833-init () var2833)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var2833 String) void)
(declare-const null-var2482 var2482)
(declare-const null-String String)
(declare-const var2136 var2482) ; Statement: r1 := @this: org.junit.rules.TemporaryFolder 
(assert (not (= var2136 null-var2482)))
(declare-const var3835 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3835 null-String)))
(define-const var3756 var2589 var2589-init) ; Statement: $r0 = new java.io.File 
(assert true)
(define-const var1243 var2589 (getRoot/1879586981 var2136)) ; Statement: $r3 = virtualinvoke r1.<org.junit.rules.TemporaryFolder: java.io.File getRoot()>() 
(assert true)
;(assert (<init>/-1833447926 var3756 var1243 var3835)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r3, r2) 

(declare-const var3756!1 var2589)
(declare-const var1243!1 var2589)
(declare-const var3835!1 String)
(assert true)
(define-const var1014 Bool (createNewFile/-1713059409 var3756!1)) ; Statement: $z0 = virtualinvoke $r0.<java.io.File: boolean createNewFile()>() 
 ; Statement: if $z0 != 0 goto return $r0 
(assert (not (not (= (ite var1014 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1518 var2833 var2833-init) ; Statement: $r4 = new java.io.IOException 
(define-const var2614 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2614)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2614!1 String)
(assert (= var2614!1 ""))
(assert true)
(define-const var3755 String (append/672562846 var2614!1 "a file with the name \u0027")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("a file with the name \'") 
(declare-const var2614!2 String)
(assert (= var2614!2 (str.++ var2614!1 "a file with the name \u0027")))
(assert true)
(define-const var3741 String (append/672562846 var3755 var3835!1)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3755!1 String)
(assert (= var3755!1 (str.++ var3755 var3835!1)))
(assert true)
(define-const var1660 String (append/672562846 var3741 "\u0027 already exists in the test folder")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' already exists in the test folder") 
(declare-const var3741!1 String)
(assert (= var3741!1 (str.++ var3741 "\u0027 already exists in the test folder")))
(assert true)
(define-const var1790 String (toString/-2075883882 var1660)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var1518 var1790)) ; Statement: specialinvoke $r4.<java.io.IOException: void <init>(java.lang.String)>($r9) 

(declare-const var1518!1 var2833)
(declare-const var1790!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2589-init=([], java.io.File), getRoot/1879586981=([org.junit.rules.TemporaryFolder], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), createNewFile/-1713059409=([java.io.File], boolean), var2833-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var2482=org.junit.rules.TemporaryFolder, var2136=r1, var3835=r2, var1641=null_type, var2589=java.io.File, var3756=$r0, var1243=$r3, var1014=$z0, var2833=java.io.IOException, var1518=$r4, var2614=$r5, var3755=$r6, var3741=$r7, var1660=$r8, var1790=$r9}
; {org.junit.rules.TemporaryFolder=var2482, r1=var2136, r2=var3835, null_type=var1641, java.io.File=var2589, $r0=var3756, $r3=var1243, $z0=var1014, java.io.IOException=var2833, $r4=var1518, $r5=var2614, $r6=var3755, $r7=var3741, $r8=var1660, $r9=var1790}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.junit.rules.TemporaryFolder;	r2 := @parameter0: java.lang.String;	$r0 = new java.io.File;	$r3 = virtualinvoke r1.<org.junit.rules.TemporaryFolder: java.io.File getRoot()>();	specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r3, r2);	$z0 = virtualinvoke $r0.<java.io.File: boolean createNewFile()>();	if $z0 != 0 goto return $r0;	$r4 = new java.io.IOException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("a file with the name \'");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' already exists in the test folder");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.io.IOException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2
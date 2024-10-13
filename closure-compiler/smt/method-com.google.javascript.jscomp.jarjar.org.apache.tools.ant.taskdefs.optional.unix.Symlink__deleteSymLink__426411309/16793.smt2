(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2940 0)
(declare-sort var3081 0)
(declare-sort var2248 0)
(declare-sort var1539 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2940_toFile/125407505 (var2940) var3081)
(declare-fun delete/2092983584 (var3081) Bool)
(declare-fun var2248-init () var2248)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1539) String)
(declare-fun cast-from-var2940-to-var1539 (var2940) var1539)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var2248 String) void)
(declare-const null-var2940 var2940)
(declare-const var3948 var2940) ; Statement: r0 := @parameter0: java.nio.file.Path 
(assert (not (= var3948 null-var2940)))
(define-const var909 var3081 (var2940_toFile/125407505 var3948)) ; Statement: $r1 = interfaceinvoke r0.<java.nio.file.Path: java.io.File toFile()>() 
(assert true)
(define-const var805 Bool (delete/2092983584 var909)) ; Statement: z0 = virtualinvoke $r1.<java.io.File: boolean delete()>() 
 ; Statement: if z0 != 0 goto return 
(assert (not (not (= (ite var805 1 0) 0)))) ; Negate: Cond: z0 != 0  
(define-const var322 var2248 var2248-init) ; Statement: $r2 = new java.io.IOException 
(define-const var1911 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1911)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1911!1 String)
(assert (= var1911!1 ""))
(assert true)
(define-const var3332 String (append/672562846 var1911!1 "Could not delete symlink at ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not delete symlink at ") 
(declare-const var1911!2 String)
(assert (= var1911!2 (str.++ var1911!1 "Could not delete symlink at ")))
(assert true)
(define-const var653 String (append/-1031950772 var3332 (cast-from-var2940-to-var1539 var3948))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3332!1 String)
(assert (str.prefixof var3332 var3332!1))
(assert true)
(define-const var471 String (toString/-2075883882 var653)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var322 var471)) ; Statement: specialinvoke $r2.<java.io.IOException: void <init>(java.lang.String)>($r6) 

(declare-const var322!1 var2248)
(declare-const var471!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2940_toFile/125407505=([java.nio.file.Path], java.io.File), delete/2092983584=([java.io.File], boolean), var2248-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2940-to-var1539=([java.nio.file.Path], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var2940=java.nio.file.Path, var3948=r0, var3081=java.io.File, var909=$r1, var805=z0, var2248=java.io.IOException, var322=$r2, var1911=$r3, var3332=$r4, var1539=java.lang.Object, var653=$r5, var471=$r6}
; {java.nio.file.Path=var2940, r0=var3948, java.io.File=var3081, $r1=var909, z0=var805, java.io.IOException=var2248, $r2=var322, $r3=var1911, $r4=var3332, java.lang.Object=var1539, $r5=var653, $r6=var471}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.nio.file.Path;	$r1 = interfaceinvoke r0.<java.nio.file.Path: java.io.File toFile()>();	z0 = virtualinvoke $r1.<java.io.File: boolean delete()>();	if z0 != 0 goto return;	$r2 = new java.io.IOException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not delete symlink at ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.io.IOException: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 2
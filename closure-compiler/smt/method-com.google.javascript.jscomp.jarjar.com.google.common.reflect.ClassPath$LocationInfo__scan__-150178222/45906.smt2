(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var293 0)
(declare-sort var3355 0)
(declare-sort var1690 0)
(declare-sort var2246 0)
(declare-sort var3555 0)
(declare-sort var2644 0)
(declare-sort var1048 0)
(declare-sort var835 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1048_access$000/291791414 () var2644)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var835) String)
(declare-fun cast-from-var3355-to-var835 (var3355) var835)
(declare-fun cast-from-var3555-to-var835 (var3555) var835)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun warning/-1321853967 (var2644 String) void)
(declare-const null-var293 var293)
(declare-const null-var3355 var3355)
(declare-const null-var1690 var1690)
(declare-const null-var2246 var2246)
(declare-const null-var3555 var3555)
(declare-const var2718 var293) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$LocationInfo 
(assert (not (= var2718 null-var293)))
(declare-const var63 var3355) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var63 null-var3355)))
(declare-const var278 var1690) ; Statement: r2 := @parameter1: java.util.Set 
(assert (not (= var278 null-var1690)))
(declare-const var1989 var2246) ; Statement: r3 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder 
(assert (not (= var1989 null-var2246)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1514 var3555) ; Statement: $r4 := @caughtexception 
(assert (not (= var1514 null-var3555)))
(define-const var614 var2644 var1048_access$000/291791414) ; Statement: $r11 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath: java.util.logging.Logger access$000()>() 
(define-const var2656 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2656)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2656!1 String)
(assert (= var2656!1 ""))
(assert true)
(define-const var1638 String (append/672562846 var2656!1 "Cannot access ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot access ") 
(declare-const var2656!2 String)
(assert (= var2656!2 (str.++ var2656!1 "Cannot access ")))
(assert true)
(define-const var3020 String (append/-1031950772 var1638 (cast-from-var3355-to-var835 var63))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1638!1 String)
(assert (str.prefixof var1638 var1638!1))
(assert true)
(define-const var2372 String (append/672562846 var3020 ": ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var3020!1 String)
(assert (= var3020!1 (str.++ var3020 ": ")))
(assert true)
(define-const var866 String (append/-1031950772 var2372 (cast-from-var3555-to-var835 var1514))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var2372!1 String)
(assert (str.prefixof var2372 var2372!1))
(assert true)
(define-const var3699 String (toString/-2075883882 var866)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (warning/-1321853967 var614 var3699)) ; Statement: virtualinvoke $r11.<java.util.logging.Logger: void warning(java.lang.String)>($r10) 

(declare-const var614!1 var2644)
(declare-const var3699!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1048_access$000/291791414=([], java.util.logging.Logger), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3355-to-var835=([java.io.File], java.lang.Object), cast-from-var3555-to-var835=([java.lang.SecurityException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), warning/-1321853967=([java.util.logging.Logger, java.lang.String], void)}
; {var293=com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$LocationInfo, var2718=r1, var3355=java.io.File, var63=r0, var1690=java.util.Set, var278=r2, var2246=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder, var1989=r3, var3555=java.lang.SecurityException, var1514=$r4, var2644=java.util.logging.Logger, var1048=com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath, var614=$r11, var2656=$r5, var1638=$r6, var835=java.lang.Object, var3020=$r7, var2372=$r8, var866=$r9, var3699=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$LocationInfo=var293, r1=var2718, java.io.File=var3355, r0=var63, java.util.Set=var1690, r2=var278, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder=var2246, r3=var1989, java.lang.SecurityException=var3555, $r4=var1514, java.util.logging.Logger=var2644, com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath=var1048, $r11=var614, $r5=var2656, $r6=var1638, java.lang.Object=var835, $r7=var3020, $r8=var2372, $r9=var866, $r10=var3699}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$LocationInfo;	r0 := @parameter0: java.io.File;	r2 := @parameter1: java.util.Set;	r3 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder;	$r4 := @caughtexception;	$r11 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath: java.util.logging.Logger access$000()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot access ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r11.<java.util.logging.Logger: void warning(java.lang.String)>($r10);	return
;block_num 2
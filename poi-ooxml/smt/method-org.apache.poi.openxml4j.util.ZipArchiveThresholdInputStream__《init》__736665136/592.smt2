(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2465 0)
(declare-sort var1768 0)
(declare-sort var3865 0)
(declare-sort var2519 0)
(declare-sort var1502 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/105507897 (var3865 var1768) void)
(declare-fun cast-from-var2465-to-var3865 (var2465) var3865)
(declare-fun guardState/629566759 (var2465) Bool)
(declare-fun var2519-init () var2519)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1502) ClassObject)
(declare-fun cast-from-var1768-to-var1502 (var1768) var1502)
(declare-fun append/-1031950772 (String var1502) String)
(declare-fun cast-from-ClassObject-to-var1502 (ClassObject) var1502)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2519 String) void)
(declare-const null-var2465 var2465)
(declare-const null-var1768 var1768)
(declare-const var3696 var2465) ; Statement: r0 := @this: org.apache.poi.openxml4j.util.ZipArchiveThresholdInputStream 
(assert (not (= var3696 null-var2465)))
(declare-const var3089 var1768) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var3089 null-var1768)))
(assert true)
;(assert (<init>/105507897 (cast-from-var2465-to-var3865 var3696) var3089)) ; Statement: specialinvoke r0.<java.io.FilterInputStream: void <init>(java.io.InputStream)>(r1) 

(declare-const var3696!1 var2465)
(declare-const var3089!1 var1768)
(declare-const var3696!2 var2465)
(assert (not (= var3696!2 null-var2465)))
(assert (= (guardState/629566759 var3696!2) (ite (= 1 1) true false))) ; Statement: r0.<org.apache.poi.openxml4j.util.ZipArchiveThresholdInputStream: boolean guardState> = 1 
(define-const var1804 Bool true) ; Statement: $z0 = r1 instanceof org.apache.commons.compress.utils.InputStreamStatistics 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var1804 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3546 var2519 var2519-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var3810 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3810)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3810!1 String)
(assert (= var3810!1 ""))
(assert true)
(define-const var3397 String (append/672562846 var3810!1 "InputStream of class ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("InputStream of class ") 
(declare-const var3810!2 String)
(assert (= var3810!2 (str.++ var3810!1 "InputStream of class ")))
(assert true)
(define-const var1620 ClassObject (getClass/1258963082 (cast-from-var1768-to-var1502 var3089!1))) ; Statement: $r4 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1913 String (append/-1031950772 var3397 (cast-from-ClassObject-to-var1502 var1620))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var3397!1 String)
(assert (str.prefixof var3397 var3397!1))
(assert true)
(define-const var2756 String (append/672562846 var1913 " is not implementing InputStreamStatistics.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not implementing InputStreamStatistics.") 
(declare-const var1913!1 String)
(assert (= var1913!1 (str.++ var1913 " is not implementing InputStreamStatistics.")))
(assert true)
(define-const var3112 String (toString/-2075883882 var2756)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3546 var3112)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var3546!1 var2519)
(declare-const var3112!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/105507897=([java.io.FilterInputStream, java.io.InputStream], void), cast-from-var2465-to-var3865=([org.apache.poi.openxml4j.util.ZipArchiveThresholdInputStream], java.io.FilterInputStream), guardState/629566759=([org.apache.poi.openxml4j.util.ZipArchiveThresholdInputStream], boolean), var2519-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1768-to-var1502=([java.io.InputStream], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1502=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2465=org.apache.poi.openxml4j.util.ZipArchiveThresholdInputStream, var3696=r0, var1768=java.io.InputStream, var3089=r1, var3865=java.io.FilterInputStream, var1804=$z0, var2519=java.lang.IllegalArgumentException, var3546=$r2, var3810=$r3, var3397=$r5, var1502=java.lang.Object, var1620=$r4, var1913=$r6, var2756=$r7, var3112=$r8}
; {org.apache.poi.openxml4j.util.ZipArchiveThresholdInputStream=var2465, r0=var3696, java.io.InputStream=var1768, r1=var3089, java.io.FilterInputStream=var3865, $z0=var1804, java.lang.IllegalArgumentException=var2519, $r2=var3546, $r3=var3810, $r5=var3397, java.lang.Object=var1502, $r4=var1620, $r6=var1913, $r7=var2756, $r8=var3112}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.openxml4j.util.ZipArchiveThresholdInputStream;	r1 := @parameter0: java.io.InputStream;	specialinvoke r0.<java.io.FilterInputStream: void <init>(java.io.InputStream)>(r1);	r0.<org.apache.poi.openxml4j.util.ZipArchiveThresholdInputStream: boolean guardState> = 1;	$z0 = r1 instanceof org.apache.commons.compress.utils.InputStreamStatistics;	if $z0 != 0 goto return;	$r2 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("InputStream of class ");	$r4 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not implementing InputStreamStatistics.");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r2
;block_num 2
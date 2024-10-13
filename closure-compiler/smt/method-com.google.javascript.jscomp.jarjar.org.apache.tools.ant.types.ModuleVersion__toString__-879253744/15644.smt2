(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3774 0)
(declare-sort var1022 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1022) ClassObject)
(declare-fun cast-from-var3774-to-var1022 (var3774) var1022)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun number/1730637176 (var3774) String)
(declare-fun preRelease/1730637176 (var3774) String)
(declare-fun build/1730637176 (var3774) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3774 var3774)
(declare-const var184 var3774) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ModuleVersion 
(assert (not (= var184 null-var3774)))
(define-const var2799 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2799)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2799!1 String)
(assert (= var2799!1 ""))
(assert true)
(define-const var3083 ClassObject (getClass/1258963082 (cast-from-var3774-to-var1022 var184))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var889 String (getName/-1958580599 var3083)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2467 String (append/672562846 var2799!1 var889)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2799!2 String)
(assert (= var2799!2 (str.++ var2799!1 var889)))
(assert true)
(define-const var1468 String (append/672562846 var2467 "[number=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[number=") 
(declare-const var2467!1 String)
(assert (= var2467!1 (str.++ var2467 "[number=")))
(define-const var3275 String (number/1730637176 var184)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ModuleVersion: java.lang.String number> 
(assert true)
(define-const var1195 String (append/672562846 var1468 var3275)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1468!1 String)
(assert (= var1468!1 (str.++ var1468 var3275)))
(assert true)
(define-const var2130 String (append/672562846 var1195 ", preRelease=")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", preRelease=") 
(declare-const var1195!1 String)
(assert (= var1195!1 (str.++ var1195 ", preRelease=")))
(define-const var2077 String (preRelease/1730637176 var184)) ; Statement: $r8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ModuleVersion: java.lang.String preRelease> 
(assert true)
(define-const var3194 String (append/672562846 var2130 var2077)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2130!1 String)
(assert (= var2130!1 (str.++ var2130 var2077)))
(assert true)
(define-const var2349 String (append/672562846 var3194 ", build=")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", build=") 
(declare-const var3194!1 String)
(assert (= var3194!1 (str.++ var3194 ", build=")))
(define-const var3931 String (build/1730637176 var184)) ; Statement: $r11 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ModuleVersion: java.lang.String build> 
(assert true)
(define-const var2651 String (append/672562846 var2349 var3931)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2349!1 String)
(assert (= var2349!1 (str.++ var2349 var3931)))
(assert true)
(define-const var658 String (append/672562846 var2651 "]")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2651!1 String)
(assert (= var2651!1 (str.++ var2651 "]")))
(assert true)
(define-const var1122 String (toString/-2075883882 var658)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3774-to-var1022=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ModuleVersion], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), number/1730637176=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ModuleVersion], java.lang.String), preRelease/1730637176=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ModuleVersion], java.lang.String), build/1730637176=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ModuleVersion], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3774=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ModuleVersion, var184=r1, var2799=$r0, var1022=java.lang.Object, var3083=$r2, var889=$r3, var2467=$r4, var1468=$r6, var3275=$r5, var1195=$r7, var2130=$r9, var2077=$r8, var3194=$r10, var2349=$r12, var3931=$r11, var2651=$r13, var658=$r14, var1122=$r15}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ModuleVersion=var3774, r1=var184, $r0=var2799, java.lang.Object=var1022, $r2=var3083, $r3=var889, $r4=var2467, $r6=var1468, $r5=var3275, $r7=var1195, $r9=var2130, $r8=var2077, $r10=var3194, $r12=var2349, $r11=var3931, $r13=var2651, $r14=var658, $r15=var1122}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ModuleVersion;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[number=");	$r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ModuleVersion: java.lang.String number>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", preRelease=");	$r8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ModuleVersion: java.lang.String preRelease>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", build=");	$r11 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ModuleVersion: java.lang.String build>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 1
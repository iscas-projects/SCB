(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3988 0)
(declare-sort var2882 0)
(declare-sort var2821 0)
(declare-sort var3998 0)
(declare-sort var2316 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3998) String)
(declare-fun cast-from-var2882-to-var3998 (var2882) var3998)
(declare-fun getName/-29768105 (var2821) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2056027967 (var2316 String) void)
(declare-fun cast-from-var3988-to-var2316 (var3988) var2316)
(declare-fun reason/900854346 (var3988) var2882)
(declare-fun entry/900854346 (var3988) var2821)
(declare-const null-var3988 var3988)
(declare-const null-var2882 var2882)
(declare-const null-var2821 var2821)
(declare-const var1232 var3988) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.UnsupportedZipFeatureException 
(assert (not (= var1232 null-var3988)))
(declare-const var677 var2882) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.UnsupportedZipFeatureException$Feature 
(assert (not (= var677 null-var2882)))
(declare-const var3539 var2821) ; Statement: r5 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry 
(assert (not (= var3539 null-var2821)))
(define-const var2625 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2625)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2625!1 String)
(assert (= var2625!1 ""))
(assert true)
(define-const var1266 String (append/672562846 var2625!1 "unsupported feature ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unsupported feature ") 
(declare-const var2625!2 String)
(assert (= var2625!2 (str.++ var2625!1 "unsupported feature ")))
(assert true)
(define-const var2355 String (append/-1031950772 var1266 (cast-from-var2882-to-var3998 var677))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1266!1 String)
(assert (str.prefixof var1266 var1266!1))
(assert true)
(define-const var1570 String (append/672562846 var2355 " used in entry ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" used in entry ") 
(declare-const var2355!1 String)
(assert (= var2355!1 (str.++ var2355 " used in entry ")))
(assert true)
(define-const var2489 String (getName/-29768105 var3539)) ; Statement: $r6 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry: java.lang.String getName()>() 
(assert true)
(define-const var1458 String (append/672562846 var1570 var2489)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1570!1 String)
(assert (= var1570!1 (str.++ var1570 var2489)))
(assert true)
(define-const var3549 String (toString/-2075883882 var1458)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2056027967 (cast-from-var3988-to-var2316 var1232) var3549)) ; Statement: specialinvoke r0.<java.util.zip.ZipException: void <init>(java.lang.String)>($r9) 

(declare-const var1232!1 var3988)
(declare-const var3549!1 String)
(declare-const var1232!2 var3988)
(assert (not (= var1232!2 null-var3988)))
(assert (= (reason/900854346 var1232!2) var677)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.UnsupportedZipFeatureException: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.UnsupportedZipFeatureException$Feature reason> = r2 
(declare-const var1232!3 var3988)
(assert (not (= var1232!3 null-var3988)))
(assert (= (entry/900854346 var1232!3) var3539)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.UnsupportedZipFeatureException: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry entry> = r5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2882-to-var3998=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.UnsupportedZipFeatureException$Feature], java.lang.Object), getName/-29768105=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2056027967=([java.util.zip.ZipException, java.lang.String], void), cast-from-var3988-to-var2316=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.UnsupportedZipFeatureException], java.util.zip.ZipException), reason/900854346=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.UnsupportedZipFeatureException], com.google.javascript.jscomp.jarjar.org.apache.tools.zip.UnsupportedZipFeatureException$Feature), entry/900854346=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.UnsupportedZipFeatureException], com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry)}
; {var3988=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.UnsupportedZipFeatureException, var1232=r0, var2882=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.UnsupportedZipFeatureException$Feature, var677=r2, var2821=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry, var3539=r5, var2625=$r1, var1266=$r3, var3998=java.lang.Object, var2355=$r4, var1570=$r7, var2489=$r6, var1458=$r8, var3549=$r9, var2316=java.util.zip.ZipException}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.UnsupportedZipFeatureException=var3988, r0=var1232, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.UnsupportedZipFeatureException$Feature=var2882, r2=var677, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry=var2821, r5=var3539, $r1=var2625, $r3=var1266, java.lang.Object=var3998, $r4=var2355, $r7=var1570, $r6=var2489, $r8=var1458, $r9=var3549, java.util.zip.ZipException=var2316}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.UnsupportedZipFeatureException;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.UnsupportedZipFeatureException$Feature;	r5 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unsupported feature ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" used in entry ");	$r6 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.util.zip.ZipException: void <init>(java.lang.String)>($r9);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.UnsupportedZipFeatureException: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.UnsupportedZipFeatureException$Feature reason> = r2;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.UnsupportedZipFeatureException: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry entry> = r5;	return
;block_num 1
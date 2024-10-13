(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var195 0)
(declare-sort var1961 0)
(declare-sort var1407 0)
(declare-sort var3650 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-1647088096 (var1961) String)
(declare-fun cast-from-var195-to-var1961 (var195) var1961)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ioCase/-806785851 (var195) var1407)
(declare-fun append/-1031950772 (String var3650) String)
(declare-fun cast-from-var1407-to-var3650 (var1407) var3650)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var195 var195)
(declare-const var2124 var195) ; Statement: r1 := @this: org.apache.commons.io.comparator.ExtensionFileComparator 
(assert (not (= var2124 null-var195)))
(define-const var3973 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3973)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3973!1 String)
(assert (= var3973!1 ""))
(assert true)
(define-const var1861 String (toString/-1647088096 (cast-from-var195-to-var1961 var2124))) ; Statement: $r2 = specialinvoke r1.<org.apache.commons.io.comparator.AbstractFileComparator: java.lang.String toString()>() 
(assert true)
(define-const var1281 String (append/672562846 var3973!1 var1861)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3973!2 String)
(assert (= var3973!2 (str.++ var3973!1 var1861)))
(assert true)
(define-const var992 String (append/672562846 var1281 "[ioCase=")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[ioCase=") 
(declare-const var1281!1 String)
(assert (= var1281!1 (str.++ var1281 "[ioCase=")))
(define-const var1445 var1407 (ioCase/-806785851 var2124)) ; Statement: $r4 = r1.<org.apache.commons.io.comparator.ExtensionFileComparator: org.apache.commons.io.IOCase ioCase> 
(assert true)
(define-const var3366 String (append/-1031950772 var992 (cast-from-var1407-to-var3650 var1445))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var992!1 String)
(assert (str.prefixof var992 var992!1))
(assert true)
(define-const var3275 String (append/672562846 var3366 "]")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3366!1 String)
(assert (= var3366!1 (str.++ var3366 "]")))
(assert true)
(define-const var412 String (toString/-2075883882 var3275)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-1647088096=([org.apache.commons.io.comparator.AbstractFileComparator], java.lang.String), cast-from-var195-to-var1961=([org.apache.commons.io.comparator.ExtensionFileComparator], org.apache.commons.io.comparator.AbstractFileComparator), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), ioCase/-806785851=([org.apache.commons.io.comparator.ExtensionFileComparator], org.apache.commons.io.IOCase), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1407-to-var3650=([org.apache.commons.io.IOCase], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var195=org.apache.commons.io.comparator.ExtensionFileComparator, var2124=r1, var3973=$r0, var1961=org.apache.commons.io.comparator.AbstractFileComparator, var1861=$r2, var1281=$r3, var992=$r5, var1407=org.apache.commons.io.IOCase, var1445=$r4, var3650=java.lang.Object, var3366=$r6, var3275=$r7, var412=$r8}
; {org.apache.commons.io.comparator.ExtensionFileComparator=var195, r1=var2124, $r0=var3973, org.apache.commons.io.comparator.AbstractFileComparator=var1961, $r2=var1861, $r3=var1281, $r5=var992, org.apache.commons.io.IOCase=var1407, $r4=var1445, java.lang.Object=var3650, $r6=var3366, $r7=var3275, $r8=var412}
;seq <java.lang.StringBuilder: void <init>()>;	<org.apache.commons.io.comparator.AbstractFileComparator: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.io.comparator.ExtensionFileComparator;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.apache.commons.io.comparator.AbstractFileComparator: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[ioCase=");	$r4 = r1.<org.apache.commons.io.comparator.ExtensionFileComparator: org.apache.commons.io.IOCase ioCase>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1
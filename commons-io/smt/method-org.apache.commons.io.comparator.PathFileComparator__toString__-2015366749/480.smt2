(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var967 0)
(declare-sort var3824 0)
(declare-sort var191 0)
(declare-sort var1693 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-1647088096 (var3824) String)
(declare-fun cast-from-var967-to-var3824 (var967) var3824)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ioCase/-2104695997 (var967) var191)
(declare-fun append/-1031950772 (String var1693) String)
(declare-fun cast-from-var191-to-var1693 (var191) var1693)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var967 var967)
(declare-const var1322 var967) ; Statement: r1 := @this: org.apache.commons.io.comparator.PathFileComparator 
(assert (not (= var1322 null-var967)))
(define-const var3530 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3530)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3530!1 String)
(assert (= var3530!1 ""))
(assert true)
(define-const var3635 String (toString/-1647088096 (cast-from-var967-to-var3824 var1322))) ; Statement: $r2 = specialinvoke r1.<org.apache.commons.io.comparator.AbstractFileComparator: java.lang.String toString()>() 
(assert true)
(define-const var1577 String (append/672562846 var3530!1 var3635)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3530!2 String)
(assert (= var3530!2 (str.++ var3530!1 var3635)))
(assert true)
(define-const var1631 String (append/672562846 var1577 "[ioCase=")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[ioCase=") 
(declare-const var1577!1 String)
(assert (= var1577!1 (str.++ var1577 "[ioCase=")))
(define-const var1521 var191 (ioCase/-2104695997 var1322)) ; Statement: $r4 = r1.<org.apache.commons.io.comparator.PathFileComparator: org.apache.commons.io.IOCase ioCase> 
(assert true)
(define-const var708 String (append/-1031950772 var1631 (cast-from-var191-to-var1693 var1521))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var1631!1 String)
(assert (str.prefixof var1631 var1631!1))
(assert true)
(define-const var202 String (append/672562846 var708 "]")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var708!1 String)
(assert (= var708!1 (str.++ var708 "]")))
(assert true)
(define-const var462 String (toString/-2075883882 var202)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-1647088096=([org.apache.commons.io.comparator.AbstractFileComparator], java.lang.String), cast-from-var967-to-var3824=([org.apache.commons.io.comparator.PathFileComparator], org.apache.commons.io.comparator.AbstractFileComparator), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), ioCase/-2104695997=([org.apache.commons.io.comparator.PathFileComparator], org.apache.commons.io.IOCase), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var191-to-var1693=([org.apache.commons.io.IOCase], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var967=org.apache.commons.io.comparator.PathFileComparator, var1322=r1, var3530=$r0, var3824=org.apache.commons.io.comparator.AbstractFileComparator, var3635=$r2, var1577=$r3, var1631=$r5, var191=org.apache.commons.io.IOCase, var1521=$r4, var1693=java.lang.Object, var708=$r6, var202=$r7, var462=$r8}
; {org.apache.commons.io.comparator.PathFileComparator=var967, r1=var1322, $r0=var3530, org.apache.commons.io.comparator.AbstractFileComparator=var3824, $r2=var3635, $r3=var1577, $r5=var1631, org.apache.commons.io.IOCase=var191, $r4=var1521, java.lang.Object=var1693, $r6=var708, $r7=var202, $r8=var462}
;seq <java.lang.StringBuilder: void <init>()>;	<org.apache.commons.io.comparator.AbstractFileComparator: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.io.comparator.PathFileComparator;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.apache.commons.io.comparator.AbstractFileComparator: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[ioCase=");	$r4 = r1.<org.apache.commons.io.comparator.PathFileComparator: org.apache.commons.io.IOCase ioCase>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1
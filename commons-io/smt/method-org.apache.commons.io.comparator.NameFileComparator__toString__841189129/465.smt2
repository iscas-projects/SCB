(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var55 0)
(declare-sort var154 0)
(declare-sort var1681 0)
(declare-sort var2055 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-1647088096 (var154) String)
(declare-fun cast-from-var55-to-var154 (var55) var154)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ioCase/-1059467479 (var55) var1681)
(declare-fun append/-1031950772 (String var2055) String)
(declare-fun cast-from-var1681-to-var2055 (var1681) var2055)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var55 var55)
(declare-const var3613 var55) ; Statement: r1 := @this: org.apache.commons.io.comparator.NameFileComparator 
(assert (not (= var3613 null-var55)))
(define-const var2890 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2890)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2890!1 String)
(assert (= var2890!1 ""))
(assert true)
(define-const var3563 String (toString/-1647088096 (cast-from-var55-to-var154 var3613))) ; Statement: $r2 = specialinvoke r1.<org.apache.commons.io.comparator.AbstractFileComparator: java.lang.String toString()>() 
(assert true)
(define-const var3883 String (append/672562846 var2890!1 var3563)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2890!2 String)
(assert (= var2890!2 (str.++ var2890!1 var3563)))
(assert true)
(define-const var455 String (append/672562846 var3883 "[ioCase=")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[ioCase=") 
(declare-const var3883!1 String)
(assert (= var3883!1 (str.++ var3883 "[ioCase=")))
(define-const var3566 var1681 (ioCase/-1059467479 var3613)) ; Statement: $r4 = r1.<org.apache.commons.io.comparator.NameFileComparator: org.apache.commons.io.IOCase ioCase> 
(assert true)
(define-const var3340 String (append/-1031950772 var455 (cast-from-var1681-to-var2055 var3566))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var455!1 String)
(assert (str.prefixof var455 var455!1))
(assert true)
(define-const var2993 String (append/672562846 var3340 "]")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3340!1 String)
(assert (= var3340!1 (str.++ var3340 "]")))
(assert true)
(define-const var3188 String (toString/-2075883882 var2993)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-1647088096=([org.apache.commons.io.comparator.AbstractFileComparator], java.lang.String), cast-from-var55-to-var154=([org.apache.commons.io.comparator.NameFileComparator], org.apache.commons.io.comparator.AbstractFileComparator), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), ioCase/-1059467479=([org.apache.commons.io.comparator.NameFileComparator], org.apache.commons.io.IOCase), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1681-to-var2055=([org.apache.commons.io.IOCase], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var55=org.apache.commons.io.comparator.NameFileComparator, var3613=r1, var2890=$r0, var154=org.apache.commons.io.comparator.AbstractFileComparator, var3563=$r2, var3883=$r3, var455=$r5, var1681=org.apache.commons.io.IOCase, var3566=$r4, var2055=java.lang.Object, var3340=$r6, var2993=$r7, var3188=$r8}
; {org.apache.commons.io.comparator.NameFileComparator=var55, r1=var3613, $r0=var2890, org.apache.commons.io.comparator.AbstractFileComparator=var154, $r2=var3563, $r3=var3883, $r5=var455, org.apache.commons.io.IOCase=var1681, $r4=var3566, java.lang.Object=var2055, $r6=var3340, $r7=var2993, $r8=var3188}
;seq <java.lang.StringBuilder: void <init>()>;	<org.apache.commons.io.comparator.AbstractFileComparator: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.io.comparator.NameFileComparator;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.apache.commons.io.comparator.AbstractFileComparator: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[ioCase=");	$r4 = r1.<org.apache.commons.io.comparator.NameFileComparator: org.apache.commons.io.IOCase ioCase>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1
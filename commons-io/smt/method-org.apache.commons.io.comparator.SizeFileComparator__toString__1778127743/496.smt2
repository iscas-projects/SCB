(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1360 0)
(declare-sort var2982 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-1647088096 (var2982) String)
(declare-fun cast-from-var1360-to-var2982 (var1360) var2982)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun sumDirectoryContents/-1855295969 (var1360) Bool)
(declare-fun append/-388390247 (String Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1360 var1360)
(declare-const var2485 var1360) ; Statement: r1 := @this: org.apache.commons.io.comparator.SizeFileComparator 
(assert (not (= var2485 null-var1360)))
(define-const var1668 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1668)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1668!1 String)
(assert (= var1668!1 ""))
(assert true)
(define-const var3865 String (toString/-1647088096 (cast-from-var1360-to-var2982 var2485))) ; Statement: $r2 = specialinvoke r1.<org.apache.commons.io.comparator.AbstractFileComparator: java.lang.String toString()>() 
(assert true)
(define-const var1241 String (append/672562846 var1668!1 var3865)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1668!2 String)
(assert (= var1668!2 (str.++ var1668!1 var3865)))
(assert true)
(define-const var1283 String (append/672562846 var1241 "[sumDirectoryContents=")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[sumDirectoryContents=") 
(declare-const var1241!1 String)
(assert (= var1241!1 (str.++ var1241 "[sumDirectoryContents=")))
(define-const var842 Bool (sumDirectoryContents/-1855295969 var2485)) ; Statement: $z0 = r1.<org.apache.commons.io.comparator.SizeFileComparator: boolean sumDirectoryContents> 
(assert true)
(define-const var2293 String (append/-388390247 var1283 var842)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0) 
(declare-const var1283!1 String)
(assert (str.prefixof var1283 var1283!1))
(assert true)
(define-const var3703 String (append/672562846 var2293 "]")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2293!1 String)
(assert (= var2293!1 (str.++ var2293 "]")))
(assert true)
(define-const var2045 String (toString/-2075883882 var3703)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-1647088096=([org.apache.commons.io.comparator.AbstractFileComparator], java.lang.String), cast-from-var1360-to-var2982=([org.apache.commons.io.comparator.SizeFileComparator], org.apache.commons.io.comparator.AbstractFileComparator), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), sumDirectoryContents/-1855295969=([org.apache.commons.io.comparator.SizeFileComparator], boolean), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1360=org.apache.commons.io.comparator.SizeFileComparator, var2485=r1, var1668=$r0, var2982=org.apache.commons.io.comparator.AbstractFileComparator, var3865=$r2, var1241=$r3, var1283=$r4, var842=$z0, var2293=$r5, var3703=$r6, var2045=$r7}
; {org.apache.commons.io.comparator.SizeFileComparator=var1360, r1=var2485, $r0=var1668, org.apache.commons.io.comparator.AbstractFileComparator=var2982, $r2=var3865, $r3=var1241, $r4=var1283, $z0=var842, $r5=var2293, $r6=var3703, $r7=var2045}
;seq <java.lang.StringBuilder: void <init>()>;	<org.apache.commons.io.comparator.AbstractFileComparator: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.io.comparator.SizeFileComparator;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.apache.commons.io.comparator.AbstractFileComparator: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[sumDirectoryContents=");	$z0 = r1.<org.apache.commons.io.comparator.SizeFileComparator: boolean sumDirectoryContents>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1
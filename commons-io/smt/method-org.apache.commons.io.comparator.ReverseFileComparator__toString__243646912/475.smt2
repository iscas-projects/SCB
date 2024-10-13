(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1347 0)
(declare-sort var1363 0)
(declare-sort var850 0)
(declare-sort var1779 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-1647088096 (var1363) String)
(declare-fun cast-from-var1347-to-var1363 (var1347) var1363)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun delegate/-226359512 (var1347) var850)
(declare-fun toString/-522406933 (var1779) String)
(declare-fun cast-from-var850-to-var1779 (var850) var1779)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1347 var1347)
(declare-const var1639 var1347) ; Statement: r1 := @this: org.apache.commons.io.comparator.ReverseFileComparator 
(assert (not (= var1639 null-var1347)))
(define-const var2578 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2578)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2578!1 String)
(assert (= var2578!1 ""))
(assert true)
(define-const var3700 String (toString/-1647088096 (cast-from-var1347-to-var1363 var1639))) ; Statement: $r2 = specialinvoke r1.<org.apache.commons.io.comparator.AbstractFileComparator: java.lang.String toString()>() 
(assert true)
(define-const var2742 String (append/672562846 var2578!1 var3700)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2578!2 String)
(assert (= var2578!2 (str.++ var2578!1 var3700)))
(assert true)
(define-const var421 String (append/672562846 var2742 "[")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var2742!1 String)
(assert (= var2742!1 (str.++ var2742 "[")))
(define-const var697 var850 (delegate/-226359512 var1639)) ; Statement: $r4 = r1.<org.apache.commons.io.comparator.ReverseFileComparator: java.util.Comparator delegate> 
(assert true)
(define-const var1699 String (toString/-522406933 (cast-from-var850-to-var1779 var697))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2915 String (append/672562846 var421 var1699)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var421!1 String)
(assert (= var421!1 (str.++ var421 var1699)))
(assert true)
(define-const var2290 String (append/672562846 var2915 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2915!1 String)
(assert (= var2915!1 (str.++ var2915 "]")))
(assert true)
(define-const var739 String (toString/-2075883882 var2290)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-1647088096=([org.apache.commons.io.comparator.AbstractFileComparator], java.lang.String), cast-from-var1347-to-var1363=([org.apache.commons.io.comparator.ReverseFileComparator], org.apache.commons.io.comparator.AbstractFileComparator), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), delegate/-226359512=([org.apache.commons.io.comparator.ReverseFileComparator], java.util.Comparator), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var850-to-var1779=([java.util.Comparator], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1347=org.apache.commons.io.comparator.ReverseFileComparator, var1639=r1, var2578=$r0, var1363=org.apache.commons.io.comparator.AbstractFileComparator, var3700=$r2, var2742=$r3, var421=$r6, var850=java.util.Comparator, var697=$r4, var1779=java.lang.Object, var1699=$r5, var2915=$r7, var2290=$r8, var739=$r9}
; {org.apache.commons.io.comparator.ReverseFileComparator=var1347, r1=var1639, $r0=var2578, org.apache.commons.io.comparator.AbstractFileComparator=var1363, $r2=var3700, $r3=var2742, $r6=var421, java.util.Comparator=var850, $r4=var697, java.lang.Object=var1779, $r5=var1699, $r7=var2915, $r8=var2290, $r9=var739}
;seq <java.lang.StringBuilder: void <init>()>;	<org.apache.commons.io.comparator.AbstractFileComparator: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.io.comparator.ReverseFileComparator;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.apache.commons.io.comparator.AbstractFileComparator: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r4 = r1.<org.apache.commons.io.comparator.ReverseFileComparator: java.util.Comparator delegate>;	$r5 = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1
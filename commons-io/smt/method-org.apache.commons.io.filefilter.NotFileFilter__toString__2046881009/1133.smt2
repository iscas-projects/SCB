(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2825 0)
(declare-sort var2735 0)
(declare-sort var1228 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun filter/-922602983 (var2825) var2735)
(declare-fun toString/-522406933 (var1228) String)
(declare-fun cast-from-var2735-to-var1228 (var2735) var1228)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2825 var2825)
(declare-const var3757 var2825) ; Statement: r1 := @this: org.apache.commons.io.filefilter.NotFileFilter 
(assert (not (= var3757 null-var2825)))
(define-const var839 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var839)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var839!1 String)
(assert (= var839!1 ""))
(assert true)
(define-const var1831 String (append/672562846 var839!1 "NOT (")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NOT (") 
(declare-const var839!2 String)
(assert (= var839!2 (str.++ var839!1 "NOT (")))
(define-const var582 var2735 (filter/-922602983 var3757)) ; Statement: $r2 = r1.<org.apache.commons.io.filefilter.NotFileFilter: org.apache.commons.io.filefilter.IOFileFilter filter> 
(assert true)
(define-const var516 String (toString/-522406933 (cast-from-var2735-to-var1228 var582))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2099 String (append/672562846 var1831 var516)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1831!1 String)
(assert (= var1831!1 (str.++ var1831 var516)))
(assert true)
(define-const var3615 String (append/672562846 var2099 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2099!1 String)
(assert (= var2099!1 (str.++ var2099 ")")))
(assert true)
(define-const var2706 String (toString/-2075883882 var3615)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), filter/-922602983=([org.apache.commons.io.filefilter.NotFileFilter], org.apache.commons.io.filefilter.IOFileFilter), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2735-to-var1228=([org.apache.commons.io.filefilter.IOFileFilter], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2825=org.apache.commons.io.filefilter.NotFileFilter, var3757=r1, var839=$r0, var1831=$r4, var2735=org.apache.commons.io.filefilter.IOFileFilter, var582=$r2, var1228=java.lang.Object, var516=$r3, var2099=$r5, var3615=$r6, var2706=$r7}
; {org.apache.commons.io.filefilter.NotFileFilter=var2825, r1=var3757, $r0=var839, $r4=var1831, org.apache.commons.io.filefilter.IOFileFilter=var2735, $r2=var582, java.lang.Object=var1228, $r3=var516, $r5=var2099, $r6=var3615, $r7=var2706}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.io.filefilter.NotFileFilter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NOT (");	$r2 = r1.<org.apache.commons.io.filefilter.NotFileFilter: org.apache.commons.io.filefilter.IOFileFilter filter>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1
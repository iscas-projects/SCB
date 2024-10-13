(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2234 0)
(declare-sort var2898 0)
(declare-sort var3382 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/-1674222761 (var3382) String)
(declare-fun cast-from-var2234-to-var3382 (var2234) var3382)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2234 var2234)
(declare-const null-String String)
(declare-const var2981 var2234) ; Statement: r1 := @this: org.hibernate.dialect.Oracle8iDialect 
(assert (not (= var2981 null-var2234)))
(declare-const var2118 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2118 null-String)))
(define-const var395 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var395)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var395!1 String)
(assert (= var395!1 ""))
(assert true)
(define-const var2263 String (getForUpdateString/-1674222761 (cast-from-var2234-to-var3382 var2981))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.dialect.Oracle8iDialect: java.lang.String getForUpdateString()>() 
(assert true)
(define-const var3084 String (append/672562846 var395!1 var2263)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var395!2 String)
(assert (= var395!2 (str.++ var395!1 var2263)))
(assert true)
(define-const var1763 String (append/672562846 var3084 " of ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ") 
(declare-const var3084!1 String)
(assert (= var3084!1 (str.++ var3084 " of ")))
(assert true)
(define-const var177 String (append/672562846 var1763 var2118)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1763!1 String)
(assert (= var1763!1 (str.++ var1763 var2118)))
(assert true)
(define-const var2662 String (toString/-2075883882 var177)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/-1674222761=([org.hibernate.dialect.Dialect], java.lang.String), cast-from-var2234-to-var3382=([org.hibernate.dialect.Oracle8iDialect], org.hibernate.dialect.Dialect), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2234=org.hibernate.dialect.Oracle8iDialect, var2981=r1, var2118=r4, var2898=null_type, var395=$r0, var3382=org.hibernate.dialect.Dialect, var2263=$r2, var3084=$r3, var1763=$r5, var177=$r6, var2662=$r7}
; {org.hibernate.dialect.Oracle8iDialect=var2234, r1=var2981, r4=var2118, null_type=var2898, $r0=var395, org.hibernate.dialect.Dialect=var3382, $r2=var2263, $r3=var3084, $r5=var1763, $r6=var177, $r7=var2662}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.Oracle8iDialect;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.dialect.Oracle8iDialect: java.lang.String getForUpdateString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1
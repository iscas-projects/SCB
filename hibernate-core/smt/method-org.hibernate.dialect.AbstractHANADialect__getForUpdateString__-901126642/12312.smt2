(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2880 0)
(declare-sort var357 0)
(declare-sort var3015 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/-1674222761 (var3015) String)
(declare-fun cast-from-var2880-to-var3015 (var2880) var3015)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2880 var2880)
(declare-const null-String String)
(declare-const var1751 var2880) ; Statement: r1 := @this: org.hibernate.dialect.AbstractHANADialect 
(assert (not (= var1751 null-var2880)))
(declare-const var775 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var775 null-String)))
(define-const var1322 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1322)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1322!1 String)
(assert (= var1322!1 ""))
(assert true)
(define-const var147 String (getForUpdateString/-1674222761 (cast-from-var2880-to-var3015 var1751))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.dialect.AbstractHANADialect: java.lang.String getForUpdateString()>() 
(assert true)
(define-const var384 String (append/672562846 var1322!1 var147)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1322!2 String)
(assert (= var1322!2 (str.++ var1322!1 var147)))
(assert true)
(define-const var3388 String (append/672562846 var384 " of ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ") 
(declare-const var384!1 String)
(assert (= var384!1 (str.++ var384 " of ")))
(assert true)
(define-const var1928 String (append/672562846 var3388 var775)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3388!1 String)
(assert (= var3388!1 (str.++ var3388 var775)))
(assert true)
(define-const var2328 String (toString/-2075883882 var1928)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/-1674222761=([org.hibernate.dialect.Dialect], java.lang.String), cast-from-var2880-to-var3015=([org.hibernate.dialect.AbstractHANADialect], org.hibernate.dialect.Dialect), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2880=org.hibernate.dialect.AbstractHANADialect, var1751=r1, var775=r4, var357=null_type, var1322=$r0, var3015=org.hibernate.dialect.Dialect, var147=$r2, var384=$r3, var3388=$r5, var1928=$r6, var2328=$r7}
; {org.hibernate.dialect.AbstractHANADialect=var2880, r1=var1751, r4=var775, null_type=var357, $r0=var1322, org.hibernate.dialect.Dialect=var3015, $r2=var147, $r3=var384, $r5=var3388, $r6=var1928, $r7=var2328}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.AbstractHANADialect;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.dialect.AbstractHANADialect: java.lang.String getForUpdateString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1
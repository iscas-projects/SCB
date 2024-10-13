(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1360 0)
(declare-sort var1263 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1360 var1360)
(declare-const null-String String)
(declare-const var3301 var1360) ; Statement: r6 := @this: org.hibernate.dialect.AbstractHANADialect 
(assert (not (= var3301 null-var1360)))
(declare-const var3565 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3565 null-String)))
(define-const var1460 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1460)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1460!1 String)
(assert (= var1460!1 ""))
(assert true)
(define-const var2625 String (append/672562846 var1460!1 "not (")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not (") 
(declare-const var1460!2 String)
(assert (= var1460!2 (str.++ var1460!1 "not (")))
(assert true)
(define-const var1630 String (append/672562846 var2625 var3565)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2625!1 String)
(assert (= var2625!1 (str.++ var2625 var3565)))
(assert true)
(define-const var1285 String (append/672562846 var1630 ")")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1630!1 String)
(assert (= var1630!1 (str.++ var1630 ")")))
(assert true)
(define-const var24 String (toString/-2075883882 var1285)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1360=org.hibernate.dialect.AbstractHANADialect, var3301=r6, var3565=r1, var1263=null_type, var1460=$r0, var2625=$r2, var1630=$r3, var1285=$r4, var24=$r5}
; {org.hibernate.dialect.AbstractHANADialect=var1360, r6=var3301, r1=var3565, null_type=var1263, $r0=var1460, $r2=var2625, $r3=var1630, $r4=var1285, $r5=var24}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.AbstractHANADialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not (");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
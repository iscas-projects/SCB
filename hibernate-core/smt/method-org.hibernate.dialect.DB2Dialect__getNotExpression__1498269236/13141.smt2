(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1567 0)
(declare-sort var1825 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1567 var1567)
(declare-const null-String String)
(declare-const var3539 var1567) ; Statement: r6 := @this: org.hibernate.dialect.DB2Dialect 
(assert (not (= var3539 null-var1567)))
(declare-const var2551 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2551 null-String)))
(define-const var3557 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3557)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3557!1 String)
(assert (= var3557!1 ""))
(assert true)
(define-const var1844 String (append/672562846 var3557!1 "not (")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not (") 
(declare-const var3557!2 String)
(assert (= var3557!2 (str.++ var3557!1 "not (")))
(assert true)
(define-const var2105 String (append/672562846 var1844 var2551)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1844!1 String)
(assert (= var1844!1 (str.++ var1844 var2551)))
(assert true)
(define-const var701 String (append/672562846 var2105 ")")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2105!1 String)
(assert (= var2105!1 (str.++ var2105 ")")))
(assert true)
(define-const var1122 String (toString/-2075883882 var701)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1567=org.hibernate.dialect.DB2Dialect, var3539=r6, var2551=r1, var1825=null_type, var3557=$r0, var1844=$r2, var2105=$r3, var701=$r4, var1122=$r5}
; {org.hibernate.dialect.DB2Dialect=var1567, r6=var3539, r1=var2551, null_type=var1825, $r0=var3557, $r2=var1844, $r3=var2105, $r4=var701, $r5=var1122}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.DB2Dialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not (");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
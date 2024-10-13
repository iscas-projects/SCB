(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var120 0)
(declare-sort var2952 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/665376038 (var120 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var120 var120)
(declare-const null-String String)
(declare-const var2075 var120) ; Statement: r1 := @this: org.hibernate.dialect.MySQL8Dialect 
(assert (not (= var2075 null-var120)))
(declare-const var3227 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3227 null-String)))
(define-const var1158 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1158)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1158!1 String)
(assert (= var1158!1 ""))
(assert true)
(define-const var129 String (getForUpdateString/665376038 var2075 var3227)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.MySQL8Dialect: java.lang.String getForUpdateString(java.lang.String)>(r2) 
(assert true)
(define-const var3604 String (append/672562846 var1158!1 var129)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1158!2 String)
(assert (= var1158!2 (str.++ var1158!1 var129)))
(assert true)
(define-const var2810 String (append/672562846 var3604 " nowait ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait ") 
(declare-const var3604!1 String)
(assert (= var3604!1 (str.++ var3604 " nowait ")))
(assert true)
(define-const var257 String (toString/-2075883882 var2810)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/665376038=([org.hibernate.dialect.MySQL8Dialect, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var120=org.hibernate.dialect.MySQL8Dialect, var2075=r1, var3227=r2, var2952=null_type, var1158=$r0, var129=$r3, var3604=$r4, var2810=$r5, var257=$r6}
; {org.hibernate.dialect.MySQL8Dialect=var120, r1=var2075, r2=var3227, null_type=var2952, $r0=var1158, $r3=var129, $r4=var3604, $r5=var2810, $r6=var257}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.MySQL8Dialect;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r1.<org.hibernate.dialect.MySQL8Dialect: java.lang.String getForUpdateString(java.lang.String)>(r2);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1
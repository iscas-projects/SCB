(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var207 0)
(declare-sort var1690 0)
(declare-sort var1978 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/-1674222761 (var1978) String)
(declare-fun cast-from-var207-to-var1978 (var207) var1978)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var207 var207)
(declare-const null-String String)
(declare-const var3603 var207) ; Statement: r1 := @this: org.hibernate.dialect.Oracle9Dialect 
(assert (not (= var3603 null-var207)))
(declare-const var402 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var402 null-String)))
(define-const var3720 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3720)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3720!1 String)
(assert (= var3720!1 ""))
(assert true)
(define-const var49 String (getForUpdateString/-1674222761 (cast-from-var207-to-var1978 var3603))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.dialect.Oracle9Dialect: java.lang.String getForUpdateString()>() 
(assert true)
(define-const var3302 String (append/672562846 var3720!1 var49)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3720!2 String)
(assert (= var3720!2 (str.++ var3720!1 var49)))
(assert true)
(define-const var3634 String (append/672562846 var3302 " of ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ") 
(declare-const var3302!1 String)
(assert (= var3302!1 (str.++ var3302 " of ")))
(assert true)
(define-const var3676 String (append/672562846 var3634 var402)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3634!1 String)
(assert (= var3634!1 (str.++ var3634 var402)))
(assert true)
(define-const var1552 String (toString/-2075883882 var3676)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/-1674222761=([org.hibernate.dialect.Dialect], java.lang.String), cast-from-var207-to-var1978=([org.hibernate.dialect.Oracle9Dialect], org.hibernate.dialect.Dialect), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var207=org.hibernate.dialect.Oracle9Dialect, var3603=r1, var402=r4, var1690=null_type, var3720=$r0, var1978=org.hibernate.dialect.Dialect, var49=$r2, var3302=$r3, var3634=$r5, var3676=$r6, var1552=$r7}
; {org.hibernate.dialect.Oracle9Dialect=var207, r1=var3603, r4=var402, null_type=var1690, $r0=var3720, org.hibernate.dialect.Dialect=var1978, $r2=var49, $r3=var3302, $r5=var3634, $r6=var3676, $r7=var1552}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.Oracle9Dialect;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.dialect.Oracle9Dialect: java.lang.String getForUpdateString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1
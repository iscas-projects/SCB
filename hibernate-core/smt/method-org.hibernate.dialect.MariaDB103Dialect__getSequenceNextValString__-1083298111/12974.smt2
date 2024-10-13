(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1702 0)
(declare-sort var3942 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSelectSequenceNextValString/-948620771 (var1702 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1702 var1702)
(declare-const null-String String)
(declare-const var3678 var1702) ; Statement: r1 := @this: org.hibernate.dialect.MariaDB103Dialect 
(assert (not (= var3678 null-var1702)))
(declare-const var54 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var54 null-String)))
(define-const var2401 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2401)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2401!1 String)
(assert (= var2401!1 ""))
(assert true)
(define-const var3174 String (append/672562846 var2401!1 "select ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var2401!2 String)
(assert (= var2401!2 (str.++ var2401!1 "select ")))
(assert true)
(define-const var153 String (getSelectSequenceNextValString/-948620771 var3678 var54)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.MariaDB103Dialect: java.lang.String getSelectSequenceNextValString(java.lang.String)>(r2) 
(assert true)
(define-const var3814 String (append/672562846 var3174 var153)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3174!1 String)
(assert (= var3174!1 (str.++ var3174 var153)))
(assert true)
(define-const var2078 String (toString/-2075883882 var3814)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSelectSequenceNextValString/-948620771=([org.hibernate.dialect.MariaDB103Dialect, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1702=org.hibernate.dialect.MariaDB103Dialect, var3678=r1, var54=r2, var3942=null_type, var2401=$r0, var3174=$r4, var153=$r3, var3814=$r5, var2078=$r6}
; {org.hibernate.dialect.MariaDB103Dialect=var1702, r1=var3678, r2=var54, null_type=var3942, $r0=var2401, $r4=var3174, $r3=var153, $r5=var3814, $r6=var2078}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.MariaDB103Dialect;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$r3 = virtualinvoke r1.<org.hibernate.dialect.MariaDB103Dialect: java.lang.String getSelectSequenceNextValString(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1
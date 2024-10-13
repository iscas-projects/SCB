(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var555 0)
(declare-sort var2979 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/-1693843313 (var555 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var555 var555)
(declare-const null-String String)
(declare-const var3771 var555) ; Statement: r1 := @this: org.hibernate.dialect.PostgreSQL81Dialect 
(assert (not (= var3771 null-var555)))
(declare-const var796 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var796 null-String)))
(define-const var1604 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1604)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1604!1 String)
(assert (= var1604!1 ""))
(assert true)
(define-const var3222 String (getForUpdateString/-1693843313 var3771 var796)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.PostgreSQL81Dialect: java.lang.String getForUpdateString(java.lang.String)>(r2) 
(assert true)
(define-const var3739 String (append/672562846 var1604!1 var3222)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1604!2 String)
(assert (= var1604!2 (str.++ var1604!1 var3222)))
(assert true)
(define-const var3385 String (append/672562846 var3739 " nowait ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait ") 
(declare-const var3739!1 String)
(assert (= var3739!1 (str.++ var3739 " nowait ")))
(assert true)
(define-const var1198 String (toString/-2075883882 var3385)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/-1693843313=([org.hibernate.dialect.PostgreSQL81Dialect, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var555=org.hibernate.dialect.PostgreSQL81Dialect, var3771=r1, var796=r2, var2979=null_type, var1604=$r0, var3222=$r3, var3739=$r4, var3385=$r5, var1198=$r6}
; {org.hibernate.dialect.PostgreSQL81Dialect=var555, r1=var3771, r2=var796, null_type=var2979, $r0=var1604, $r3=var3222, $r4=var3739, $r5=var3385, $r6=var1198}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.PostgreSQL81Dialect;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r1.<org.hibernate.dialect.PostgreSQL81Dialect: java.lang.String getForUpdateString(java.lang.String)>(r2);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1
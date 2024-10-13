(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3220 0)
(declare-sort var1767 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-String-init () (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3220 var3220)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3843 var3220) ; Statement: r6 := @this: org.hibernate.dialect.MySQLDialect 
(assert (not (= var3843 null-var3220)))
(declare-const var74 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var74 null-String)))
(define-const var3151 (Array Int String) arr-String-init) ; Statement: $r0 = newarray (java.lang.String)[1] 
(define-const var357 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var357)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var357!1 String)
(assert (= var357!1 ""))
(assert true)
(define-const var807 String (append/672562846 var357!1 "drop database ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop database ") 
(declare-const var357!2 String)
(assert (= var357!2 (str.++ var357!1 "drop database ")))
(assert true)
(define-const var1086 String (append/672562846 var807 var74)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var807!1 String)
(assert (= var807!1 (str.++ var807 var74)))
(assert true)
(define-const var1966 String (toString/-2075883882 var1086)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3151!1 (Array Int String))
(assert (not (= var3151!1 null-__Array__Int__String__)))
(assert (= (select var3151!1 0) var1966)) ; Statement: $r0[0] = $r5 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-String-init=([], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3220=org.hibernate.dialect.MySQLDialect, var3843=r6, var74=r2, var1767=null_type, var3151=$r0, var357=$r1, var807=$r3, var1086=$r4, var1966=$r5}
; {org.hibernate.dialect.MySQLDialect=var3220, r6=var3843, r2=var74, null_type=var1767, $r0=var3151, $r1=var357, $r3=var807, $r4=var1086, $r5=var1966}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.MySQLDialect;	r2 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.String)[1];	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop database ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r0[0] = $r5;	return $r0
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3190 0)
(declare-sort var654 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-String-init () (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3190 var3190)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1553 var3190) ; Statement: r6 := @this: org.hibernate.dialect.MySQLDialect 
(assert (not (= var1553 null-var3190)))
(declare-const var3438 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3438 null-String)))
(define-const var2827 (Array Int String) arr-String-init) ; Statement: $r0 = newarray (java.lang.String)[1] 
(define-const var1027 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1027)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1027!1 String)
(assert (= var1027!1 ""))
(assert true)
(define-const var3637 String (append/672562846 var1027!1 "create database ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create database ") 
(declare-const var1027!2 String)
(assert (= var1027!2 (str.++ var1027!1 "create database ")))
(assert true)
(define-const var867 String (append/672562846 var3637 var3438)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3637!1 String)
(assert (= var3637!1 (str.++ var3637 var3438)))
(assert true)
(define-const var2761 String (toString/-2075883882 var867)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2827!1 (Array Int String))
(assert (not (= var2827!1 null-__Array__Int__String__)))
(assert (= (select var2827!1 0) var2761)) ; Statement: $r0[0] = $r5 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-String-init=([], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3190=org.hibernate.dialect.MySQLDialect, var1553=r6, var3438=r2, var654=null_type, var2827=$r0, var1027=$r1, var3637=$r3, var867=$r4, var2761=$r5}
; {org.hibernate.dialect.MySQLDialect=var3190, r6=var1553, r2=var3438, null_type=var654, $r0=var2827, $r1=var1027, $r3=var3637, $r4=var867, $r5=var2761}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.MySQLDialect;	r2 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.String)[1];	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create database ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r0[0] = $r5;	return $r0
;block_num 1
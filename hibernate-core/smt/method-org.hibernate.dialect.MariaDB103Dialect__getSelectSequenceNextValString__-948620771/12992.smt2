(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3282 0)
(declare-sort var1402 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3282 var3282)
(declare-const null-String String)
(declare-const var791 var3282) ; Statement: r6 := @this: org.hibernate.dialect.MariaDB103Dialect 
(assert (not (= var791 null-var3282)))
(declare-const var2917 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2917 null-String)))
(define-const var2845 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2845)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2845!1 String)
(assert (= var2845!1 ""))
(assert true)
(define-const var551 String (append/672562846 var2845!1 "nextval(")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nextval(") 
(declare-const var2845!2 String)
(assert (= var2845!2 (str.++ var2845!1 "nextval(")))
(assert true)
(define-const var2799 String (append/672562846 var551 var2917)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var551!1 String)
(assert (= var551!1 (str.++ var551 var2917)))
(assert true)
(define-const var587 String (append/672562846 var2799 ")")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2799!1 String)
(assert (= var2799!1 (str.++ var2799 ")")))
(assert true)
(define-const var2666 String (toString/-2075883882 var587)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3282=org.hibernate.dialect.MariaDB103Dialect, var791=r6, var2917=r1, var1402=null_type, var2845=$r0, var551=$r2, var2799=$r3, var587=$r4, var2666=$r5}
; {org.hibernate.dialect.MariaDB103Dialect=var3282, r6=var791, r1=var2917, null_type=var1402, $r0=var2845, $r2=var551, $r3=var2799, $r4=var587, $r5=var2666}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.MariaDB103Dialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nextval(");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
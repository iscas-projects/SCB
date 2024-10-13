(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var15 0)
(declare-sort var975 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var15 var15)
(declare-const null-String String)
(declare-const var3680 var15) ; Statement: r5 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var3680 null-var15)))
(declare-const var2409 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2409 null-String)))
(define-const var2968 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2968)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2968!1 String)
(assert (= var2968!1 ""))
(assert true)
(define-const var2503 String (append/672562846 var2968!1 "not ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not ") 
(declare-const var2968!2 String)
(assert (= var2968!2 (str.++ var2968!1 "not ")))
(assert true)
(define-const var3062 String (append/672562846 var2503 var2409)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2503!1 String)
(assert (= var2503!1 (str.++ var2503 var2409)))
(assert true)
(define-const var175 String (toString/-2075883882 var3062)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var15=org.hibernate.dialect.Dialect, var3680=r5, var2409=r1, var975=null_type, var2968=$r0, var2503=$r2, var3062=$r3, var175=$r4}
; {org.hibernate.dialect.Dialect=var15, r5=var3680, r1=var2409, null_type=var975, $r0=var2968, $r2=var2503, $r3=var3062, $r4=var175}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.Dialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1
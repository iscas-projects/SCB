(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2792 0)
(declare-sort var863 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-String-init () (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2792 var2792)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3251 var2792) ; Statement: r6 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var3251 null-var2792)))
(declare-const var759 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var759 null-String)))
(define-const var294 (Array Int String) arr-String-init) ; Statement: $r0 = newarray (java.lang.String)[1] 
(define-const var3822 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3822)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3822!1 String)
(assert (= var3822!1 ""))
(assert true)
(define-const var212 String (append/672562846 var3822!1 "create schema ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create schema ") 
(declare-const var3822!2 String)
(assert (= var3822!2 (str.++ var3822!1 "create schema ")))
(assert true)
(define-const var3885 String (append/672562846 var212 var759)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var212!1 String)
(assert (= var212!1 (str.++ var212 var759)))
(assert true)
(define-const var3700 String (toString/-2075883882 var3885)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var294!1 (Array Int String))
(assert (not (= var294!1 null-__Array__Int__String__)))
(assert (= (select var294!1 0) var3700)) ; Statement: $r0[0] = $r5 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-String-init=([], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2792=org.hibernate.dialect.Dialect, var3251=r6, var759=r2, var863=null_type, var294=$r0, var3822=$r1, var212=$r3, var3885=$r4, var3700=$r5}
; {org.hibernate.dialect.Dialect=var2792, r6=var3251, r2=var759, null_type=var863, $r0=var294, $r1=var3822, $r3=var212, $r4=var3885, $r5=var3700}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.Dialect;	r2 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.String)[1];	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create schema ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r0[0] = $r5;	return $r0
;block_num 1
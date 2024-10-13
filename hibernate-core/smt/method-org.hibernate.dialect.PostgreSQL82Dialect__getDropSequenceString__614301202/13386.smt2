(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var864 0)
(declare-sort var2527 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var864 var864)
(declare-const null-String String)
(declare-const var570 var864) ; Statement: r5 := @this: org.hibernate.dialect.PostgreSQL82Dialect 
(assert (not (= var570 null-var864)))
(declare-const var2396 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2396 null-String)))
(define-const var1960 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1960)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1960!1 String)
(assert (= var1960!1 ""))
(assert true)
(define-const var1349 String (append/672562846 var1960!1 "drop sequence if exists ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop sequence if exists ") 
(declare-const var1960!2 String)
(assert (= var1960!2 (str.++ var1960!1 "drop sequence if exists ")))
(assert true)
(define-const var1393 String (append/672562846 var1349 var2396)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1349!1 String)
(assert (= var1349!1 (str.++ var1349 var2396)))
(assert true)
(define-const var2943 String (toString/-2075883882 var1393)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var864=org.hibernate.dialect.PostgreSQL82Dialect, var570=r5, var2396=r1, var2527=null_type, var1960=$r0, var1349=$r2, var1393=$r3, var2943=$r4}
; {org.hibernate.dialect.PostgreSQL82Dialect=var864, r5=var570, r1=var2396, null_type=var2527, $r0=var1960, $r2=var1349, $r3=var1393, $r4=var2943}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.PostgreSQL82Dialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop sequence if exists ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1
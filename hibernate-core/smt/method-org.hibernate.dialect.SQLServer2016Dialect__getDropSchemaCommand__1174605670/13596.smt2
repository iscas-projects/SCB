(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2828 0)
(declare-sort var2092 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-String-init () (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2828 var2828)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1686 var2828) ; Statement: r6 := @this: org.hibernate.dialect.SQLServer2016Dialect 
(assert (not (= var1686 null-var2828)))
(declare-const var2988 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2988 null-String)))
(define-const var108 (Array Int String) arr-String-init) ; Statement: $r0 = newarray (java.lang.String)[1] 
(define-const var2684 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2684)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2684!1 String)
(assert (= var2684!1 ""))
(assert true)
(define-const var471 String (append/672562846 var2684!1 "drop schema if exists ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop schema if exists ") 
(declare-const var2684!2 String)
(assert (= var2684!2 (str.++ var2684!1 "drop schema if exists ")))
(assert true)
(define-const var609 String (append/672562846 var471 var2988)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var471!1 String)
(assert (= var471!1 (str.++ var471 var2988)))
(assert true)
(define-const var3537 String (toString/-2075883882 var609)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var108!1 (Array Int String))
(assert (not (= var108!1 null-__Array__Int__String__)))
(assert (= (select var108!1 0) var3537)) ; Statement: $r0[0] = $r5 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-String-init=([], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2828=org.hibernate.dialect.SQLServer2016Dialect, var1686=r6, var2988=r2, var2092=null_type, var108=$r0, var2684=$r1, var471=$r3, var609=$r4, var3537=$r5}
; {org.hibernate.dialect.SQLServer2016Dialect=var2828, r6=var1686, r2=var2988, null_type=var2092, $r0=var108, $r1=var2684, $r3=var471, $r4=var609, $r5=var3537}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.SQLServer2016Dialect;	r2 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.String)[1];	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop schema if exists ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r0[0] = $r5;	return $r0
;block_num 1
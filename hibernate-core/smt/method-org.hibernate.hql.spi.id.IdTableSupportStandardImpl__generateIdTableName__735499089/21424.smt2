(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var730 0)
(declare-sort var2800 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var730 var730)
(declare-const null-String String)
(declare-const var2884 var730) ; Statement: r5 := @this: org.hibernate.hql.spi.id.IdTableSupportStandardImpl 
(assert (not (= var2884 null-var730)))
(declare-const var3470 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3470 null-String)))
(define-const var2524 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2524)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2524!1 String)
(assert (= var2524!1 ""))
(assert true)
(define-const var421 String (append/672562846 var2524!1 "HT_")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("HT_") 
(declare-const var2524!2 String)
(assert (= var2524!2 (str.++ var2524!1 "HT_")))
(assert true)
(define-const var1897 String (append/672562846 var421 var3470)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var421!1 String)
(assert (= var421!1 (str.++ var421 var3470)))
(assert true)
(define-const var2586 String (toString/-2075883882 var1897)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var730=org.hibernate.hql.spi.id.IdTableSupportStandardImpl, var2884=r5, var3470=r1, var2800=null_type, var2524=$r0, var421=$r2, var1897=$r3, var2586=$r4}
; {org.hibernate.hql.spi.id.IdTableSupportStandardImpl=var730, r5=var2884, r1=var3470, null_type=var2800, $r0=var2524, $r2=var421, $r3=var1897, $r4=var2586}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.hql.spi.id.IdTableSupportStandardImpl;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("HT_");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1498 0)
(declare-sort var3282 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1498 var1498)
(declare-const null-String String)
(declare-const var2149 var1498) ; Statement: r5 := @this: org.hibernate.dialect.IngresDialect 
(assert (not (= var2149 null-var1498)))
(declare-const var1434 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1434 null-String)))
(define-const var3508 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3508)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3508!1 String)
(assert (= var3508!1 ""))
(assert true)
(define-const var3658 String (append/672562846 var3508!1 var1434)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3508!2 String)
(assert (= var3508!2 (str.++ var3508!1 var1434)))
(assert true)
(define-const var3188 String (append/672562846 var3658 ".nextval")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".nextval") 
(declare-const var3658!1 String)
(assert (= var3658!1 (str.++ var3658 ".nextval")))
(assert true)
(define-const var732 String (toString/-2075883882 var3188)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1498=org.hibernate.dialect.IngresDialect, var2149=r5, var1434=r1, var3282=null_type, var3508=$r0, var3658=$r2, var3188=$r3, var732=$r4}
; {org.hibernate.dialect.IngresDialect=var1498, r5=var2149, r1=var1434, null_type=var3282, $r0=var3508, $r2=var3658, $r3=var3188, $r4=var732}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.IngresDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".nextval");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1
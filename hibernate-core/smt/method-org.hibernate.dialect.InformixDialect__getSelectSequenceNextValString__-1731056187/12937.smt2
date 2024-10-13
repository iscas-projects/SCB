(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1511 0)
(declare-sort var2620 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1511 var1511)
(declare-const null-String String)
(declare-const var2276 var1511) ; Statement: r5 := @this: org.hibernate.dialect.InformixDialect 
(assert (not (= var2276 null-var1511)))
(declare-const var3422 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3422 null-String)))
(define-const var2318 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2318)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2318!1 String)
(assert (= var2318!1 ""))
(assert true)
(define-const var3797 String (append/672562846 var2318!1 var3422)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2318!2 String)
(assert (= var2318!2 (str.++ var2318!1 var3422)))
(assert true)
(define-const var1934 String (append/672562846 var3797 ".nextval")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".nextval") 
(declare-const var3797!1 String)
(assert (= var3797!1 (str.++ var3797 ".nextval")))
(assert true)
(define-const var404 String (toString/-2075883882 var1934)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1511=org.hibernate.dialect.InformixDialect, var2276=r5, var3422=r1, var2620=null_type, var2318=$r0, var3797=$r2, var1934=$r3, var404=$r4}
; {org.hibernate.dialect.InformixDialect=var1511, r5=var2276, r1=var3422, null_type=var2620, $r0=var2318, $r2=var3797, $r3=var1934, $r4=var404}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.InformixDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".nextval");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1
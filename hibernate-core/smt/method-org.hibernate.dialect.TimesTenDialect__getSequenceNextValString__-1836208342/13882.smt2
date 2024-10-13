(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3513 0)
(declare-sort var3723 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3513 var3513)
(declare-const null-String String)
(declare-const var1923 var3513) ; Statement: r6 := @this: org.hibernate.dialect.TimesTenDialect 
(assert (not (= var1923 null-var3513)))
(declare-const var601 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var601 null-String)))
(define-const var918 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var918)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var918!1 String)
(assert (= var918!1 ""))
(assert true)
(define-const var3818 String (append/672562846 var918!1 "select first 1 ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select first 1 ") 
(declare-const var918!2 String)
(assert (= var918!2 (str.++ var918!1 "select first 1 ")))
(assert true)
(define-const var3330 String (append/672562846 var3818 var601)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3818!1 String)
(assert (= var3818!1 (str.++ var3818 var601)))
(assert true)
(define-const var1705 String (append/672562846 var3330 ".nextval from sys.tables")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".nextval from sys.tables") 
(declare-const var3330!1 String)
(assert (= var3330!1 (str.++ var3330 ".nextval from sys.tables")))
(assert true)
(define-const var3877 String (toString/-2075883882 var1705)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3513=org.hibernate.dialect.TimesTenDialect, var1923=r6, var601=r1, var3723=null_type, var918=$r0, var3818=$r2, var3330=$r3, var1705=$r4, var3877=$r5}
; {org.hibernate.dialect.TimesTenDialect=var3513, r6=var1923, r1=var601, null_type=var3723, $r0=var918, $r2=var3818, $r3=var3330, $r4=var1705, $r5=var3877}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.TimesTenDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select first 1 ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".nextval from sys.tables");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
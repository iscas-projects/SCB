(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3405 0)
(declare-sort var2799 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3405 var3405)
(declare-const null-String String)
(declare-const var3542 var3405) ; Statement: r5 := @this: org.hibernate.dialect.CUBRIDDialect 
(assert (not (= var3542 null-var3405)))
(declare-const var2005 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2005 null-String)))
(define-const var1893 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1893)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1893!1 String)
(assert (= var1893!1 ""))
(assert true)
(define-const var1724 String (append/672562846 var1893!1 "drop serial ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop serial ") 
(declare-const var1893!2 String)
(assert (= var1893!2 (str.++ var1893!1 "drop serial ")))
(assert true)
(define-const var1402 String (append/672562846 var1724 var2005)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1724!1 String)
(assert (= var1724!1 (str.++ var1724 var2005)))
(assert true)
(define-const var2944 String (toString/-2075883882 var1402)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3405=org.hibernate.dialect.CUBRIDDialect, var3542=r5, var2005=r1, var2799=null_type, var1893=$r0, var1724=$r2, var1402=$r3, var2944=$r4}
; {org.hibernate.dialect.CUBRIDDialect=var3405, r5=var3542, r1=var2005, null_type=var2799, $r0=var1893, $r2=var1724, $r3=var1402, $r4=var2944}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.CUBRIDDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop serial ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1
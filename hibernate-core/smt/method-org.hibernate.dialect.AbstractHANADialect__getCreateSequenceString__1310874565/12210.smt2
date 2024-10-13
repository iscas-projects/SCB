(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2073 0)
(declare-sort var1350 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2073 var2073)
(declare-const null-String String)
(declare-const var3052 var2073) ; Statement: r5 := @this: org.hibernate.dialect.AbstractHANADialect 
(assert (not (= var3052 null-var2073)))
(declare-const var1178 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1178 null-String)))
(define-const var1432 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1432)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1432!1 String)
(assert (= var1432!1 ""))
(assert true)
(define-const var1482 String (append/672562846 var1432!1 "create sequence ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create sequence ") 
(declare-const var1432!2 String)
(assert (= var1432!2 (str.++ var1432!1 "create sequence ")))
(assert true)
(define-const var2722 String (append/672562846 var1482 var1178)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1482!1 String)
(assert (= var1482!1 (str.++ var1482 var1178)))
(assert true)
(define-const var2969 String (toString/-2075883882 var2722)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2073=org.hibernate.dialect.AbstractHANADialect, var3052=r5, var1178=r1, var1350=null_type, var1432=$r0, var1482=$r2, var2722=$r3, var2969=$r4}
; {org.hibernate.dialect.AbstractHANADialect=var2073, r5=var3052, r1=var1178, null_type=var1350, $r0=var1432, $r2=var1482, $r3=var2722, $r4=var2969}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.AbstractHANADialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create sequence ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1
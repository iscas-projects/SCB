(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var169 0)
(declare-sort var367 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var169 var169)
(declare-const null-String String)
(declare-const var1639 var169) ; Statement: r5 := @this: org.hibernate.dialect.AbstractHANADialect 
(assert (not (= var1639 null-var169)))
(declare-const var2286 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2286 null-String)))
(define-const var549 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var549)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var549!1 String)
(assert (= var549!1 ""))
(assert true)
(define-const var3023 String (append/672562846 var549!1 var2286)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var549!2 String)
(assert (= var549!2 (str.++ var549!1 var2286)))
(assert true)
(define-const var248 String (append/672562846 var3023 ".nextval")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".nextval") 
(declare-const var3023!1 String)
(assert (= var3023!1 (str.++ var3023 ".nextval")))
(assert true)
(define-const var2788 String (toString/-2075883882 var248)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var169=org.hibernate.dialect.AbstractHANADialect, var1639=r5, var2286=r1, var367=null_type, var549=$r0, var3023=$r2, var248=$r3, var2788=$r4}
; {org.hibernate.dialect.AbstractHANADialect=var169, r5=var1639, r1=var2286, null_type=var367, $r0=var549, $r2=var3023, $r3=var248, $r4=var2788}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.AbstractHANADialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".nextval");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1
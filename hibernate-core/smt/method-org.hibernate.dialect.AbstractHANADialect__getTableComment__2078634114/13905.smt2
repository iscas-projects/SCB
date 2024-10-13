(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1287 0)
(declare-sort var1267 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1287 var1287)
(declare-const null-String String)
(declare-const var568 var1287) ; Statement: r6 := @this: org.hibernate.dialect.AbstractHANADialect 
(assert (not (= var568 null-var1287)))
(declare-const var727 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var727 null-String)))
(define-const var2005 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2005)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2005!1 String)
(assert (= var2005!1 ""))
(assert true)
(define-const var2919 String (append/672562846 var2005!1 "comment \u0027")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("comment \'") 
(declare-const var2005!2 String)
(assert (= var2005!2 (str.++ var2005!1 "comment \u0027")))
(assert true)
(define-const var1832 String (append/672562846 var2919 var727)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2919!1 String)
(assert (= var2919!1 (str.++ var2919 var727)))
(assert true)
(define-const var241 String (append/672562846 var1832 "\u0027")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1832!1 String)
(assert (= var1832!1 (str.++ var1832 "\u0027")))
(assert true)
(define-const var397 String (toString/-2075883882 var241)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1287=org.hibernate.dialect.AbstractHANADialect, var568=r6, var727=r1, var1267=null_type, var2005=$r0, var2919=$r2, var1832=$r3, var241=$r4, var397=$r5}
; {org.hibernate.dialect.AbstractHANADialect=var1287, r6=var568, r1=var727, null_type=var1267, $r0=var2005, $r2=var2919, $r3=var1832, $r4=var241, $r5=var397}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.AbstractHANADialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("comment \'");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
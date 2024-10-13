(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2559 0)
(declare-sort var412 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2559 var2559)
(declare-const null-String String)
(declare-const var2714 var2559) ; Statement: r6 := @this: org.hibernate.dialect.MckoiDialect 
(assert (not (= var2714 null-var2559)))
(declare-const var875 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var875 null-String)))
(define-const var1338 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1338)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1338!1 String)
(assert (= var1338!1 ""))
(assert true)
(define-const var2720 String (append/672562846 var1338!1 "nextval(\u0027")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nextval(\'") 
(declare-const var1338!2 String)
(assert (= var1338!2 (str.++ var1338!1 "nextval(\u0027")))
(assert true)
(define-const var1204 String (append/672562846 var2720 var875)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2720!1 String)
(assert (= var2720!1 (str.++ var2720 var875)))
(assert true)
(define-const var3540 String (append/672562846 var1204 "\u0027)")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\')") 
(declare-const var1204!1 String)
(assert (= var1204!1 (str.++ var1204 "\u0027)")))
(assert true)
(define-const var2401 String (toString/-2075883882 var3540)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2559=org.hibernate.dialect.MckoiDialect, var2714=r6, var875=r1, var412=null_type, var1338=$r0, var2720=$r2, var1204=$r3, var3540=$r4, var2401=$r5}
; {org.hibernate.dialect.MckoiDialect=var2559, r6=var2714, r1=var875, null_type=var412, $r0=var1338, $r2=var2720, $r3=var1204, $r4=var3540, $r5=var2401}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.MckoiDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nextval(\'");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\')");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
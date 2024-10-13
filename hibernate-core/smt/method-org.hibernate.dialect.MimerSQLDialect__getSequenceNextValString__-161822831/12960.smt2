(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1802 0)
(declare-sort var443 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1802 var1802)
(declare-const null-String String)
(declare-const var864 var1802) ; Statement: r6 := @this: org.hibernate.dialect.MimerSQLDialect 
(assert (not (= var864 null-var1802)))
(declare-const var3410 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3410 null-String)))
(define-const var1626 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1626)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1626!1 String)
(assert (= var1626!1 ""))
(assert true)
(define-const var2157 String (append/672562846 var1626!1 "select next_value of ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select next_value of ") 
(declare-const var1626!2 String)
(assert (= var1626!2 (str.++ var1626!1 "select next_value of ")))
(assert true)
(define-const var2781 String (append/672562846 var2157 var3410)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2157!1 String)
(assert (= var2157!1 (str.++ var2157 var3410)))
(assert true)
(define-const var320 String (append/672562846 var2781 " from system.onerow")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from system.onerow") 
(declare-const var2781!1 String)
(assert (= var2781!1 (str.++ var2781 " from system.onerow")))
(assert true)
(define-const var2708 String (toString/-2075883882 var320)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1802=org.hibernate.dialect.MimerSQLDialect, var864=r6, var3410=r1, var443=null_type, var1626=$r0, var2157=$r2, var2781=$r3, var320=$r4, var2708=$r5}
; {org.hibernate.dialect.MimerSQLDialect=var1802, r6=var864, r1=var3410, null_type=var443, $r0=var1626, $r2=var2157, $r3=var2781, $r4=var320, $r5=var2708}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.MimerSQLDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select next_value of ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from system.onerow");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
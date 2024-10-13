(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3094 0)
(declare-sort var2324 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3094 var3094)
(declare-const null-String String)
(declare-const var3599 var3094) ; Statement: r5 := @this: org.hibernate.dialect.TimesTenDialect 
(assert (not (= var3599 null-var3094)))
(declare-const var3731 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3731 null-String)))
(define-const var1271 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1271)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1271!1 String)
(assert (= var1271!1 ""))
(assert true)
(define-const var1819 String (append/672562846 var1271!1 "drop sequence ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop sequence ") 
(declare-const var1271!2 String)
(assert (= var1271!2 (str.++ var1271!1 "drop sequence ")))
(assert true)
(define-const var1422 String (append/672562846 var1819 var3731)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1819!1 String)
(assert (= var1819!1 (str.++ var1819 var3731)))
(assert true)
(define-const var1048 String (toString/-2075883882 var1422)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3094=org.hibernate.dialect.TimesTenDialect, var3599=r5, var3731=r1, var2324=null_type, var1271=$r0, var1819=$r2, var1422=$r3, var1048=$r4}
; {org.hibernate.dialect.TimesTenDialect=var3094, r5=var3599, r1=var3731, null_type=var2324, $r0=var1271, $r2=var1819, $r3=var1422, $r4=var1048}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.TimesTenDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop sequence ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2353 0)
(declare-sort var2756 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2353 var2353)
(declare-const null-String String)
(declare-const var3004 var2353) ; Statement: r6 := @this: org.hibernate.dialect.MimerSQLDialect 
(assert (not (= var3004 null-var2353)))
(declare-const var3541 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3541 null-String)))
(define-const var2363 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2363)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2363!1 String)
(assert (= var2363!1 ""))
(assert true)
(define-const var2444 String (append/672562846 var2363!1 "drop sequence ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop sequence ") 
(declare-const var2363!2 String)
(assert (= var2363!2 (str.++ var2363!1 "drop sequence ")))
(assert true)
(define-const var614 String (append/672562846 var2444 var3541)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2444!1 String)
(assert (= var2444!1 (str.++ var2444 var3541)))
(assert true)
(define-const var1108 String (append/672562846 var614 " restrict")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" restrict") 
(declare-const var614!1 String)
(assert (= var614!1 (str.++ var614 " restrict")))
(assert true)
(define-const var729 String (toString/-2075883882 var1108)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2353=org.hibernate.dialect.MimerSQLDialect, var3004=r6, var3541=r1, var2756=null_type, var2363=$r0, var2444=$r2, var614=$r3, var1108=$r4, var729=$r5}
; {org.hibernate.dialect.MimerSQLDialect=var2353, r6=var3004, r1=var3541, null_type=var2756, $r0=var2363, $r2=var2444, $r3=var614, $r4=var1108, $r5=var729}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.MimerSQLDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop sequence ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" restrict");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
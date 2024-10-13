(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3753 0)
(declare-sort var3074 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3753 var3753)
(declare-const null-String String)
(declare-const var1688 var3753) ; Statement: r6 := @this: org.hibernate.dialect.HSQLDialect 
(assert (not (= var1688 null-var3753)))
(declare-const var2291 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2291 null-String)))
(define-const var2081 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2081)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2081!1 String)
(assert (= var2081!1 ""))
(assert true)
(define-const var2395 String (append/672562846 var2081!1 "drop sequence ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop sequence ") 
(declare-const var2081!2 String)
(assert (= var2081!2 (str.++ var2081!1 "drop sequence ")))
(assert true)
(define-const var1720 String (append/672562846 var2395 var2291)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2395!1 String)
(assert (= var2395!1 (str.++ var2395 var2291)))
(assert true)
(define-const var1208 String (append/672562846 var1720 " if exists")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" if exists") 
(declare-const var1720!1 String)
(assert (= var1720!1 (str.++ var1720 " if exists")))
(assert true)
(define-const var2486 String (toString/-2075883882 var1208)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3753=org.hibernate.dialect.HSQLDialect, var1688=r6, var2291=r1, var3074=null_type, var2081=$r0, var2395=$r2, var1720=$r3, var1208=$r4, var2486=$r5}
; {org.hibernate.dialect.HSQLDialect=var3753, r6=var1688, r1=var2291, null_type=var3074, $r0=var2081, $r2=var2395, $r3=var1720, $r4=var1208, $r5=var2486}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.HSQLDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("drop sequence ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" if exists");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
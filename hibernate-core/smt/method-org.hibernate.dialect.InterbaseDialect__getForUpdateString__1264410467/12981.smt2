(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var294 0)
(declare-sort var3392 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var294 var294)
(declare-const null-String String)
(declare-const var1732 var294) ; Statement: r6 := @this: org.hibernate.dialect.InterbaseDialect 
(assert (not (= var1732 null-var294)))
(declare-const var152 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var152 null-String)))
(define-const var3939 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3939)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3939!1 String)
(assert (= var3939!1 ""))
(assert true)
(define-const var1120 String (append/672562846 var3939!1 " for update of ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for update of ") 
(declare-const var3939!2 String)
(assert (= var3939!2 (str.++ var3939!1 " for update of ")))
(assert true)
(define-const var2253 String (append/672562846 var1120 var152)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1120!1 String)
(assert (= var1120!1 (str.++ var1120 var152)))
(assert true)
(define-const var2431 String (append/672562846 var2253 " with lock")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with lock") 
(declare-const var2253!1 String)
(assert (= var2253!1 (str.++ var2253 " with lock")))
(assert true)
(define-const var348 String (toString/-2075883882 var2431)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var294=org.hibernate.dialect.InterbaseDialect, var1732=r6, var152=r1, var3392=null_type, var3939=$r0, var1120=$r2, var2253=$r3, var2431=$r4, var348=$r5}
; {org.hibernate.dialect.InterbaseDialect=var294, r6=var1732, r1=var152, null_type=var3392, $r0=var3939, $r2=var1120, $r3=var2253, $r4=var2431, $r5=var348}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.InterbaseDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for update of ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with lock");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var729 0)
(declare-sort var1868 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var729 var729)
(declare-const null-String String)
(declare-const var1980 var729) ; Statement: r6 := @this: org.hibernate.dialect.Oracle9Dialect 
(assert (not (= var1980 null-var729)))
(declare-const var945 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var945 null-String)))
(define-const var89 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var89)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var89!1 String)
(assert (= var89!1 ""))
(assert true)
(define-const var2898 String (append/672562846 var89!1 "not (")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not (") 
(declare-const var89!2 String)
(assert (= var89!2 (str.++ var89!1 "not (")))
(assert true)
(define-const var3800 String (append/672562846 var2898 var945)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2898!1 String)
(assert (= var2898!1 (str.++ var2898 var945)))
(assert true)
(define-const var1863 String (append/672562846 var3800 ")")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3800!1 String)
(assert (= var3800!1 (str.++ var3800 ")")))
(assert true)
(define-const var2717 String (toString/-2075883882 var1863)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var729=org.hibernate.dialect.Oracle9Dialect, var1980=r6, var945=r1, var1868=null_type, var89=$r0, var2898=$r2, var3800=$r3, var1863=$r4, var2717=$r5}
; {org.hibernate.dialect.Oracle9Dialect=var729, r6=var1980, r1=var945, null_type=var1868, $r0=var89, $r2=var2898, $r3=var3800, $r4=var1863, $r5=var2717}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.Oracle9Dialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not (");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1
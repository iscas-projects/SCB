(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3480 0)
(declare-sort var507 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3480 var3480)
(declare-const null-String String)
(declare-const var510 var3480) ; Statement: r6 := @this: cn.hutool.http.HTMLFilter 
(assert (not (= var510 null-var3480)))
(declare-const var1483 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1483 null-String)))
(declare-const var3125 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3125 null-String)))
(define-const var2830 String ";") ; Statement: $r1 = ";" 
(assert true)
(define-const var3292 Bool (= var2830 var3125)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (= (ite var3292 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3815 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3815)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3815!1 String)
(assert (= var3815!1 ""))
(assert true)
(define-const var504 String (append/672562846 var3815!1 "&amp;")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("&amp;") 
(declare-const var3815!2 String)
(assert (= var3815!2 (str.++ var3815!1 "&amp;")))
(assert true)
(define-const var2245 String (append/672562846 var504 var1483)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var504!1 String)
(assert (= var504!1 (str.++ var504 var1483)))
(assert true)
(define-const var38 String (toString/-2075883882 var2245)) ; Statement: $r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3480=cn.hutool.http.HTMLFilter, var510=r6, var1483=r3, var507=null_type, var3125=r0, var2830=$r1, var3292=$z0, var3815=$r2, var504=$r4, var2245=$r5, var38=$r10}
; {cn.hutool.http.HTMLFilter=var3480, r6=var510, r3=var1483, null_type=var507, r0=var3125, $r1=var2830, $z0=var3292, $r2=var3815, $r4=var504, $r5=var2245, $r10=var38}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: cn.hutool.http.HTMLFilter;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$r1 = ";";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("&amp;");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3
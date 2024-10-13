(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2531 0)
(declare-sort var1187 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1187-init () var1187)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var1187 String) void)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2904 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2904 null-String)))
(declare-const var3502 (Array Int String)) ; Statement: r0 := @parameter1: java.lang.String[] 
(assert (not (= var3502 null-__Array__Int__String__)))
(define-const var3255 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var838 Int (getLength-Arr-String-1 var3502)) ; Statement: $i0 = lengthof r0 
 ; Statement: if i1 >= $i0 goto $r1 = new org.hibernate.AssertionFailure 
(assert (>= var3255 var838)) ; Cond: i1 >= $i0 
(define-const var2938 var1187 var1187-init) ; Statement: $r1 = new org.hibernate.AssertionFailure 
(define-const var2540 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2540)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2540!1 String)
(assert (= var2540!1 ""))
(assert true)
(define-const var188 String (append/672562846 var2540!1 "Table ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Table ") 
(declare-const var2540!2 String)
(assert (= var2540!2 (str.++ var2540!1 "Table ")))
(assert true)
(define-const var355 String (append/672562846 var188 var2904)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var188!1 String)
(assert (= var188!1 (str.++ var188 var2904)))
(assert true)
(define-const var2683 String (append/672562846 var355 " not found")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not found") 
(declare-const var355!1 String)
(assert (= var355!1 (str.++ var355 " not found")))
(assert true)
(define-const var1471 String (toString/-2075883882 var2683)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var2938 var1471)) ; Statement: specialinvoke $r1.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r7) 

(declare-const var2938!1 var1187)
(declare-const var1471!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-String-1=([java.lang.String[]], int), var1187-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var2904=r3, var2531=null_type, var3502=r0, var3255=i1, var838=$i0, var1187=org.hibernate.AssertionFailure, var2938=$r1, var2540=$r2, var188=$r4, var355=$r5, var2683=$r6, var1471=$r7}
; {r3=var2904, null_type=var2531, r0=var3502, i1=var3255, $i0=var838, org.hibernate.AssertionFailure=var1187, $r1=var2938, $r2=var2540, $r4=var188, $r5=var355, $r6=var2683, $r7=var1471}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String[];	i1 = 0;	$i0 = lengthof r0;	if i1 >= $i0 goto $r1 = new org.hibernate.AssertionFailure;	$r1 = new org.hibernate.AssertionFailure;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Table ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not found");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r7);	throw $r1
;block_num 3
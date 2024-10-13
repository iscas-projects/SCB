(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3718 0)
(declare-sort var3610 0)
(declare-sort var279 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var279-init () var279)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1862440627 (var279 String) void)
(declare-const null-var3718 var3718)
(declare-const null-String String)
(declare-const var3324 var3718) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3324 null-var3718)))
(declare-const var1333 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1333 null-String)))
 ; Statement: if r0 != null goto return 
(assert (not (not (= var3324 null-var3718)))) ; Negate: Cond: r0 != null  
(define-const var2869 var279 var279-init) ; Statement: $r1 = new java.lang.NullPointerException 
(define-const var8 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var8)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var8!1 String)
(assert (= var8!1 ""))
(assert true)
(define-const var663 String (append/672562846 var8!1 var1333)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var8!2 String)
(assert (= var8!2 (str.++ var8!1 var1333)))
(assert true)
(define-const var3130 String (append/672562846 var663 " is null")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is null") 
(declare-const var663!1 String)
(assert (= var663!1 (str.++ var663 " is null")))
(assert true)
(define-const var1966 String (toString/-2075883882 var3130)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1862440627 var2869 var1966)) ; Statement: specialinvoke $r1.<java.lang.NullPointerException: void <init>(java.lang.String)>($r6) 

(declare-const var2869!1 var279)
(declare-const var1966!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var279-init=([], java.lang.NullPointerException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1862440627=([java.lang.NullPointerException, java.lang.String], void)}
; {var3718=java.lang.Object, var3324=r0, var1333=r3, var3610=null_type, var279=java.lang.NullPointerException, var2869=$r1, var8=$r2, var663=$r4, var3130=$r5, var1966=$r6}
; {java.lang.Object=var3718, r0=var3324, r3=var1333, null_type=var3610, java.lang.NullPointerException=var279, $r1=var2869, $r2=var8, $r4=var663, $r5=var3130, $r6=var1966}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.String;	if r0 != null goto return;	$r1 = new java.lang.NullPointerException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is null");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.NullPointerException: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 2
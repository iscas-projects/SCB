(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1054 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3437 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3437 null-String)))
(declare-const var3603 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3603 null-String)))
(declare-const var1802 Int) ; Statement: i19 := @parameter2: int 
(assert (not (= var1802 null-Int)))
(assert true)
(define-const var766 Int (length/-134980193 var3603)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i19 >= 0 goto (branch) 
(assert (>= var1802 0)) ; Cond: i19 >= 0 
 ; Statement: if i19 < i0 goto i20 = 0 
(assert (not (< var1802 var766))) ; Negate: Cond: i19 < i0  
(define-const var361 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var361)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var361!1 String)
(assert (= var361!1 ""))
(assert true)
(define-const var2506 String (append/672562846 var361!1 var3437)) ; Statement: $r20 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var361!2 String)
(assert (= var361!2 (str.++ var361!1 var3437)))
(assert true)
(define-const var3417 String (append/672562846 var2506 "\nError location: At the end of text.")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nError location: At the end of text.") 
(declare-const var2506!1 String)
(assert (= var2506!1 (str.++ var2506 "\nError location: At the end of text.")))
(assert true)
(define-const var1097 String (toString/-2075883882 var3417)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3437=r1, var1054=null_type, var3603=r0, var1802=i19, var766=i0, var361=$r34, var2506=$r20, var3417=$r21, var1097=$r22}
; {r1=var3437, null_type=var1054, r0=var3603, i19=var1802, i0=var766, $r34=var361, $r20=var2506, $r21=var3417, $r22=var1097}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	i19 := @parameter2: int;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i19 >= 0 goto (branch);	if i19 < i0 goto i20 = 0;	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nError location: At the end of text.");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	return $r22
;block_num 3
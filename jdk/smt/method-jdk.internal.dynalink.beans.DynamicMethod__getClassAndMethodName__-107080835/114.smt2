(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2036 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCanonicalName/935544231 (ClassObject) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const var3018 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3018 null-ClassObject)))
(declare-const var2368 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var2368 null-String)))
(assert true)
(define-const var3967 String (getCanonicalName/935544231 var3018)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getCanonicalName()>() 
(define-const var2648 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2648)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2648!1 String)
(assert (= var2648!1 ""))
 ; Statement: if r1 != null goto $r8 = r1 
(assert (not (= var3967 null-String))) ; Cond: r1 != null 
(define-const var3883 String var3967) ; Statement: $r8 = r1 
(assert true) ; Non Conditional
(assert true)
(define-const var473 String (append/672562846 var2648!1 var3883)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2648!2 String)
(assert (= var2648!2 (str.++ var2648!1 var3883)))
(assert true)
(define-const var3314 String (append/672562846 var473 ".")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var473!1 String)
(assert (= var473!1 (str.++ var473 ".")))
(assert true)
(define-const var2327 String (append/672562846 var3314 var2368)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3314!1 String)
(assert (= var3314!1 (str.++ var3314 var2368)))
(assert true)
(define-const var3235 String (toString/-2075883882 var2327)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getCanonicalName/935544231=([java.lang.Class], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3018=r0, var2368=r4, var2036=null_type, var3967=r1, var2648=$r2, var3883=$r8, var473=$r3, var3314=$r5, var2327=$r6, var3235=$r7}
; {r0=var3018, r4=var2368, null_type=var2036, r1=var3967, $r2=var2648, $r8=var3883, $r3=var473, $r5=var3314, $r6=var2327, $r7=var3235}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r4 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getCanonicalName()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	if r1 != null goto $r8 = r1;	$r8 = r1;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3683 0)
(declare-sort var2296 0)
(declare-sort var2473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2296!class ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getCanonicalName/935544231 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3683_warning/1983827524 (String) var2473)
(declare-const null-var3683 var3683)
(declare-const null-ClassObject ClassObject)
(declare-const var2166 var3683) ; Statement: r10 := @this: junit.framework.TestSuite 
(assert (not (= var2166 null-var3683)))
(declare-const var1285 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1285 null-ClassObject)))
(define-const var1909 ClassObject var2296!class) ; Statement: $r1 = class "Ljunit/framework/TestCase;" 
(assert true)
(define-const var371 Bool (isAssignableFrom/-1028998700 var1909 var1285)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (= (ite var371 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2889 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2889)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2889!1 String)
(assert (= var2889!1 ""))
(assert true)
(define-const var2312 String (getCanonicalName/935544231 var1285)) ; Statement: $r3 = virtualinvoke r0.<java.lang.Class: java.lang.String getCanonicalName()>() 
(assert true)
(define-const var1381 String (append/672562846 var2889!1 var2312)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2889!2 String)
(assert (= var2889!2 (str.++ var2889!1 var2312)))
(assert true)
(define-const var3633 String (append/672562846 var1381 " does not extend TestCase")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not extend TestCase") 
(declare-const var1381!1 String)
(assert (= var1381!1 (str.++ var1381 " does not extend TestCase")))
(assert true)
(define-const var141 String (toString/-2075883882 var3633)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2431 var2473 (var3683_warning/1983827524 var141)) ; Statement: $r7 = staticinvoke <junit.framework.TestSuite: junit.framework.Test warning(java.lang.String)>($r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getCanonicalName/935544231=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3683_warning/1983827524=([java.lang.String], junit.framework.Test)}
; {var3683=junit.framework.TestSuite, var2166=r10, var1285=r0, var2296=junit.framework.TestCase, var1909=$r1, var371=$z0, var2889=$r2, var2312=$r3, var1381=$r4, var3633=$r5, var141=$r6, var2473=junit.framework.Test, var2431=$r7}
; {junit.framework.TestSuite=var3683, r10=var2166, r0=var1285, junit.framework.TestCase=var2296, $r1=var1909, $z0=var371, $r2=var2889, $r3=var2312, $r4=var1381, $r5=var3633, $r6=var141, junit.framework.Test=var2473, $r7=var2431}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: junit.framework.TestSuite;	r0 := @parameter0: java.lang.Class;	$r1 = class "Ljunit/framework/TestCase;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r0);	if $z0 == 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r0.<java.lang.Class: java.lang.String getCanonicalName()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not extend TestCase");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = staticinvoke <junit.framework.TestSuite: junit.framework.Test warning(java.lang.String)>($r6);	return $r7
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1485 0)
(declare-sort var3974 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3974_fail/793813368 (String) void)
(declare-const null-String String)
(declare-const var1472 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1472 null-String)))
(define-const var2373 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2373)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2373!1 String)
(assert (= var2373!1 ""))
(assert true)
(define-const var445 String (append/672562846 var2373!1 "positive delta expected but was: <")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("positive delta expected but was: <") 
(declare-const var2373!2 String)
(assert (= var2373!2 (str.++ var2373!1 "positive delta expected but was: <")))
(assert true)
(define-const var3827 String (append/672562846 var445 var1472)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var445!1 String)
(assert (= var445!1 (str.++ var445 var1472)))
(assert true)
(define-const var1968 String (append/672562846 var3827 ">")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var3827!1 String)
(assert (= var3827!1 (str.++ var3827 ">")))
(assert true)
(define-const var3154 String (toString/-2075883882 var1968)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3974_fail/793813368 var3154)) ; Statement: staticinvoke <org.junit.jupiter.api.AssertionUtils: void fail(java.lang.String)>($r5) 

(declare-const var3154!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3974_fail/793813368=([java.lang.String], void)}
; {var1472=r1, var1485=null_type, var2373=$r0, var445=$r2, var3827=$r3, var1968=$r4, var3154=$r5, var3974=org.junit.jupiter.api.AssertionUtils}
; {r1=var1472, null_type=var1485, $r0=var2373, $r2=var445, $r3=var3827, $r4=var1968, $r5=var3154, org.junit.jupiter.api.AssertionUtils=var3974}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("positive delta expected but was: <");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.junit.jupiter.api.AssertionUtils: void fail(java.lang.String)>($r5);	return
;block_num 1
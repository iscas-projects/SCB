(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var46 0)
(declare-sort var1072 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1072_fail/-395154864 (String) void)
(declare-const null-String String)
(declare-const var2535 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2535 null-String)))
 ; Statement: if r0 == null goto $r8 = "" 
(assert (= var2535 null-String)) ; Cond: r0 == null 
(define-const var187 String "") ; Statement: $r8 = "" 
(assert true) ; Non Conditional
(define-const var1587 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1587)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1587!1 String)
(assert (= var1587!1 ""))
(assert true)
(define-const var2849 String (append/672562846 var1587!1 var187)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1587!2 String)
(assert (= var1587!2 (str.++ var1587!1 var187)))
(assert true)
(define-const var3560 String (append/672562846 var2849 "expected not same")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected not same") 
(declare-const var2849!1 String)
(assert (= var2849!1 (str.++ var2849 "expected not same")))
(assert true)
(define-const var2582 String (toString/-2075883882 var3560)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1072_fail/-395154864 var2582)) ; Statement: staticinvoke <junit.framework.Assert: void fail(java.lang.String)>($r4) 

(declare-const var2582!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1072_fail/-395154864=([java.lang.String], void)}
; {var2535=r0, var46=null_type, var187=$r8, var1587=$r1, var2849=$r2, var3560=$r3, var2582=$r4, var1072=junit.framework.Assert}
; {r0=var2535, null_type=var46, $r8=var187, $r1=var1587, $r2=var2849, $r3=var3560, $r4=var2582, junit.framework.Assert=var1072}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 == null goto $r8 = "";	$r8 = "";	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected not same");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <junit.framework.Assert: void fail(java.lang.String)>($r4);	return
;block_num 3
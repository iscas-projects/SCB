(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2313 0)
(declare-sort var2183 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2183_fail/1175601834 (String) void)
(declare-const null-String String)
(declare-const var911 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var911 null-String)))
(define-const var3592 String "") ; Statement: r8 = "" 
 ; Statement: if r0 == null goto $r1 = new java.lang.StringBuilder 
(assert (= var911 null-String)) ; Cond: r0 == null 
(define-const var2410 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2410)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2410!1 String)
(assert (= var2410!1 ""))
(assert true)
(define-const var681 String (append/672562846 var2410!1 var3592)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var2410!2 String)
(assert (= var2410!2 (str.++ var2410!1 var3592)))
(assert true)
(define-const var2864 String (append/672562846 var681 "expected not same")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected not same") 
(declare-const var681!1 String)
(assert (= var681!1 (str.++ var681 "expected not same")))
(assert true)
(define-const var3225 String (toString/-2075883882 var2864)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2183_fail/1175601834 var3225)) ; Statement: staticinvoke <org.junit.Assert: void fail(java.lang.String)>($r4) 

(declare-const var3225!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2183_fail/1175601834=([java.lang.String], void)}
; {var911=r0, var2313=null_type, var3592=r8, var2410=$r1, var681=$r2, var2864=$r3, var3225=$r4, var2183=org.junit.Assert}
; {r0=var911, null_type=var2313, r8=var3592, $r1=var2410, $r2=var681, $r3=var2864, $r4=var3225, org.junit.Assert=var2183}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r8 = "";	if r0 == null goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected not same");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.junit.Assert: void fail(java.lang.String)>($r4);	return
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var414 0)
(declare-sort var2962 0)
(declare-sort var2994 0)
(declare-sort var2394 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLine/-1719498253 (var414 var2962) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var2394-init () var2394)
(declare-fun <init>/-208190597 (var2394) void)
(declare-const null-var414 var414)
(declare-const null-var2962 var2962)
(declare-const null-var2994 var2994)
(declare-const null-Bool Bool)
(declare-const var414-$assertionsDisabled Bool)
(declare-const var3662 var414) ; Statement: r0 := @this: org.javacc.utils.OutputFileGenerator 
(assert (not (= var3662 null-var414)))
(declare-const var2579 var2962) ; Statement: r1 := @parameter0: java.io.BufferedReader 
(assert (not (= var2579 null-var2962)))
(declare-const var1642 var2994) ; Statement: r5 := @parameter1: java.io.PrintWriter 
(assert (not (= var1642 null-var2994)))
(declare-const var1632 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var1632 null-Bool)))
(assert true)
(define-const var83 String (getLine/-1719498253 var3662 var2579)) ; Statement: $r2 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String getLine(java.io.BufferedReader)>(r1) 
(assert true)
(define-const var1074 String (trim/-847153721 var83)) ; Statement: r25 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
(define-const var3082 Bool var414-$assertionsDisabled) ; Statement: $z0 = <org.javacc.utils.OutputFileGenerator: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto z7 = 0 
(assert (not (not (= (ite var3082 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var2021 String (trim/-847153721 var1074)) ; Statement: $r23 = virtualinvoke r25.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3437 Bool (startsWith/-1785782452 var2021 "#if")) ; Statement: $z6 = virtualinvoke $r23.<java.lang.String: boolean startsWith(java.lang.String)>("#if") 
 ; Statement: if $z6 != 0 goto z7 = 0 
(assert (not (not (= (ite var3437 1 0) 0)))) ; Negate: Cond: $z6 != 0  
(define-const var3038 var2394 var2394-init) ; Statement: $r24 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/-208190597 var3038)) ; Statement: specialinvoke $r24.<java.lang.AssertionError: void <init>()>() 

(declare-const var3038!1 var2394)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getLine/-1719498253=([org.javacc.utils.OutputFileGenerator, java.io.BufferedReader], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var2394-init=([], java.lang.AssertionError), <init>/-208190597=([java.lang.AssertionError], void)}
; {var414=org.javacc.utils.OutputFileGenerator, var3662=r0, var2962=java.io.BufferedReader, var2579=r1, var2994=java.io.PrintWriter, var1642=r5, var1632=z1, var83=$r2, var1074=r25, var3082=$z0, var2021=$r23, var3437=$z6, var2394=java.lang.AssertionError, var3038=$r24}
; {org.javacc.utils.OutputFileGenerator=var414, r0=var3662, java.io.BufferedReader=var2962, r1=var2579, java.io.PrintWriter=var2994, r5=var1642, z1=var1632, $r2=var83, r25=var1074, $z0=var3082, $r23=var2021, $z6=var3437, java.lang.AssertionError=var2394, $r24=var3038}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String trim()>": 2,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: org.javacc.utils.OutputFileGenerator;	r1 := @parameter0: java.io.BufferedReader;	r5 := @parameter1: java.io.PrintWriter;	z1 := @parameter2: boolean;	$r2 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String getLine(java.io.BufferedReader)>(r1);	r25 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	$z0 = <org.javacc.utils.OutputFileGenerator: boolean $assertionsDisabled>;	if $z0 != 0 goto z7 = 0;	$r23 = virtualinvoke r25.<java.lang.String: java.lang.String trim()>();	$z6 = virtualinvoke $r23.<java.lang.String: boolean startsWith(java.lang.String)>("#if");	if $z6 != 0 goto z7 = 0;	$r24 = new java.lang.AssertionError;	specialinvoke $r24.<java.lang.AssertionError: void <init>()>();	throw $r24
;block_num 3
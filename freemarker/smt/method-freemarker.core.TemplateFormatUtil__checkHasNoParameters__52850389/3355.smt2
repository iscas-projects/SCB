(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2669 0)
(declare-sort var965 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var965-init () var965)
(declare-fun <init>/849474116 (var965 String) void)
(declare-const null-String String)
(declare-const var2384 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2384 null-String)))
(assert true)
(define-const var3195 Int (length/-134980193 var2384)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 0 goto return 
(assert (not (= var3195 0))) ; Negate: Cond: $i0 == 0  
(define-const var2017 var965 var965-init) ; Statement: $r1 = new freemarker.core.InvalidFormatParametersException 
(assert true)
;(assert (<init>/849474116 var2017 "This number format doesn\u0027t support any parameters.")) ; Statement: specialinvoke $r1.<freemarker.core.InvalidFormatParametersException: void <init>(java.lang.String)>("This number format doesn\'t support any parameters.") 

(declare-const var2017!1 var965)
(declare-const var2902 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var965-init=([], freemarker.core.InvalidFormatParametersException), <init>/849474116=([freemarker.core.InvalidFormatParametersException, java.lang.String], void)}
; {var2384=r0, var2669=null_type, var3195=$i0, var965=freemarker.core.InvalidFormatParametersException, var2017=$r1, var2902="This number format doesn\'t support any parameters."}
; {r0=var2384, null_type=var2669, $i0=var3195, freemarker.core.InvalidFormatParametersException=var965, $r1=var2017, "This number format doesn\'t support any parameters."=var2902}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 0 goto return;	$r1 = new freemarker.core.InvalidFormatParametersException;	specialinvoke $r1.<freemarker.core.InvalidFormatParametersException: void <init>(java.lang.String)>("This number format doesn\'t support any parameters.");	throw $r1
;block_num 2
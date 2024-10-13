(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var773 0)
(declare-sort var3599 0)
(declare-sort var2190 0)
(declare-sort var2579 0)
(declare-sort var123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2579_check/-951860758 (String var123) void)
(declare-fun cast-from-String-to-var123 (String) var123)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-var3599 var3599)
(declare-const null-var2190 var2190)
(declare-const var664 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var664 null-String)))
(declare-const var2369 var3599) ; Statement: r4 := @parameter1: freemarker.template.utility.StringUtil$JsStringEncCompatibility 
(assert (not (= var2369 null-var3599)))
(declare-const var1365 var2190) ; Statement: r1 := @parameter2: freemarker.template.utility.StringUtil$JsStringEncQuotation 
(assert (not (= var1365 null-var2190)))
;(assert (var2579_check/-951860758 "s" (cast-from-String-to-var123 var664))) ; Statement: staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("s", r0) 

(declare-const var2109 String)
(declare-const var664!1 String)
(assert true)
(define-const var3193 Int (length/-134980193 var664!1)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if r1 != null goto $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE> 
(assert (not (not (= var1365 null-var2190)))) ; Negate: Cond: r1 != null  
(define-const var1314 String null-String) ; Statement: r13 = null 
 ; Statement: goto [?= i29 = 0] 
(assert true) ; Non Conditional
(define-const var3745 Int 0) ; Statement: i29 = 0 
(assert true) ; Non Conditional
 ; Statement: if i29 >= i0 goto (branch) 
(assert (>= var3745 var3193)) ; Cond: i29 >= i0 
 ; Statement: if r1 == null goto (branch) 
(assert (= var1365 null-var2190)) ; Cond: r1 == null 
 ; Statement: if r13 != null goto $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (not (= var1314 null-String)))) ; Negate: Cond: r13 != null  
(define-const var1412 String var664!1) ; Statement: $r14 = r0 
 ; Statement: goto [?= return $r14] 
(assert true) ; Non Conditional
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var2579_check/-951860758=([java.lang.String, java.lang.Object], void), cast-from-String-to-var123=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int)}
; {var664=r0, var773=null_type, var3599=freemarker.template.utility.StringUtil$JsStringEncCompatibility, var2369=r4, var2190=freemarker.template.utility.StringUtil$JsStringEncQuotation, var1365=r1, var2579=freemarker.template.utility.NullArgumentException, var123=java.lang.Object, var2109="s", var3193=i0, var1314=r13, var3745=i29, var1412=$r14}
; {r0=var664, null_type=var773, freemarker.template.utility.StringUtil$JsStringEncCompatibility=var3599, r4=var2369, freemarker.template.utility.StringUtil$JsStringEncQuotation=var2190, r1=var1365, freemarker.template.utility.NullArgumentException=var2579, java.lang.Object=var123, "s"=var2109, i0=var3193, r13=var1314, i29=var3745, $r14=var1412}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r4 := @parameter1: freemarker.template.utility.StringUtil$JsStringEncCompatibility;	r1 := @parameter2: freemarker.template.utility.StringUtil$JsStringEncQuotation;	staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("s", r0);	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if r1 != null goto $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE>;	r13 = null;	goto [?= i29 = 0];	i29 = 0;	if i29 >= i0 goto (branch);	if r1 == null goto (branch);	if r13 != null goto $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = r0;	goto [?= return $r14];	return $r14
;block_num 8
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2814 0)
(declare-sort var3862 0)
(declare-sort var2303 0)
(declare-sort var114 0)
(declare-sort var3375 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var114_check/-951860758 (String var3375) void)
(declare-fun cast-from-String-to-var3375 (String) var3375)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var3862 var3862)
(declare-const null-var2303 var2303)
(declare-const var1108 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1108 null-String)))
(declare-const var1949 var3862) ; Statement: r4 := @parameter1: freemarker.template.utility.StringUtil$JsStringEncCompatibility 
(assert (not (= var1949 null-var3862)))
(declare-const var3197 var2303) ; Statement: r1 := @parameter2: freemarker.template.utility.StringUtil$JsStringEncQuotation 
(assert (not (= var3197 null-var2303)))
;(assert (var114_check/-951860758 "s" (cast-from-String-to-var3375 var1108))) ; Statement: staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("s", r0) 

(declare-const var2795 String)
(declare-const var1108!1 String)
(assert true)
(define-const var1023 Int (length/-134980193 var1108!1)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if r1 != null goto $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE> 
(assert (not (not (= var3197 null-var2303)))) ; Negate: Cond: r1 != null  
(define-const var3457 String null-String) ; Statement: r13 = null 
 ; Statement: goto [?= i29 = 0] 
(assert true) ; Non Conditional
(define-const var230 Int 0) ; Statement: i29 = 0 
(assert true) ; Non Conditional
 ; Statement: if i29 >= i0 goto (branch) 
(assert (>= var230 var1023)) ; Cond: i29 >= i0 
 ; Statement: if r1 == null goto (branch) 
(assert (= var3197 null-var2303)) ; Cond: r1 == null 
 ; Statement: if r13 != null goto $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= var3457 null-String))) ; Cond: r13 != null 
(assert true)
(define-const var247 String (toString/-2075883882 var3457)) ; Statement: $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var114_check/-951860758=([java.lang.String, java.lang.Object], void), cast-from-String-to-var3375=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1108=r0, var2814=null_type, var3862=freemarker.template.utility.StringUtil$JsStringEncCompatibility, var1949=r4, var2303=freemarker.template.utility.StringUtil$JsStringEncQuotation, var3197=r1, var114=freemarker.template.utility.NullArgumentException, var3375=java.lang.Object, var2795="s", var1023=i0, var3457=r13, var230=i29, var247=$r14}
; {r0=var1108, null_type=var2814, freemarker.template.utility.StringUtil$JsStringEncCompatibility=var3862, r4=var1949, freemarker.template.utility.StringUtil$JsStringEncQuotation=var2303, r1=var3197, freemarker.template.utility.NullArgumentException=var114, java.lang.Object=var3375, "s"=var2795, i0=var1023, r13=var3457, i29=var230, $r14=var247}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r4 := @parameter1: freemarker.template.utility.StringUtil$JsStringEncCompatibility;	r1 := @parameter2: freemarker.template.utility.StringUtil$JsStringEncQuotation;	staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("s", r0);	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if r1 != null goto $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE>;	r13 = null;	goto [?= i29 = 0];	i29 = 0;	if i29 >= i0 goto (branch);	if r1 == null goto (branch);	if r13 != null goto $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 8
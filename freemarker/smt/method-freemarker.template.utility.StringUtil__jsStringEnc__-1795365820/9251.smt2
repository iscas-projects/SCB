(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1709 0)
(declare-sort var1941 0)
(declare-sort var2562 0)
(declare-sort var2114 0)
(declare-sort var430 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2114_check/-951860758 (String var430) void)
(declare-fun cast-from-String-to-var430 (String) var430)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getSymbol/213192128 (var2562) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-String String)
(declare-const null-var1941 var1941)
(declare-const null-var2562 var2562)
(declare-const var3114 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3114 null-String)))
(declare-const var91 var1941) ; Statement: r4 := @parameter1: freemarker.template.utility.StringUtil$JsStringEncCompatibility 
(assert (not (= var91 null-var1941)))
(declare-const var28 var2562) ; Statement: r1 := @parameter2: freemarker.template.utility.StringUtil$JsStringEncQuotation 
(assert (not (= var28 null-var2562)))
;(assert (var2114_check/-951860758 "s" (cast-from-String-to-var430 var3114))) ; Statement: staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("s", r0) 

(declare-const var229 String)
(declare-const var3114!1 String)
(assert true)
(define-const var3087 Int (length/-134980193 var3114!1)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if r1 != null goto $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE> 
(assert (not (not (= var28 null-var2562)))) ; Negate: Cond: r1 != null  
(define-const var148 String null-String) ; Statement: r13 = null 
 ; Statement: goto [?= i29 = 0] 
(assert true) ; Non Conditional
(define-const var3762 Int 0) ; Statement: i29 = 0 
(assert true) ; Non Conditional
 ; Statement: if i29 >= i0 goto (branch) 
(assert (>= var3762 var3087)) ; Cond: i29 >= i0 
 ; Statement: if r1 == null goto (branch) 
(assert (not (= var28 null-var2562))) ; Negate: Cond: r1 == null  
(assert true)
(define-const var3810 Int (getSymbol/213192128 var28)) ; Statement: $c3 = virtualinvoke r1.<freemarker.template.utility.StringUtil$JsStringEncQuotation: char getSymbol()>() 
(assert true)
;(assert (append/-1166366385 var148 var3810)) ; Statement: virtualinvoke r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3) 
(declare-const var148!1 String)
(assert (str.prefixof var148 var148!1))
(assert true) ; Non Conditional
 ; Statement: if r13 != null goto $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (not (= var148!1 null-String)))) ; Negate: Cond: r13 != null  
(define-const var826 String var3114!1) ; Statement: $r14 = r0 
 ; Statement: goto [?= return $r14] 
(assert true) ; Non Conditional
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var2114_check/-951860758=([java.lang.String, java.lang.Object], void), cast-from-String-to-var430=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), getSymbol/213192128=([freemarker.template.utility.StringUtil$JsStringEncQuotation], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var3114=r0, var1709=null_type, var1941=freemarker.template.utility.StringUtil$JsStringEncCompatibility, var91=r4, var2562=freemarker.template.utility.StringUtil$JsStringEncQuotation, var28=r1, var2114=freemarker.template.utility.NullArgumentException, var430=java.lang.Object, var229="s", var3087=i0, var148=r13, var3762=i29, var3810=$c3, var826=$r14}
; {r0=var3114, null_type=var1709, freemarker.template.utility.StringUtil$JsStringEncCompatibility=var1941, r4=var91, freemarker.template.utility.StringUtil$JsStringEncQuotation=var2562, r1=var28, freemarker.template.utility.NullArgumentException=var2114, java.lang.Object=var430, "s"=var229, i0=var3087, r13=var148, i29=var3762, $c3=var3810, $r14=var826}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r4 := @parameter1: freemarker.template.utility.StringUtil$JsStringEncCompatibility;	r1 := @parameter2: freemarker.template.utility.StringUtil$JsStringEncQuotation;	staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("s", r0);	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if r1 != null goto $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE>;	r13 = null;	goto [?= i29 = 0];	i29 = 0;	if i29 >= i0 goto (branch);	if r1 == null goto (branch);	$c3 = virtualinvoke r1.<freemarker.template.utility.StringUtil$JsStringEncQuotation: char getSymbol()>();	virtualinvoke r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3);	if r13 != null goto $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = r0;	goto [?= return $r14];	return $r14
;block_num 9
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var307 0)
(declare-sort var406 0)
(declare-sort var2302 0)
(declare-sort var3553 0)
(declare-sort var2943 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3553_check/-951860758 (String var2943) void)
(declare-fun cast-from-String-to-var2943 (String) var2943)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getSymbol/213192128 (var2302) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var406 var406)
(declare-const null-var2302 var2302)
(declare-const var58 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var58 null-String)))
(declare-const var2974 var406) ; Statement: r4 := @parameter1: freemarker.template.utility.StringUtil$JsStringEncCompatibility 
(assert (not (= var2974 null-var406)))
(declare-const var2566 var2302) ; Statement: r1 := @parameter2: freemarker.template.utility.StringUtil$JsStringEncQuotation 
(assert (not (= var2566 null-var2302)))
;(assert (var3553_check/-951860758 "s" (cast-from-String-to-var2943 var58))) ; Statement: staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("s", r0) 

(declare-const var483 String)
(declare-const var58!1 String)
(assert true)
(define-const var3696 Int (length/-134980193 var58!1)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if r1 != null goto $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE> 
(assert (not (not (= var2566 null-var2302)))) ; Negate: Cond: r1 != null  
(define-const var3793 String null-String) ; Statement: r13 = null 
 ; Statement: goto [?= i29 = 0] 
(assert true) ; Non Conditional
(define-const var3214 Int 0) ; Statement: i29 = 0 
(assert true) ; Non Conditional
 ; Statement: if i29 >= i0 goto (branch) 
(assert (>= var3214 var3696)) ; Cond: i29 >= i0 
 ; Statement: if r1 == null goto (branch) 
(assert (not (= var2566 null-var2302))) ; Negate: Cond: r1 == null  
(assert true)
(define-const var4 Int (getSymbol/213192128 var2566)) ; Statement: $c3 = virtualinvoke r1.<freemarker.template.utility.StringUtil$JsStringEncQuotation: char getSymbol()>() 
(assert true)
;(assert (append/-1166366385 var3793 var4)) ; Statement: virtualinvoke r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3) 
(declare-const var3793!1 String)
(assert (str.prefixof var3793 var3793!1))
(assert true) ; Non Conditional
 ; Statement: if r13 != null goto $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= var3793!1 null-String))) ; Cond: r13 != null 
(assert true)
(define-const var3418 String (toString/-2075883882 var3793!1)) ; Statement: $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var3553_check/-951860758=([java.lang.String, java.lang.Object], void), cast-from-String-to-var2943=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), getSymbol/213192128=([freemarker.template.utility.StringUtil$JsStringEncQuotation], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var58=r0, var307=null_type, var406=freemarker.template.utility.StringUtil$JsStringEncCompatibility, var2974=r4, var2302=freemarker.template.utility.StringUtil$JsStringEncQuotation, var2566=r1, var3553=freemarker.template.utility.NullArgumentException, var2943=java.lang.Object, var483="s", var3696=i0, var3793=r13, var3214=i29, var4=$c3, var3418=$r14}
; {r0=var58, null_type=var307, freemarker.template.utility.StringUtil$JsStringEncCompatibility=var406, r4=var2974, freemarker.template.utility.StringUtil$JsStringEncQuotation=var2302, r1=var2566, freemarker.template.utility.NullArgumentException=var3553, java.lang.Object=var2943, "s"=var483, i0=var3696, r13=var3793, i29=var3214, $c3=var4, $r14=var3418}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r4 := @parameter1: freemarker.template.utility.StringUtil$JsStringEncCompatibility;	r1 := @parameter2: freemarker.template.utility.StringUtil$JsStringEncQuotation;	staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("s", r0);	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if r1 != null goto $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE>;	r13 = null;	goto [?= i29 = 0];	i29 = 0;	if i29 >= i0 goto (branch);	if r1 == null goto (branch);	$c3 = virtualinvoke r1.<freemarker.template.utility.StringUtil$JsStringEncQuotation: char getSymbol()>();	virtualinvoke r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3);	if r13 != null goto $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 9
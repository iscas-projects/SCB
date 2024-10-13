(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2010 0)
(declare-sort var2054 0)
(declare-sort var3969 0)
(declare-sort var3736 0)
(declare-sort var1080 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3736_check/-951860758 (String var1080) void)
(declare-fun cast-from-String-to-var1080 (String) var1080)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun getSymbol/213192128 (var3969) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-String String)
(declare-const null-var2054 var2054)
(declare-const null-var3969 var3969)
(declare-const var3969-APOSTROPHE var3969)
(declare-const var3113 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3113 null-String)))
(declare-const var2355 var2054) ; Statement: r4 := @parameter1: freemarker.template.utility.StringUtil$JsStringEncCompatibility 
(assert (not (= var2355 null-var2054)))
(declare-const var843 var3969) ; Statement: r1 := @parameter2: freemarker.template.utility.StringUtil$JsStringEncQuotation 
(assert (not (= var843 null-var3969)))
;(assert (var3736_check/-951860758 "s" (cast-from-String-to-var1080 var3113))) ; Statement: staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("s", r0) 

(declare-const var1109 String)
(declare-const var3113!1 String)
(assert true)
(define-const var400 Int (length/-134980193 var3113!1)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if r1 != null goto $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE> 
(assert (not (= var843 null-var3969))) ; Cond: r1 != null 
(define-const var1746 var3969 var3969-APOSTROPHE) ; Statement: $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE> 
 ; Statement: if r1 != $r2 goto $r17 = new java.lang.StringBuilder 
(assert (not (= var843 var1746))) ; Cond: r1 != $r2 
(define-const var1606 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(define-const var1044 Int (+ var400 8)) ; Statement: $i1 = i0 + 8 
(assert true)
;(assert (<init>/543593434 var1606 var1044)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var1606!1 String)
(declare-const var1044!1 Int)
(define-const var309 String var1606!1) ; Statement: r13 = $r17 
(assert true)
(define-const var669 Int (getSymbol/213192128 var843)) ; Statement: $c2 = virtualinvoke r1.<freemarker.template.utility.StringUtil$JsStringEncQuotation: char getSymbol()>() 
(assert true)
;(assert (append/-1166366385 var1606!1 var669)) ; Statement: virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2) 
(declare-const var1606!2 String)
(assert (str.prefixof var1606!1 var1606!2))
(assert true) ; Non Conditional
(define-const var655 Int 0) ; Statement: i29 = 0 
(assert true) ; Non Conditional
 ; Statement: if i29 >= i0 goto (branch) 
(assert (>= var655 var400)) ; Cond: i29 >= i0 
 ; Statement: if r1 == null goto (branch) 
(assert (= var843 null-var3969)) ; Cond: r1 == null 
 ; Statement: if r13 != null goto $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (not (= var309 null-String)))) ; Negate: Cond: r13 != null  
(define-const var1754 String var3113!1) ; Statement: $r14 = r0 
 ; Statement: goto [?= return $r14] 
(assert true) ; Non Conditional
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var3736_check/-951860758=([java.lang.String, java.lang.Object], void), cast-from-String-to-var1080=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), getSymbol/213192128=([freemarker.template.utility.StringUtil$JsStringEncQuotation], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var3113=r0, var2010=null_type, var2054=freemarker.template.utility.StringUtil$JsStringEncCompatibility, var2355=r4, var3969=freemarker.template.utility.StringUtil$JsStringEncQuotation, var843=r1, var3736=freemarker.template.utility.NullArgumentException, var1080=java.lang.Object, var1109="s", var400=i0, var1746=$r2, var1606=$r17, var1044=$i1, var309=r13, var669=$c2, var655=i29, var1754=$r14}
; {r0=var3113, null_type=var2010, freemarker.template.utility.StringUtil$JsStringEncCompatibility=var2054, r4=var2355, freemarker.template.utility.StringUtil$JsStringEncQuotation=var3969, r1=var843, freemarker.template.utility.NullArgumentException=var3736, java.lang.Object=var1080, "s"=var1109, i0=var400, $r2=var1746, $r17=var1606, $i1=var1044, r13=var309, $c2=var669, i29=var655, $r14=var1754}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r4 := @parameter1: freemarker.template.utility.StringUtil$JsStringEncCompatibility;	r1 := @parameter2: freemarker.template.utility.StringUtil$JsStringEncQuotation;	staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("s", r0);	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if r1 != null goto $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE>;	$r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE>;	if r1 != $r2 goto $r17 = new java.lang.StringBuilder;	$r17 = new java.lang.StringBuilder;	$i1 = i0 + 8;	specialinvoke $r17.<java.lang.StringBuilder: void <init>(int)>($i1);	r13 = $r17;	$c2 = virtualinvoke r1.<freemarker.template.utility.StringUtil$JsStringEncQuotation: char getSymbol()>();	virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2);	i29 = 0;	if i29 >= i0 goto (branch);	if r1 == null goto (branch);	if r13 != null goto $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = r0;	goto [?= return $r14];	return $r14
;block_num 9
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var680 0)
(declare-sort var2303 0)
(declare-sort var813 0)
(declare-sort var1269 0)
(declare-sort var399 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1269_check/-951860758 (String var399) void)
(declare-fun cast-from-String-to-var399 (String) var399)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun getSymbol/213192128 (var813) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-String String)
(declare-const null-var2303 var2303)
(declare-const null-var813 var813)
(declare-const var813-APOSTROPHE var813)
(declare-const var2167 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2167 null-String)))
(declare-const var628 var2303) ; Statement: r4 := @parameter1: freemarker.template.utility.StringUtil$JsStringEncCompatibility 
(assert (not (= var628 null-var2303)))
(declare-const var2689 var813) ; Statement: r1 := @parameter2: freemarker.template.utility.StringUtil$JsStringEncQuotation 
(assert (not (= var2689 null-var813)))
;(assert (var1269_check/-951860758 "s" (cast-from-String-to-var399 var2167))) ; Statement: staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("s", r0) 

(declare-const var3070 String)
(declare-const var2167!1 String)
(assert true)
(define-const var3700 Int (length/-134980193 var2167!1)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if r1 != null goto $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE> 
(assert (not (= var2689 null-var813))) ; Cond: r1 != null 
(define-const var1391 var813 var813-APOSTROPHE) ; Statement: $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE> 
 ; Statement: if r1 != $r2 goto $r17 = new java.lang.StringBuilder 
(assert (not (= var2689 var1391))) ; Cond: r1 != $r2 
(define-const var3577 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(define-const var1117 Int (+ var3700 8)) ; Statement: $i1 = i0 + 8 
(assert true)
;(assert (<init>/543593434 var3577 var1117)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var3577!1 String)
(declare-const var1117!1 Int)
(define-const var1538 String var3577!1) ; Statement: r13 = $r17 
(assert true)
(define-const var1648 Int (getSymbol/213192128 var2689)) ; Statement: $c2 = virtualinvoke r1.<freemarker.template.utility.StringUtil$JsStringEncQuotation: char getSymbol()>() 
(assert true)
;(assert (append/-1166366385 var3577!1 var1648)) ; Statement: virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2) 
(declare-const var3577!2 String)
(assert (str.prefixof var3577!1 var3577!2))
(assert true) ; Non Conditional
(define-const var2222 Int 0) ; Statement: i29 = 0 
(assert true) ; Non Conditional
 ; Statement: if i29 >= i0 goto (branch) 
(assert (>= var2222 var3700)) ; Cond: i29 >= i0 
 ; Statement: if r1 == null goto (branch) 
(assert (not (= var2689 null-var813))) ; Negate: Cond: r1 == null  
(assert true)
(define-const var248 Int (getSymbol/213192128 var2689)) ; Statement: $c3 = virtualinvoke r1.<freemarker.template.utility.StringUtil$JsStringEncQuotation: char getSymbol()>() 
(assert true)
;(assert (append/-1166366385 var1538 var248)) ; Statement: virtualinvoke r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3) 
(declare-const var1538!1 String)
(assert (str.prefixof var1538 var1538!1))
(assert true) ; Non Conditional
 ; Statement: if r13 != null goto $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (not (= var1538!1 null-String)))) ; Negate: Cond: r13 != null  
(define-const var708 String var2167!1) ; Statement: $r14 = r0 
 ; Statement: goto [?= return $r14] 
(assert true) ; Non Conditional
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var1269_check/-951860758=([java.lang.String, java.lang.Object], void), cast-from-String-to-var399=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), getSymbol/213192128=([freemarker.template.utility.StringUtil$JsStringEncQuotation], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var2167=r0, var680=null_type, var2303=freemarker.template.utility.StringUtil$JsStringEncCompatibility, var628=r4, var813=freemarker.template.utility.StringUtil$JsStringEncQuotation, var2689=r1, var1269=freemarker.template.utility.NullArgumentException, var399=java.lang.Object, var3070="s", var3700=i0, var1391=$r2, var3577=$r17, var1117=$i1, var1538=r13, var1648=$c2, var2222=i29, var248=$c3, var708=$r14}
; {r0=var2167, null_type=var680, freemarker.template.utility.StringUtil$JsStringEncCompatibility=var2303, r4=var628, freemarker.template.utility.StringUtil$JsStringEncQuotation=var813, r1=var2689, freemarker.template.utility.NullArgumentException=var1269, java.lang.Object=var399, "s"=var3070, i0=var3700, $r2=var1391, $r17=var3577, $i1=var1117, r13=var1538, $c2=var1648, i29=var2222, $c3=var248, $r14=var708}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r0 := @parameter0: java.lang.String;	r4 := @parameter1: freemarker.template.utility.StringUtil$JsStringEncCompatibility;	r1 := @parameter2: freemarker.template.utility.StringUtil$JsStringEncQuotation;	staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("s", r0);	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if r1 != null goto $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE>;	$r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE>;	if r1 != $r2 goto $r17 = new java.lang.StringBuilder;	$r17 = new java.lang.StringBuilder;	$i1 = i0 + 8;	specialinvoke $r17.<java.lang.StringBuilder: void <init>(int)>($i1);	r13 = $r17;	$c2 = virtualinvoke r1.<freemarker.template.utility.StringUtil$JsStringEncQuotation: char getSymbol()>();	virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2);	i29 = 0;	if i29 >= i0 goto (branch);	if r1 == null goto (branch);	$c3 = virtualinvoke r1.<freemarker.template.utility.StringUtil$JsStringEncQuotation: char getSymbol()>();	virtualinvoke r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3);	if r13 != null goto $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = r0;	goto [?= return $r14];	return $r14
;block_num 10
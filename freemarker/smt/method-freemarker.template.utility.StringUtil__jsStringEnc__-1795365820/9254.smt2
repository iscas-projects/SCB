(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1798 0)
(declare-sort var1766 0)
(declare-sort var1831 0)
(declare-sort var1146 0)
(declare-sort var559 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1146_check/-951860758 (String var559) void)
(declare-fun cast-from-String-to-var559 (String) var559)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun getSymbol/213192128 (var1831) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var1766 var1766)
(declare-const null-var1831 var1831)
(declare-const var1831-APOSTROPHE var1831)
(declare-const var2457 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2457 null-String)))
(declare-const var119 var1766) ; Statement: r4 := @parameter1: freemarker.template.utility.StringUtil$JsStringEncCompatibility 
(assert (not (= var119 null-var1766)))
(declare-const var315 var1831) ; Statement: r1 := @parameter2: freemarker.template.utility.StringUtil$JsStringEncQuotation 
(assert (not (= var315 null-var1831)))
;(assert (var1146_check/-951860758 "s" (cast-from-String-to-var559 var2457))) ; Statement: staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("s", r0) 

(declare-const var1256 String)
(declare-const var2457!1 String)
(assert true)
(define-const var3727 Int (length/-134980193 var2457!1)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if r1 != null goto $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE> 
(assert (not (= var315 null-var1831))) ; Cond: r1 != null 
(define-const var148 var1831 var1831-APOSTROPHE) ; Statement: $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE> 
 ; Statement: if r1 != $r2 goto $r17 = new java.lang.StringBuilder 
(assert (not (= var315 var148))) ; Cond: r1 != $r2 
(define-const var3473 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(define-const var2945 Int (+ var3727 8)) ; Statement: $i1 = i0 + 8 
(assert true)
;(assert (<init>/543593434 var3473 var2945)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var3473!1 String)
(declare-const var2945!1 Int)
(define-const var2678 String var3473!1) ; Statement: r13 = $r17 
(assert true)
(define-const var1345 Int (getSymbol/213192128 var315)) ; Statement: $c2 = virtualinvoke r1.<freemarker.template.utility.StringUtil$JsStringEncQuotation: char getSymbol()>() 
(assert true)
;(assert (append/-1166366385 var3473!1 var1345)) ; Statement: virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2) 
(declare-const var3473!2 String)
(assert (str.prefixof var3473!1 var3473!2))
(assert true) ; Non Conditional
(define-const var363 Int 0) ; Statement: i29 = 0 
(assert true) ; Non Conditional
 ; Statement: if i29 >= i0 goto (branch) 
(assert (>= var363 var3727)) ; Cond: i29 >= i0 
 ; Statement: if r1 == null goto (branch) 
(assert (= var315 null-var1831)) ; Cond: r1 == null 
 ; Statement: if r13 != null goto $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= var2678 null-String))) ; Cond: r13 != null 
(assert true)
(define-const var2428 String (toString/-2075883882 var2678)) ; Statement: $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var1146_check/-951860758=([java.lang.String, java.lang.Object], void), cast-from-String-to-var559=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), getSymbol/213192128=([freemarker.template.utility.StringUtil$JsStringEncQuotation], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2457=r0, var1798=null_type, var1766=freemarker.template.utility.StringUtil$JsStringEncCompatibility, var119=r4, var1831=freemarker.template.utility.StringUtil$JsStringEncQuotation, var315=r1, var1146=freemarker.template.utility.NullArgumentException, var559=java.lang.Object, var1256="s", var3727=i0, var148=$r2, var3473=$r17, var2945=$i1, var2678=r13, var1345=$c2, var363=i29, var2428=$r14}
; {r0=var2457, null_type=var1798, freemarker.template.utility.StringUtil$JsStringEncCompatibility=var1766, r4=var119, freemarker.template.utility.StringUtil$JsStringEncQuotation=var1831, r1=var315, freemarker.template.utility.NullArgumentException=var1146, java.lang.Object=var559, "s"=var1256, i0=var3727, $r2=var148, $r17=var3473, $i1=var2945, r13=var2678, $c2=var1345, i29=var363, $r14=var2428}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r4 := @parameter1: freemarker.template.utility.StringUtil$JsStringEncCompatibility;	r1 := @parameter2: freemarker.template.utility.StringUtil$JsStringEncQuotation;	staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("s", r0);	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if r1 != null goto $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE>;	$r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE>;	if r1 != $r2 goto $r17 = new java.lang.StringBuilder;	$r17 = new java.lang.StringBuilder;	$i1 = i0 + 8;	specialinvoke $r17.<java.lang.StringBuilder: void <init>(int)>($i1);	r13 = $r17;	$c2 = virtualinvoke r1.<freemarker.template.utility.StringUtil$JsStringEncQuotation: char getSymbol()>();	virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2);	i29 = 0;	if i29 >= i0 goto (branch);	if r1 == null goto (branch);	if r13 != null goto $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 9
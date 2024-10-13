(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1554 0)
(declare-sort var423 0)
(declare-sort var2052 0)
(declare-sort var1533 0)
(declare-sort var2146 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1533_check/-951860758 (String var2146) void)
(declare-fun cast-from-String-to-var2146 (String) var2146)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var423_access$000/-254855739 (var423) Bool)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun getSymbol/213192128 (var2052) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var423 var423)
(declare-const null-var2052 var2052)
(declare-const var2052-APOSTROPHE var2052)
(declare-const var3418 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3418 null-String)))
(declare-const var365 var423) ; Statement: r4 := @parameter1: freemarker.template.utility.StringUtil$JsStringEncCompatibility 
(assert (not (= var365 null-var423)))
(declare-const var1920 var2052) ; Statement: r1 := @parameter2: freemarker.template.utility.StringUtil$JsStringEncQuotation 
(assert (not (= var1920 null-var2052)))
;(assert (var1533_check/-951860758 "s" (cast-from-String-to-var2146 var3418))) ; Statement: staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("s", r0) 

(declare-const var3099 String)
(declare-const var3418!1 String)
(assert true)
(define-const var3376 Int (length/-134980193 var3418!1)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if r1 != null goto $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE> 
(assert (not (= var1920 null-var2052))) ; Cond: r1 != null 
(define-const var2067 var2052 var2052-APOSTROPHE) ; Statement: $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE> 
 ; Statement: if r1 != $r2 goto $r17 = new java.lang.StringBuilder 
(assert (not (not (= var1920 var2067)))) ; Negate: Cond: r1 != $r2  
(define-const var1946 Bool (var423_access$000/-254855739 var365)) ; Statement: $z4 = staticinvoke <freemarker.template.utility.StringUtil$JsStringEncCompatibility: boolean access$000(freemarker.template.utility.StringUtil$JsStringEncCompatibility)>(r4) 
 ; Statement: if $z4 == 0 goto $r17 = new java.lang.StringBuilder 
(assert (= (ite var1946 1 0) 0)) ; Cond: $z4 == 0 
(define-const var1419 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(define-const var3751 Int (+ var3376 8)) ; Statement: $i1 = i0 + 8 
(assert true)
;(assert (<init>/543593434 var1419 var3751)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var1419!1 String)
(declare-const var3751!1 Int)
(define-const var2349 String var1419!1) ; Statement: r13 = $r17 
(assert true)
(define-const var1300 Int (getSymbol/213192128 var1920)) ; Statement: $c2 = virtualinvoke r1.<freemarker.template.utility.StringUtil$JsStringEncQuotation: char getSymbol()>() 
(assert true)
;(assert (append/-1166366385 var1419!1 var1300)) ; Statement: virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2) 
(declare-const var1419!2 String)
(assert (str.prefixof var1419!1 var1419!2))
(assert true) ; Non Conditional
(define-const var3736 Int 0) ; Statement: i29 = 0 
(assert true) ; Non Conditional
 ; Statement: if i29 >= i0 goto (branch) 
(assert (>= var3736 var3376)) ; Cond: i29 >= i0 
 ; Statement: if r1 == null goto (branch) 
(assert (= var1920 null-var2052)) ; Cond: r1 == null 
 ; Statement: if r13 != null goto $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= var2349 null-String))) ; Cond: r13 != null 
(assert true)
(define-const var1914 String (toString/-2075883882 var2349)) ; Statement: $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var1533_check/-951860758=([java.lang.String, java.lang.Object], void), cast-from-String-to-var2146=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), var423_access$000/-254855739=([freemarker.template.utility.StringUtil$JsStringEncCompatibility], boolean), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), getSymbol/213192128=([freemarker.template.utility.StringUtil$JsStringEncQuotation], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3418=r0, var1554=null_type, var423=freemarker.template.utility.StringUtil$JsStringEncCompatibility, var365=r4, var2052=freemarker.template.utility.StringUtil$JsStringEncQuotation, var1920=r1, var1533=freemarker.template.utility.NullArgumentException, var2146=java.lang.Object, var3099="s", var3376=i0, var2067=$r2, var1946=$z4, var1419=$r17, var3751=$i1, var2349=r13, var1300=$c2, var3736=i29, var1914=$r14}
; {r0=var3418, null_type=var1554, freemarker.template.utility.StringUtil$JsStringEncCompatibility=var423, r4=var365, freemarker.template.utility.StringUtil$JsStringEncQuotation=var2052, r1=var1920, freemarker.template.utility.NullArgumentException=var1533, java.lang.Object=var2146, "s"=var3099, i0=var3376, $r2=var2067, $z4=var1946, $r17=var1419, $i1=var3751, r13=var2349, $c2=var1300, i29=var3736, $r14=var1914}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r4 := @parameter1: freemarker.template.utility.StringUtil$JsStringEncCompatibility;	r1 := @parameter2: freemarker.template.utility.StringUtil$JsStringEncQuotation;	staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("s", r0);	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if r1 != null goto $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE>;	$r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE>;	if r1 != $r2 goto $r17 = new java.lang.StringBuilder;	$z4 = staticinvoke <freemarker.template.utility.StringUtil$JsStringEncCompatibility: boolean access$000(freemarker.template.utility.StringUtil$JsStringEncCompatibility)>(r4);	if $z4 == 0 goto $r17 = new java.lang.StringBuilder;	$r17 = new java.lang.StringBuilder;	$i1 = i0 + 8;	specialinvoke $r17.<java.lang.StringBuilder: void <init>(int)>($i1);	r13 = $r17;	$c2 = virtualinvoke r1.<freemarker.template.utility.StringUtil$JsStringEncQuotation: char getSymbol()>();	virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2);	i29 = 0;	if i29 >= i0 goto (branch);	if r1 == null goto (branch);	if r13 != null goto $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 10
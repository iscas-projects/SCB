(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1688 0)
(declare-sort var3370 0)
(declare-sort var992 0)
(declare-sort var1447 0)
(declare-sort var2065 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1447_check/-951860758 (String var2065) void)
(declare-fun cast-from-String-to-var2065 (String) var2065)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun getSymbol/213192128 (var992) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var3370 var3370)
(declare-const null-var992 var992)
(declare-const var992-APOSTROPHE var992)
(declare-const var288 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var288 null-String)))
(declare-const var575 var3370) ; Statement: r4 := @parameter1: freemarker.template.utility.StringUtil$JsStringEncCompatibility 
(assert (not (= var575 null-var3370)))
(declare-const var2396 var992) ; Statement: r1 := @parameter2: freemarker.template.utility.StringUtil$JsStringEncQuotation 
(assert (not (= var2396 null-var992)))
;(assert (var1447_check/-951860758 "s" (cast-from-String-to-var2065 var288))) ; Statement: staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("s", r0) 

(declare-const var70 String)
(declare-const var288!1 String)
(assert true)
(define-const var921 Int (length/-134980193 var288!1)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if r1 != null goto $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE> 
(assert (not (= var2396 null-var992))) ; Cond: r1 != null 
(define-const var2360 var992 var992-APOSTROPHE) ; Statement: $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE> 
 ; Statement: if r1 != $r2 goto $r17 = new java.lang.StringBuilder 
(assert (not (= var2396 var2360))) ; Cond: r1 != $r2 
(define-const var633 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(define-const var7 Int (+ var921 8)) ; Statement: $i1 = i0 + 8 
(assert true)
;(assert (<init>/543593434 var633 var7)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var633!1 String)
(declare-const var7!1 Int)
(define-const var2333 String var633!1) ; Statement: r13 = $r17 
(assert true)
(define-const var1099 Int (getSymbol/213192128 var2396)) ; Statement: $c2 = virtualinvoke r1.<freemarker.template.utility.StringUtil$JsStringEncQuotation: char getSymbol()>() 
(assert true)
;(assert (append/-1166366385 var633!1 var1099)) ; Statement: virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2) 
(declare-const var633!2 String)
(assert (str.prefixof var633!1 var633!2))
(assert true) ; Non Conditional
(define-const var3607 Int 0) ; Statement: i29 = 0 
(assert true) ; Non Conditional
 ; Statement: if i29 >= i0 goto (branch) 
(assert (>= var3607 var921)) ; Cond: i29 >= i0 
 ; Statement: if r1 == null goto (branch) 
(assert (not (= var2396 null-var992))) ; Negate: Cond: r1 == null  
(assert true)
(define-const var3159 Int (getSymbol/213192128 var2396)) ; Statement: $c3 = virtualinvoke r1.<freemarker.template.utility.StringUtil$JsStringEncQuotation: char getSymbol()>() 
(assert true)
;(assert (append/-1166366385 var2333 var3159)) ; Statement: virtualinvoke r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3) 
(declare-const var2333!1 String)
(assert (str.prefixof var2333 var2333!1))
(assert true) ; Non Conditional
 ; Statement: if r13 != null goto $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= var2333!1 null-String))) ; Cond: r13 != null 
(assert true)
(define-const var2601 String (toString/-2075883882 var2333!1)) ; Statement: $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var1447_check/-951860758=([java.lang.String, java.lang.Object], void), cast-from-String-to-var2065=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), getSymbol/213192128=([freemarker.template.utility.StringUtil$JsStringEncQuotation], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var288=r0, var1688=null_type, var3370=freemarker.template.utility.StringUtil$JsStringEncCompatibility, var575=r4, var992=freemarker.template.utility.StringUtil$JsStringEncQuotation, var2396=r1, var1447=freemarker.template.utility.NullArgumentException, var2065=java.lang.Object, var70="s", var921=i0, var2360=$r2, var633=$r17, var7=$i1, var2333=r13, var1099=$c2, var3607=i29, var3159=$c3, var2601=$r14}
; {r0=var288, null_type=var1688, freemarker.template.utility.StringUtil$JsStringEncCompatibility=var3370, r4=var575, freemarker.template.utility.StringUtil$JsStringEncQuotation=var992, r1=var2396, freemarker.template.utility.NullArgumentException=var1447, java.lang.Object=var2065, "s"=var70, i0=var921, $r2=var2360, $r17=var633, $i1=var7, r13=var2333, $c2=var1099, i29=var3607, $c3=var3159, $r14=var2601}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r4 := @parameter1: freemarker.template.utility.StringUtil$JsStringEncCompatibility;	r1 := @parameter2: freemarker.template.utility.StringUtil$JsStringEncQuotation;	staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("s", r0);	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if r1 != null goto $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE>;	$r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE>;	if r1 != $r2 goto $r17 = new java.lang.StringBuilder;	$r17 = new java.lang.StringBuilder;	$i1 = i0 + 8;	specialinvoke $r17.<java.lang.StringBuilder: void <init>(int)>($i1);	r13 = $r17;	$c2 = virtualinvoke r1.<freemarker.template.utility.StringUtil$JsStringEncQuotation: char getSymbol()>();	virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2);	i29 = 0;	if i29 >= i0 goto (branch);	if r1 == null goto (branch);	$c3 = virtualinvoke r1.<freemarker.template.utility.StringUtil$JsStringEncQuotation: char getSymbol()>();	virtualinvoke r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3);	if r13 != null goto $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 10
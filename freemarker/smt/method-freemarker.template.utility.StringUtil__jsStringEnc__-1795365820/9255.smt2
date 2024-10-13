(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3404 0)
(declare-sort var1881 0)
(declare-sort var534 0)
(declare-sort var3539 0)
(declare-sort var3536 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3539_check/-951860758 (String var3536) void)
(declare-fun cast-from-String-to-var3536 (String) var3536)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1881_access$000/-254855739 (var1881) Bool)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun getSymbol/213192128 (var534) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-String String)
(declare-const null-var1881 var1881)
(declare-const null-var534 var534)
(declare-const var534-APOSTROPHE var534)
(declare-const var522 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var522 null-String)))
(declare-const var3227 var1881) ; Statement: r4 := @parameter1: freemarker.template.utility.StringUtil$JsStringEncCompatibility 
(assert (not (= var3227 null-var1881)))
(declare-const var2312 var534) ; Statement: r1 := @parameter2: freemarker.template.utility.StringUtil$JsStringEncQuotation 
(assert (not (= var2312 null-var534)))
;(assert (var3539_check/-951860758 "s" (cast-from-String-to-var3536 var522))) ; Statement: staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("s", r0) 

(declare-const var3170 String)
(declare-const var522!1 String)
(assert true)
(define-const var963 Int (length/-134980193 var522!1)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if r1 != null goto $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE> 
(assert (not (= var2312 null-var534))) ; Cond: r1 != null 
(define-const var3461 var534 var534-APOSTROPHE) ; Statement: $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE> 
 ; Statement: if r1 != $r2 goto $r17 = new java.lang.StringBuilder 
(assert (not (not (= var2312 var3461)))) ; Negate: Cond: r1 != $r2  
(define-const var3214 Bool (var1881_access$000/-254855739 var3227)) ; Statement: $z4 = staticinvoke <freemarker.template.utility.StringUtil$JsStringEncCompatibility: boolean access$000(freemarker.template.utility.StringUtil$JsStringEncCompatibility)>(r4) 
 ; Statement: if $z4 == 0 goto $r17 = new java.lang.StringBuilder 
(assert (= (ite var3214 1 0) 0)) ; Cond: $z4 == 0 
(define-const var484 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(define-const var1729 Int (+ var963 8)) ; Statement: $i1 = i0 + 8 
(assert true)
;(assert (<init>/543593434 var484 var1729)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var484!1 String)
(declare-const var1729!1 Int)
(define-const var3314 String var484!1) ; Statement: r13 = $r17 
(assert true)
(define-const var551 Int (getSymbol/213192128 var2312)) ; Statement: $c2 = virtualinvoke r1.<freemarker.template.utility.StringUtil$JsStringEncQuotation: char getSymbol()>() 
(assert true)
;(assert (append/-1166366385 var484!1 var551)) ; Statement: virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2) 
(declare-const var484!2 String)
(assert (str.prefixof var484!1 var484!2))
(assert true) ; Non Conditional
(define-const var2648 Int 0) ; Statement: i29 = 0 
(assert true) ; Non Conditional
 ; Statement: if i29 >= i0 goto (branch) 
(assert (>= var2648 var963)) ; Cond: i29 >= i0 
 ; Statement: if r1 == null goto (branch) 
(assert (= var2312 null-var534)) ; Cond: r1 == null 
 ; Statement: if r13 != null goto $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (not (= var3314 null-String)))) ; Negate: Cond: r13 != null  
(define-const var3354 String var522!1) ; Statement: $r14 = r0 
 ; Statement: goto [?= return $r14] 
(assert true) ; Non Conditional
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var3539_check/-951860758=([java.lang.String, java.lang.Object], void), cast-from-String-to-var3536=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), var1881_access$000/-254855739=([freemarker.template.utility.StringUtil$JsStringEncCompatibility], boolean), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), getSymbol/213192128=([freemarker.template.utility.StringUtil$JsStringEncQuotation], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var522=r0, var3404=null_type, var1881=freemarker.template.utility.StringUtil$JsStringEncCompatibility, var3227=r4, var534=freemarker.template.utility.StringUtil$JsStringEncQuotation, var2312=r1, var3539=freemarker.template.utility.NullArgumentException, var3536=java.lang.Object, var3170="s", var963=i0, var3461=$r2, var3214=$z4, var484=$r17, var1729=$i1, var3314=r13, var551=$c2, var2648=i29, var3354=$r14}
; {r0=var522, null_type=var3404, freemarker.template.utility.StringUtil$JsStringEncCompatibility=var1881, r4=var3227, freemarker.template.utility.StringUtil$JsStringEncQuotation=var534, r1=var2312, freemarker.template.utility.NullArgumentException=var3539, java.lang.Object=var3536, "s"=var3170, i0=var963, $r2=var3461, $z4=var3214, $r17=var484, $i1=var1729, r13=var3314, $c2=var551, i29=var2648, $r14=var3354}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r4 := @parameter1: freemarker.template.utility.StringUtil$JsStringEncCompatibility;	r1 := @parameter2: freemarker.template.utility.StringUtil$JsStringEncQuotation;	staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("s", r0);	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if r1 != null goto $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE>;	$r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE>;	if r1 != $r2 goto $r17 = new java.lang.StringBuilder;	$z4 = staticinvoke <freemarker.template.utility.StringUtil$JsStringEncCompatibility: boolean access$000(freemarker.template.utility.StringUtil$JsStringEncCompatibility)>(r4);	if $z4 == 0 goto $r17 = new java.lang.StringBuilder;	$r17 = new java.lang.StringBuilder;	$i1 = i0 + 8;	specialinvoke $r17.<java.lang.StringBuilder: void <init>(int)>($i1);	r13 = $r17;	$c2 = virtualinvoke r1.<freemarker.template.utility.StringUtil$JsStringEncQuotation: char getSymbol()>();	virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2);	i29 = 0;	if i29 >= i0 goto (branch);	if r1 == null goto (branch);	if r13 != null goto $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = r0;	goto [?= return $r14];	return $r14
;block_num 10
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1969 0)
(declare-sort var24 0)
(declare-sort var2746 0)
(declare-sort var1116 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jj_consume_token/-1662239344 (var1969 Int) var24)
(declare-fun breakableDirectiveNesting/-1475596563 (var1969) Int)
(declare-fun var2746-init () var2746)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun image/-1758362606 (var24) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun forEachDirectiveSymbol/57670292 (var1969) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun template/-1475596563 (var1969) var1116)
(declare-fun <init>/-549569735 (var2746 String var1116 var24) void)
(declare-const null-var1969 var1969)
(declare-const var331 var1969) ; Statement: r0 := @this: freemarker.core.FMParser 
(assert (not (= var331 null-var1969)))
(assert true)
(define-const var3456 var24 (jj_consume_token/-1662239344 var331 55)) ; Statement: r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(55) 
(define-const var1808 Int (breakableDirectiveNesting/-1475596563 var331)) ; Statement: $i0 = r0.<freemarker.core.FMParser: int breakableDirectiveNesting> 
 ; Statement: if $i0 >= 1 goto $r2 = new freemarker.core.BreakInstruction 
(assert (not (>= var1808 1))) ; Negate: Cond: $i0 >= 1  
(define-const var2574 var2746 var2746-init) ; Statement: $r5 = new freemarker.core.ParseException 
(define-const var2461 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2461)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2461!1 String)
(assert (= var2461!1 ""))
(define-const var2941 String (image/-1758362606 var3456)) ; Statement: $r7 = r1.<freemarker.core.Token: java.lang.String image> 
(assert true)
(define-const var1271 String (append/672562846 var2461!1 var2941)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2461!2 String)
(assert (= var2461!2 (str.++ var2461!1 var2941)))
(assert true)
(define-const var413 String (append/672562846 var1271 " must be nested inside a directive that supports it:  #list with \u0022as\u0022, #items, #switch (or the deprecated ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must be nested inside a directive that supports it:  #list with \"as\", #items, #switch (or the deprecated ") 
(declare-const var1271!1 String)
(assert (= var1271!1 (str.++ var1271 " must be nested inside a directive that supports it:  #list with \u0022as\u0022, #items, #switch (or the deprecated ")))
(assert true)
(define-const var2006 String (forEachDirectiveSymbol/57670292 var331)) ; Statement: $r9 = specialinvoke r0.<freemarker.core.FMParser: java.lang.String forEachDirectiveSymbol()>() 
(assert true)
(define-const var632 String (append/672562846 var413 var2006)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var413!1 String)
(assert (= var413!1 (str.++ var413 var2006)))
(assert true)
(define-const var2933 String (append/672562846 var632 ")")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var632!1 String)
(assert (= var632!1 (str.++ var632 ")")))
(assert true)
(define-const var2249 String (toString/-2075883882 var2933)) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3845 var1116 (template/-1475596563 var331)) ; Statement: $r13 = r0.<freemarker.core.FMParser: freemarker.template.Template template> 
(assert true)
;(assert (<init>/-549569735 var2574 var2249 var3845 var3456)) ; Statement: specialinvoke $r5.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.template.Template,freemarker.core.Token)>($r14, $r13, r1) 

(declare-const var2574!1 var2746)
(declare-const var2249!1 String)
(declare-const var3845!1 var1116)
(declare-const var3456!1 var24)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {jj_consume_token/-1662239344=([freemarker.core.FMParser, int], freemarker.core.Token), breakableDirectiveNesting/-1475596563=([freemarker.core.FMParser], int), var2746-init=([], freemarker.core.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), image/-1758362606=([freemarker.core.Token], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), forEachDirectiveSymbol/57670292=([freemarker.core.FMParser], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), template/-1475596563=([freemarker.core.FMParser], freemarker.template.Template), <init>/-549569735=([freemarker.core.ParseException, java.lang.String, freemarker.template.Template, freemarker.core.Token], void)}
; {var1969=freemarker.core.FMParser, var331=r0, var24=freemarker.core.Token, var3456=r1, var1808=$i0, var2746=freemarker.core.ParseException, var2574=$r5, var2461=$r6, var2941=$r7, var1271=$r8, var413=$r10, var2006=$r9, var632=$r11, var2933=$r12, var2249=$r14, var1116=freemarker.template.Template, var3845=$r13}
; {freemarker.core.FMParser=var1969, r0=var331, freemarker.core.Token=var24, r1=var3456, $i0=var1808, freemarker.core.ParseException=var2746, $r5=var2574, $r6=var2461, $r7=var2941, $r8=var1271, $r10=var413, $r9=var2006, $r11=var632, $r12=var2933, $r14=var2249, freemarker.template.Template=var1116, $r13=var3845}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.FMParser;	r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(55);	$i0 = r0.<freemarker.core.FMParser: int breakableDirectiveNesting>;	if $i0 >= 1 goto $r2 = new freemarker.core.BreakInstruction;	$r5 = new freemarker.core.ParseException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = r1.<freemarker.core.Token: java.lang.String image>;	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must be nested inside a directive that supports it:  #list with \"as\", #items, #switch (or the deprecated ");	$r9 = specialinvoke r0.<freemarker.core.FMParser: java.lang.String forEachDirectiveSymbol()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = r0.<freemarker.core.FMParser: freemarker.template.Template template>;	specialinvoke $r5.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.template.Template,freemarker.core.Token)>($r14, $r13, r1);	throw $r5
;block_num 2
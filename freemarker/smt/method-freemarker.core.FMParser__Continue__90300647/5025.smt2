(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var210 0)
(declare-sort var3881 0)
(declare-sort var1381 0)
(declare-sort var2046 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jj_consume_token/-1662239344 (var210 Int) var3881)
(declare-fun continuableDirectiveNesting/-1475596563 (var210) Int)
(declare-fun var1381-init () var1381)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun image/-1758362606 (var3881) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun forEachDirectiveSymbol/57670292 (var210) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun template/-1475596563 (var210) var2046)
(declare-fun <init>/-549569735 (var1381 String var2046 var3881) void)
(declare-const null-var210 var210)
(declare-const var3726 var210) ; Statement: r0 := @this: freemarker.core.FMParser 
(assert (not (= var3726 null-var210)))
(assert true)
(define-const var1101 var3881 (jj_consume_token/-1662239344 var3726 56)) ; Statement: r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(56) 
(define-const var1656 Int (continuableDirectiveNesting/-1475596563 var3726)) ; Statement: $i0 = r0.<freemarker.core.FMParser: int continuableDirectiveNesting> 
 ; Statement: if $i0 >= 1 goto $r2 = new freemarker.core.ContinueInstruction 
(assert (not (>= var1656 1))) ; Negate: Cond: $i0 >= 1  
(define-const var1843 var1381 var1381-init) ; Statement: $r5 = new freemarker.core.ParseException 
(define-const var3652 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3652)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3652!1 String)
(assert (= var3652!1 ""))
(define-const var1170 String (image/-1758362606 var1101)) ; Statement: $r7 = r1.<freemarker.core.Token: java.lang.String image> 
(assert true)
(define-const var426 String (append/672562846 var3652!1 var1170)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3652!2 String)
(assert (= var3652!2 (str.++ var3652!1 var1170)))
(assert true)
(define-const var3237 String (append/672562846 var426 " must be nested inside a directive that supports it:  #list with \u0022as\u0022, #items (or the deprecated ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must be nested inside a directive that supports it:  #list with \"as\", #items (or the deprecated ") 
(declare-const var426!1 String)
(assert (= var426!1 (str.++ var426 " must be nested inside a directive that supports it:  #list with \u0022as\u0022, #items (or the deprecated ")))
(assert true)
(define-const var3206 String (forEachDirectiveSymbol/57670292 var3726)) ; Statement: $r9 = specialinvoke r0.<freemarker.core.FMParser: java.lang.String forEachDirectiveSymbol()>() 
(assert true)
(define-const var1397 String (append/672562846 var3237 var3206)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3237!1 String)
(assert (= var3237!1 (str.++ var3237 var3206)))
(assert true)
(define-const var975 String (append/672562846 var1397 ")")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1397!1 String)
(assert (= var1397!1 (str.++ var1397 ")")))
(assert true)
(define-const var1664 String (toString/-2075883882 var975)) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1341 var2046 (template/-1475596563 var3726)) ; Statement: $r13 = r0.<freemarker.core.FMParser: freemarker.template.Template template> 
(assert true)
;(assert (<init>/-549569735 var1843 var1664 var1341 var1101)) ; Statement: specialinvoke $r5.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.template.Template,freemarker.core.Token)>($r14, $r13, r1) 

(declare-const var1843!1 var1381)
(declare-const var1664!1 String)
(declare-const var1341!1 var2046)
(declare-const var1101!1 var3881)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {jj_consume_token/-1662239344=([freemarker.core.FMParser, int], freemarker.core.Token), continuableDirectiveNesting/-1475596563=([freemarker.core.FMParser], int), var1381-init=([], freemarker.core.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), image/-1758362606=([freemarker.core.Token], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), forEachDirectiveSymbol/57670292=([freemarker.core.FMParser], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), template/-1475596563=([freemarker.core.FMParser], freemarker.template.Template), <init>/-549569735=([freemarker.core.ParseException, java.lang.String, freemarker.template.Template, freemarker.core.Token], void)}
; {var210=freemarker.core.FMParser, var3726=r0, var3881=freemarker.core.Token, var1101=r1, var1656=$i0, var1381=freemarker.core.ParseException, var1843=$r5, var3652=$r6, var1170=$r7, var426=$r8, var3237=$r10, var3206=$r9, var1397=$r11, var975=$r12, var1664=$r14, var2046=freemarker.template.Template, var1341=$r13}
; {freemarker.core.FMParser=var210, r0=var3726, freemarker.core.Token=var3881, r1=var1101, $i0=var1656, freemarker.core.ParseException=var1381, $r5=var1843, $r6=var3652, $r7=var1170, $r8=var426, $r10=var3237, $r9=var3206, $r11=var1397, $r12=var975, $r14=var1664, freemarker.template.Template=var2046, $r13=var1341}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.FMParser;	r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(56);	$i0 = r0.<freemarker.core.FMParser: int continuableDirectiveNesting>;	if $i0 >= 1 goto $r2 = new freemarker.core.ContinueInstruction;	$r5 = new freemarker.core.ParseException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = r1.<freemarker.core.Token: java.lang.String image>;	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must be nested inside a directive that supports it:  #list with \"as\", #items (or the deprecated ");	$r9 = specialinvoke r0.<freemarker.core.FMParser: java.lang.String forEachDirectiveSymbol()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = r0.<freemarker.core.FMParser: freemarker.template.Template template>;	specialinvoke $r5.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.template.Template,freemarker.core.Token)>($r14, $r13, r1);	throw $r5
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2052 0)
(declare-sort var304 0)
(declare-sort var204 0)
(declare-sort var538 0)
(declare-sort var468 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jj_consume_token/-1662239344 (var2052 Int) var304)
(declare-fun peekIteratorBlockContext/1109458793 (var2052) var204)
(declare-fun var538-init () var538)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun forEachDirectiveSymbol/57670292 (var2052) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun template/-1475596563 (var2052) var468)
(declare-fun <init>/-549569735 (var538 String var468 var304) void)
(declare-const null-var2052 var2052)
(declare-const null-var304 var304)
(declare-const null-var204 var204)
(declare-const var3181 var2052) ; Statement: r0 := @this: freemarker.core.FMParser 
(assert (not (= var3181 null-var2052)))
(define-const var48 var304 null-var304) ; Statement: r17 = null 
(assert true)
(define-const var828 var304 (jj_consume_token/-1662239344 var3181 12)) ; Statement: r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(12) 
(assert true)
(define-const var2174 var204 (peekIteratorBlockContext/1109458793 var3181)) ; Statement: $r2 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.FMParser$ParserIteratorBlockContext peekIteratorBlockContext()>() 
 ; Statement: if $r2 != null goto r3 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.TemplateElements MixedContentElements()>() 
(assert (not (not (= var2174 null-var204)))) ; Negate: Cond: $r2 != null  
(define-const var2171 var538 var538-init) ; Statement: $r19 = new freemarker.core.ParseException 
(define-const var2057 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2057)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2057!1 String)
(assert (= var2057!1 ""))
(assert true)
(define-const var3767 String (append/672562846 var2057!1 "#sep must be inside a #list (or ")) ; Statement: $r12 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#sep must be inside a #list (or ") 
(declare-const var2057!2 String)
(assert (= var2057!2 (str.++ var2057!1 "#sep must be inside a #list (or ")))
(assert true)
(define-const var3153 String (forEachDirectiveSymbol/57670292 var3181)) ; Statement: $r11 = specialinvoke r0.<freemarker.core.FMParser: java.lang.String forEachDirectiveSymbol()>() 
(assert true)
(define-const var2708 String (append/672562846 var3767 var3153)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3767!1 String)
(assert (= var3767!1 (str.++ var3767 var3153)))
(assert true)
(define-const var493 String (append/672562846 var2708 ") block.")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") block.") 
(declare-const var2708!1 String)
(assert (= var2708!1 (str.++ var2708 ") block.")))
(assert true)
(define-const var569 String (toString/-2075883882 var493)) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1646 var468 (template/-1475596563 var3181)) ; Statement: $r15 = r0.<freemarker.core.FMParser: freemarker.template.Template template> 
(assert true)
;(assert (<init>/-549569735 var2171 var569 var1646 var828)) ; Statement: specialinvoke $r19.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.template.Template,freemarker.core.Token)>($r16, $r15, r1) 

(declare-const var2171!1 var538)
(declare-const var569!1 String)
(declare-const var1646!1 var468)
(declare-const var828!1 var304)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {jj_consume_token/-1662239344=([freemarker.core.FMParser, int], freemarker.core.Token), peekIteratorBlockContext/1109458793=([freemarker.core.FMParser], freemarker.core.FMParser$ParserIteratorBlockContext), var538-init=([], freemarker.core.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), forEachDirectiveSymbol/57670292=([freemarker.core.FMParser], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), template/-1475596563=([freemarker.core.FMParser], freemarker.template.Template), <init>/-549569735=([freemarker.core.ParseException, java.lang.String, freemarker.template.Template, freemarker.core.Token], void)}
; {var2052=freemarker.core.FMParser, var3181=r0, var304=freemarker.core.Token, var48=r17, var828=r1, var204=freemarker.core.FMParser$ParserIteratorBlockContext, var2174=$r2, var538=freemarker.core.ParseException, var2171=$r19, var2057=$r18, var3767=$r12, var3153=$r11, var2708=$r13, var493=$r14, var569=$r16, var468=freemarker.template.Template, var1646=$r15}
; {freemarker.core.FMParser=var2052, r0=var3181, freemarker.core.Token=var304, r17=var48, r1=var828, freemarker.core.FMParser$ParserIteratorBlockContext=var204, $r2=var2174, freemarker.core.ParseException=var538, $r19=var2171, $r18=var2057, $r12=var3767, $r11=var3153, $r13=var2708, $r14=var493, $r16=var569, freemarker.template.Template=var468, $r15=var1646}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.FMParser;	r17 = null;	r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(12);	$r2 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.FMParser$ParserIteratorBlockContext peekIteratorBlockContext()>();	if $r2 != null goto r3 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.TemplateElements MixedContentElements()>();	$r19 = new freemarker.core.ParseException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#sep must be inside a #list (or ");	$r11 = specialinvoke r0.<freemarker.core.FMParser: java.lang.String forEachDirectiveSymbol()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") block.");	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = r0.<freemarker.core.FMParser: freemarker.template.Template template>;	specialinvoke $r19.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.template.Template,freemarker.core.Token)>($r16, $r15, r1);	throw $r19
;block_num 2
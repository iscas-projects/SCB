(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1174 0)
(declare-sort var2239 0)
(declare-sort var1044 0)
(declare-sort var1550 0)
(declare-sort var1657 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jj_consume_token/-1662239344 (var1174 Int) var2239)
(declare-fun outputFormat/-1475596563 (var1174) var1044)
(declare-fun autoEscaping/-1475596563 (var1174) Bool)
(declare-fun var1550-init () var1550)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-959053322 (var1044) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun template/-1475596563 (var1174) var1657)
(declare-fun <init>/-549569735 (var1550 String var1657 var2239) void)
(declare-const null-var1174 var1174)
(declare-const var3886 var1174) ; Statement: r0 := @this: freemarker.core.FMParser 
(assert (not (= var3886 null-var1174)))
(assert true)
(define-const var3560 var2239 (jj_consume_token/-1662239344 var3886 70)) ; Statement: r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(70) 
(define-const var2588 var1044 (outputFormat/-1475596563 var3886)) ; Statement: $r2 = r0.<freemarker.core.FMParser: freemarker.core.OutputFormat outputFormat> 
(define-const var1369 Bool false) ; Statement: $z0 = $r2 instanceof freemarker.core.MarkupOutputFormat 
 ; Statement: if $z0 == 0 goto $r10 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(142) 
(assert (not (= (ite var1369 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var679 Bool (autoEscaping/-1475596563 var3886)) ; Statement: $z1 = r0.<freemarker.core.FMParser: boolean autoEscaping> 
 ; Statement: if $z1 == 0 goto $r10 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(142) 
(assert (not (= (ite var679 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var31 var1550 var1550-init) ; Statement: $r14 = new freemarker.core.ParseException 
(define-const var3381 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3381)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3381!1 String)
(assert (= var3381!1 ""))
(assert true)
(define-const var2357 String (append/672562846 var3381!1 "Using the \u0022escape\u0022 directive (legacy escaping) is not allowed when auto-escaping is on with a markup output format (")) ; Statement: $r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Using the \"escape\" directive (legacy escaping) is not allowed when auto-escaping is on with a markup output format (") 
(declare-const var3381!2 String)
(assert (= var3381!2 (str.++ var3381!1 "Using the \u0022escape\u0022 directive (legacy escaping) is not allowed when auto-escaping is on with a markup output format (")))
(define-const var2624 var1044 (outputFormat/-1475596563 var3886)) ; Statement: $r16 = r0.<freemarker.core.FMParser: freemarker.core.OutputFormat outputFormat> 
(assert true)
(define-const var1728 String (getName/-959053322 var2624)) ; Statement: $r17 = virtualinvoke $r16.<freemarker.core.OutputFormat: java.lang.String getName()>() 
(assert true)
(define-const var3022 String (append/672562846 var2357 var1728)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2357!1 String)
(assert (= var2357!1 (str.++ var2357 var1728)))
(assert true)
(define-const var1381 String (append/672562846 var3022 "), to avoid confusion and double-escaping mistakes.")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("), to avoid confusion and double-escaping mistakes.") 
(declare-const var3022!1 String)
(assert (= var3022!1 (str.++ var3022 "), to avoid confusion and double-escaping mistakes.")))
(assert true)
(define-const var3616 String (toString/-2075883882 var1381)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1764 var1657 (template/-1475596563 var3886)) ; Statement: $r21 = r0.<freemarker.core.FMParser: freemarker.template.Template template> 
(assert true)
;(assert (<init>/-549569735 var31 var3616 var1764 var3560)) ; Statement: specialinvoke $r14.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.template.Template,freemarker.core.Token)>($r22, $r21, r1) 

(declare-const var31!1 var1550)
(declare-const var3616!1 String)
(declare-const var1764!1 var1657)
(declare-const var3560!1 var2239)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {jj_consume_token/-1662239344=([freemarker.core.FMParser, int], freemarker.core.Token), outputFormat/-1475596563=([freemarker.core.FMParser], freemarker.core.OutputFormat), autoEscaping/-1475596563=([freemarker.core.FMParser], boolean), var1550-init=([], freemarker.core.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-959053322=([freemarker.core.OutputFormat], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), template/-1475596563=([freemarker.core.FMParser], freemarker.template.Template), <init>/-549569735=([freemarker.core.ParseException, java.lang.String, freemarker.template.Template, freemarker.core.Token], void)}
; {var1174=freemarker.core.FMParser, var3886=r0, var2239=freemarker.core.Token, var3560=r1, var1044=freemarker.core.OutputFormat, var2588=$r2, var1369=$z0, var679=$z1, var1550=freemarker.core.ParseException, var31=$r14, var3381=$r15, var2357=$r18, var2624=$r16, var1728=$r17, var3022=$r19, var1381=$r20, var3616=$r22, var1657=freemarker.template.Template, var1764=$r21}
; {freemarker.core.FMParser=var1174, r0=var3886, freemarker.core.Token=var2239, r1=var3560, freemarker.core.OutputFormat=var1044, $r2=var2588, $z0=var1369, $z1=var679, freemarker.core.ParseException=var1550, $r14=var31, $r15=var3381, $r18=var2357, $r16=var2624, $r17=var1728, $r19=var3022, $r20=var1381, $r22=var3616, freemarker.template.Template=var1657, $r21=var1764}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.FMParser;	r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(70);	$r2 = r0.<freemarker.core.FMParser: freemarker.core.OutputFormat outputFormat>;	$z0 = $r2 instanceof freemarker.core.MarkupOutputFormat;	if $z0 == 0 goto $r10 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(142);	$z1 = r0.<freemarker.core.FMParser: boolean autoEscaping>;	if $z1 == 0 goto $r10 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(142);	$r14 = new freemarker.core.ParseException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Using the \"escape\" directive (legacy escaping) is not allowed when auto-escaping is on with a markup output format (");	$r16 = r0.<freemarker.core.FMParser: freemarker.core.OutputFormat outputFormat>;	$r17 = virtualinvoke $r16.<freemarker.core.OutputFormat: java.lang.String getName()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("), to avoid confusion and double-escaping mistakes.");	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = r0.<freemarker.core.FMParser: freemarker.template.Template template>;	specialinvoke $r14.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.template.Template,freemarker.core.Token)>($r22, $r21, r1);	throw $r14
;block_num 3
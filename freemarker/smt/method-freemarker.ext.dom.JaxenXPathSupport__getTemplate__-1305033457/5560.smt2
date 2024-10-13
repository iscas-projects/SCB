(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1796 0)
(declare-sort var2489 0)
(declare-sort var2027 0)
(declare-sort var2835 0)
(declare-sort var2444 0)
(declare-sort var2265 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2489_getCurrentEnvironment/-1977882473 () var2489)
(declare-fun getTemplate/-1663259407 (var2489) var2027)
(declare-fun getEncoding/1665432551 (var2027) String)
(declare-fun getName/1319332399 (var2027) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun toFullTemplateName/-1254595635 (var2489 String String) String)
(declare-fun getConfiguration/-1910593647 (var2489) var2835)
(declare-fun getLocale/410245169 (var2265) var2444)
(declare-fun cast-from-var2489-to-var2265 (var2489) var2265)
(declare-fun getTemplate/-575202145 (var2835 String var2444 String Bool) var2027)
(declare-const null-String String)
(declare-const var2662 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var2662 null-String)))
(define-const var1660 var2489 var2489_getCurrentEnvironment/-1977882473) ; Statement: r0 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>() 
(assert true)
(define-const var2857 var2027 (getTemplate/-1663259407 var1660)) ; Statement: $r1 = virtualinvoke r0.<freemarker.core.Environment: freemarker.template.Template getTemplate()>() 
(assert true)
(define-const var267 String (getEncoding/1665432551 var2857)) ; Statement: r11 = virtualinvoke $r1.<freemarker.template.Template: java.lang.String getEncoding()>() 
 ; Statement: if r11 != null goto $r2 = virtualinvoke r0.<freemarker.core.Environment: freemarker.template.Template getTemplate()>() 
(assert (not (= var267 null-String))) ; Cond: r11 != null 
(assert true)
(define-const var3577 var2027 (getTemplate/-1663259407 var1660)) ; Statement: $r2 = virtualinvoke r0.<freemarker.core.Environment: freemarker.template.Template getTemplate()>() 
(assert true)
(define-const var2639 String (getName/1319332399 var3577)) ; Statement: $r9 = virtualinvoke $r2.<freemarker.template.Template: java.lang.String getName()>() 
(assert true)
(define-const var908 Int (lastIndexOf/-1292097097 var2639 47)) ; Statement: $i1 = virtualinvoke $r9.<java.lang.String: int lastIndexOf(int)>(47) 
(define-const var2512 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if $i1 != $i3 goto $i0 = $i1 + 1 
(assert (not (not (= var908 var2512)))) ; Negate: Cond: $i1 != $i3  
(define-const var3827 String "") ; Statement: $r12 = "" 
 ; Statement: goto [?= $r5 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String toFullTemplateName(java.lang.String,java.lang.String)>($r12, r10)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3335 String (toFullTemplateName/-1254595635 var1660 var3827 var2662)) ; Statement: $r5 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String toFullTemplateName(java.lang.String,java.lang.String)>($r12, r10) 
(assert true)
(define-const var648 var2835 (getConfiguration/-1910593647 var1660)) ; Statement: $r4 = virtualinvoke r0.<freemarker.core.Environment: freemarker.template.Configuration getConfiguration()>() 
(assert true)
(define-const var3972 var2444 (getLocale/410245169 (cast-from-var2489-to-var2265 var1660))) ; Statement: $r3 = virtualinvoke r0.<freemarker.core.Environment: java.util.Locale getLocale()>() 
(assert true)
(define-const var3305 var2027 (getTemplate/-575202145 var648 var3335 var3972 var267 (ite (= 1 0) true false))) ; Statement: $r6 = virtualinvoke $r4.<freemarker.template.Configuration: freemarker.template.Template getTemplate(java.lang.String,java.util.Locale,java.lang.String,boolean)>($r5, $r3, r11, 0) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2489_getCurrentEnvironment/-1977882473=([], freemarker.core.Environment), getTemplate/-1663259407=([freemarker.core.Environment], freemarker.template.Template), getEncoding/1665432551=([freemarker.template.Template], java.lang.String), getName/1319332399=([freemarker.template.Template], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), toFullTemplateName/-1254595635=([freemarker.core.Environment, java.lang.String, java.lang.String], java.lang.String), getConfiguration/-1910593647=([freemarker.core.Environment], freemarker.template.Configuration), getLocale/410245169=([freemarker.core.Configurable], java.util.Locale), cast-from-var2489-to-var2265=([freemarker.core.Environment], freemarker.core.Configurable), getTemplate/-575202145=([freemarker.template.Configuration, java.lang.String, java.util.Locale, java.lang.String, boolean], freemarker.template.Template)}
; {var2662=r10, var1796=null_type, var2489=freemarker.core.Environment, var1660=r0, var2027=freemarker.template.Template, var2857=$r1, var267=r11, var3577=$r2, var2639=$r9, var908=$i1, var2512=$i3, var3827=$r12, var3335=$r5, var2835=freemarker.template.Configuration, var648=$r4, var2444=java.util.Locale, var2265=freemarker.core.Configurable, var3972=$r3, var3305=$r6}
; {r10=var2662, null_type=var1796, freemarker.core.Environment=var2489, r0=var1660, freemarker.template.Template=var2027, $r1=var2857, r11=var267, $r2=var3577, $r9=var2639, $i1=var908, $i3=var2512, $r12=var3827, $r5=var3335, freemarker.template.Configuration=var2835, $r4=var648, java.util.Locale=var2444, freemarker.core.Configurable=var2265, $r3=var3972, $r6=var3305}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r10 := @parameter0: java.lang.String;	r0 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>();	$r1 = virtualinvoke r0.<freemarker.core.Environment: freemarker.template.Template getTemplate()>();	r11 = virtualinvoke $r1.<freemarker.template.Template: java.lang.String getEncoding()>();	if r11 != null goto $r2 = virtualinvoke r0.<freemarker.core.Environment: freemarker.template.Template getTemplate()>();	$r2 = virtualinvoke r0.<freemarker.core.Environment: freemarker.template.Template getTemplate()>();	$r9 = virtualinvoke $r2.<freemarker.template.Template: java.lang.String getName()>();	$i1 = virtualinvoke $r9.<java.lang.String: int lastIndexOf(int)>(47);	$i3 = (int) -1;	if $i1 != $i3 goto $i0 = $i1 + 1;	$r12 = "";	goto [?= $r5 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String toFullTemplateName(java.lang.String,java.lang.String)>($r12, r10)];	$r5 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String toFullTemplateName(java.lang.String,java.lang.String)>($r12, r10);	$r4 = virtualinvoke r0.<freemarker.core.Environment: freemarker.template.Configuration getConfiguration()>();	$r3 = virtualinvoke r0.<freemarker.core.Environment: java.util.Locale getLocale()>();	$r6 = virtualinvoke $r4.<freemarker.template.Configuration: freemarker.template.Template getTemplate(java.lang.String,java.util.Locale,java.lang.String,boolean)>($r5, $r3, r11, 0);	return $r6
;block_num 4
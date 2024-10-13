(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2957 0)
(declare-sort var3870 0)
(declare-sort var2090 0)
(declare-sort var3461 0)
(declare-sort var707 0)
(declare-sort var3759 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3870_getCurrentEnvironment/-1977882473 () var3870)
(declare-fun getTemplate/-1663259407 (var3870) var2090)
(declare-fun getEncoding/1665432551 (var2090) String)
(declare-fun getName/1319332399 (var2090) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun toFullTemplateName/-1254595635 (var3870 String String) String)
(declare-fun getConfiguration/-1910593647 (var3870) var3461)
(declare-fun getLocale/410245169 (var3759) var707)
(declare-fun cast-from-var3870-to-var3759 (var3870) var3759)
(declare-fun getTemplate/-575202145 (var3461 String var707 String Bool) var2090)
(declare-const null-String String)
(declare-const var165 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var165 null-String)))
(define-const var111 var3870 var3870_getCurrentEnvironment/-1977882473) ; Statement: r0 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>() 
(assert true)
(define-const var2470 var2090 (getTemplate/-1663259407 var111)) ; Statement: $r1 = virtualinvoke r0.<freemarker.core.Environment: freemarker.template.Template getTemplate()>() 
(assert true)
(define-const var1332 String (getEncoding/1665432551 var2470)) ; Statement: r11 = virtualinvoke $r1.<freemarker.template.Template: java.lang.String getEncoding()>() 
 ; Statement: if r11 != null goto $r2 = virtualinvoke r0.<freemarker.core.Environment: freemarker.template.Template getTemplate()>() 
(assert (not (= var1332 null-String))) ; Cond: r11 != null 
(assert true)
(define-const var1739 var2090 (getTemplate/-1663259407 var111)) ; Statement: $r2 = virtualinvoke r0.<freemarker.core.Environment: freemarker.template.Template getTemplate()>() 
(assert true)
(define-const var175 String (getName/1319332399 var1739)) ; Statement: $r9 = virtualinvoke $r2.<freemarker.template.Template: java.lang.String getName()>() 
(assert true)
(define-const var1732 Int (lastIndexOf/-1292097097 var175 47)) ; Statement: $i1 = virtualinvoke $r9.<java.lang.String: int lastIndexOf(int)>(47) 
(define-const var3879 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if $i1 != $i3 goto $i0 = $i1 + 1 
(assert (not (= var1732 var3879))) ; Cond: $i1 != $i3 
(define-const var3202 Int (+ var1732 1)) ; Statement: $i0 = $i1 + 1 
(assert (and true (and (>= 0 0) (>= (str.len var175) var3202) (>= var3202 0))))
(define-const var2056 String (substring/-1240304868 var175 0 var3202)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.String: java.lang.String substring(int,int)>(0, $i0) 
(assert true) ; Non Conditional
(assert true)
(define-const var1476 String (toFullTemplateName/-1254595635 var111 var2056 var165)) ; Statement: $r5 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String toFullTemplateName(java.lang.String,java.lang.String)>($r12, r10) 
(assert true)
(define-const var1837 var3461 (getConfiguration/-1910593647 var111)) ; Statement: $r4 = virtualinvoke r0.<freemarker.core.Environment: freemarker.template.Configuration getConfiguration()>() 
(assert true)
(define-const var155 var707 (getLocale/410245169 (cast-from-var3870-to-var3759 var111))) ; Statement: $r3 = virtualinvoke r0.<freemarker.core.Environment: java.util.Locale getLocale()>() 
(assert true)
(define-const var3230 var2090 (getTemplate/-575202145 var1837 var1476 var155 var1332 (ite (= 1 0) true false))) ; Statement: $r6 = virtualinvoke $r4.<freemarker.template.Configuration: freemarker.template.Template getTemplate(java.lang.String,java.util.Locale,java.lang.String,boolean)>($r5, $r3, r11, 0) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var3870_getCurrentEnvironment/-1977882473=([], freemarker.core.Environment), getTemplate/-1663259407=([freemarker.core.Environment], freemarker.template.Template), getEncoding/1665432551=([freemarker.template.Template], java.lang.String), getName/1319332399=([freemarker.template.Template], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), toFullTemplateName/-1254595635=([freemarker.core.Environment, java.lang.String, java.lang.String], java.lang.String), getConfiguration/-1910593647=([freemarker.core.Environment], freemarker.template.Configuration), getLocale/410245169=([freemarker.core.Configurable], java.util.Locale), cast-from-var3870-to-var3759=([freemarker.core.Environment], freemarker.core.Configurable), getTemplate/-575202145=([freemarker.template.Configuration, java.lang.String, java.util.Locale, java.lang.String, boolean], freemarker.template.Template)}
; {var165=r10, var2957=null_type, var3870=freemarker.core.Environment, var111=r0, var2090=freemarker.template.Template, var2470=$r1, var1332=r11, var1739=$r2, var175=$r9, var1732=$i1, var3879=$i3, var3202=$i0, var2056=$r12, var1476=$r5, var3461=freemarker.template.Configuration, var1837=$r4, var707=java.util.Locale, var3759=freemarker.core.Configurable, var155=$r3, var3230=$r6}
; {r10=var165, null_type=var2957, freemarker.core.Environment=var3870, r0=var111, freemarker.template.Template=var2090, $r1=var2470, r11=var1332, $r2=var1739, $r9=var175, $i1=var1732, $i3=var3879, $i0=var3202, $r12=var2056, $r5=var1476, freemarker.template.Configuration=var3461, $r4=var1837, java.util.Locale=var707, freemarker.core.Configurable=var3759, $r3=var155, $r6=var3230}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r10 := @parameter0: java.lang.String;	r0 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>();	$r1 = virtualinvoke r0.<freemarker.core.Environment: freemarker.template.Template getTemplate()>();	r11 = virtualinvoke $r1.<freemarker.template.Template: java.lang.String getEncoding()>();	if r11 != null goto $r2 = virtualinvoke r0.<freemarker.core.Environment: freemarker.template.Template getTemplate()>();	$r2 = virtualinvoke r0.<freemarker.core.Environment: freemarker.template.Template getTemplate()>();	$r9 = virtualinvoke $r2.<freemarker.template.Template: java.lang.String getName()>();	$i1 = virtualinvoke $r9.<java.lang.String: int lastIndexOf(int)>(47);	$i3 = (int) -1;	if $i1 != $i3 goto $i0 = $i1 + 1;	$i0 = $i1 + 1;	$r12 = virtualinvoke $r9.<java.lang.String: java.lang.String substring(int,int)>(0, $i0);	$r5 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String toFullTemplateName(java.lang.String,java.lang.String)>($r12, r10);	$r4 = virtualinvoke r0.<freemarker.core.Environment: freemarker.template.Configuration getConfiguration()>();	$r3 = virtualinvoke r0.<freemarker.core.Environment: java.util.Locale getLocale()>();	$r6 = virtualinvoke $r4.<freemarker.template.Configuration: freemarker.template.Template getTemplate(java.lang.String,java.util.Locale,java.lang.String,boolean)>($r5, $r3, r11, 0);	return $r6
;block_num 4
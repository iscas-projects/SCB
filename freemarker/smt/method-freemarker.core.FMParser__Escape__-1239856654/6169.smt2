(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var773 0)
(declare-sort var2033 0)
(declare-sort var1150 0)
(declare-sort var420 0)
(declare-sort var2409 0)
(declare-sort var2396 0)
(declare-sort var822 0)
(declare-sort var1250 0)
(declare-sort var334 0)
(declare-sort var3104 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jj_consume_token/-1662239344 (var773 Int) var2033)
(declare-fun outputFormat/-1475596563 (var773) var1150)
(declare-fun autoEscaping/-1475596563 (var773) Bool)
(declare-fun Expression/1135211635 (var773) var420)
(declare-fun var2409-init () var2409)
(declare-fun image/-1758362606 (var2033) String)
(declare-fun escapedExpression/1173060499 (var773 var420) var420)
(declare-fun <init>/-983897421 (var2409 String var420 var420) void)
(declare-fun escapes/-1475596563 (var773) var2396)
(declare-fun addFirst/-367824530 (var2396 var822) void)
(declare-fun cast-from-var2409-to-var822 (var2409) var822)
(declare-fun MixedContentElements/-1798446385 (var773) var1250)
(declare-fun setContent/-1520856095 (var2409 var1250) void)
(declare-fun removeFirst/-682907227 (var2396) var822)
(declare-fun template/-1475596563 (var773) var334)
(declare-fun setLocation/2027311074 (var3104 var334 var2033 var2033) void)
(declare-fun cast-from-var2409-to-var3104 (var2409) var3104)
(declare-const null-var773 var773)
(declare-const var2630 var773) ; Statement: r0 := @this: freemarker.core.FMParser 
(assert (not (= var2630 null-var773)))
(assert true)
(define-const var2746 var2033 (jj_consume_token/-1662239344 var2630 70)) ; Statement: r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(70) 
(define-const var396 var1150 (outputFormat/-1475596563 var2630)) ; Statement: $r2 = r0.<freemarker.core.FMParser: freemarker.core.OutputFormat outputFormat> 
(define-const var2579 Bool false) ; Statement: $z0 = $r2 instanceof freemarker.core.MarkupOutputFormat 
 ; Statement: if $z0 == 0 goto $r10 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(142) 
(assert (not (= (ite var2579 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1501 Bool (autoEscaping/-1475596563 var2630)) ; Statement: $z1 = r0.<freemarker.core.FMParser: boolean autoEscaping> 
 ; Statement: if $z1 == 0 goto $r10 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(142) 
(assert (= (ite var1501 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2009 var2033 (jj_consume_token/-1662239344 var2630 142)) ; Statement: $r10 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(142) 
(assert true)
;(assert (jj_consume_token/-1662239344 var2630 140)) ; Statement: specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(140) 

(declare-const var2630!1 var773)
(declare-const var2717 Int)
(assert true)
(define-const var438 var420 (Expression/1135211635 var2630!1)) ; Statement: $r11 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.Expression Expression()>() 
(assert true)
;(assert (jj_consume_token/-1662239344 var2630!1 148)) ; Statement: specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(148) 

(declare-const var2630!2 var773)
(declare-const var1423 Int)
(define-const var678 var2409 var2409-init) ; Statement: $r3 = new freemarker.core.EscapeBlock 
(define-const var2654 String (image/-1758362606 var2009)) ; Statement: $r4 = $r10.<freemarker.core.Token: java.lang.String image> 
(assert true)
(define-const var1434 var420 (escapedExpression/1173060499 var2630!2 var438)) ; Statement: $r5 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Expression escapedExpression(freemarker.core.Expression)>($r11) 
(assert true)
;(assert (<init>/-983897421 var678 var2654 var438 var1434)) ; Statement: specialinvoke $r3.<freemarker.core.EscapeBlock: void <init>(java.lang.String,freemarker.core.Expression,freemarker.core.Expression)>($r4, $r11, $r5) 

(declare-const var678!1 var2409)
(declare-const var2654!1 String)
(declare-const var438!1 var420)
(declare-const var1434!1 var420)
(define-const var2096 var2396 (escapes/-1475596563 var2630!2)) ; Statement: $r6 = r0.<freemarker.core.FMParser: java.util.LinkedList escapes> 
(assert true)
;(assert (addFirst/-367824530 var2096 (cast-from-var2409-to-var822 var678!1))) ; Statement: virtualinvoke $r6.<java.util.LinkedList: void addFirst(java.lang.Object)>($r3) 

(declare-const var2096!1 var2396)
(declare-const var678!2 var2409)
(assert true)
(define-const var602 var1250 (MixedContentElements/-1798446385 var2630!2)) ; Statement: $r12 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.TemplateElements MixedContentElements()>() 
(assert true)
;(assert (setContent/-1520856095 var678!2 var602)) ; Statement: virtualinvoke $r3.<freemarker.core.EscapeBlock: void setContent(freemarker.core.TemplateElements)>($r12) 

(declare-const var678!3 var2409)
(declare-const var602!1 var1250)
(define-const var2176 var2396 (escapes/-1475596563 var2630!2)) ; Statement: $r7 = r0.<freemarker.core.FMParser: java.util.LinkedList escapes> 
(assert true)
;(assert (removeFirst/-682907227 var2176)) ; Statement: virtualinvoke $r7.<java.util.LinkedList: java.lang.Object removeFirst()>() 

(declare-const var2176!1 var2396)
(assert true)
(define-const var546 var2033 (jj_consume_token/-1662239344 var2630!2 71)) ; Statement: $r13 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(71) 
(define-const var2357 var334 (template/-1475596563 var2630!2)) ; Statement: $r8 = r0.<freemarker.core.FMParser: freemarker.template.Template template> 
(assert true)
;(assert (setLocation/2027311074 (cast-from-var2409-to-var3104 var678!3) var2357 var2746 var546)) ; Statement: virtualinvoke $r3.<freemarker.core.EscapeBlock: void setLocation(freemarker.template.Template,freemarker.core.Token,freemarker.core.Token)>($r8, r1, $r13) 

(declare-const var678!4 var2409)
(declare-const var2357!1 var334)
(declare-const var2746!1 var2033)
(declare-const var546!1 var2033)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {jj_consume_token/-1662239344=([freemarker.core.FMParser, int], freemarker.core.Token), outputFormat/-1475596563=([freemarker.core.FMParser], freemarker.core.OutputFormat), autoEscaping/-1475596563=([freemarker.core.FMParser], boolean), Expression/1135211635=([freemarker.core.FMParser], freemarker.core.Expression), var2409-init=([], freemarker.core.EscapeBlock), image/-1758362606=([freemarker.core.Token], java.lang.String), escapedExpression/1173060499=([freemarker.core.FMParser, freemarker.core.Expression], freemarker.core.Expression), <init>/-983897421=([freemarker.core.EscapeBlock, java.lang.String, freemarker.core.Expression, freemarker.core.Expression], void), escapes/-1475596563=([freemarker.core.FMParser], java.util.LinkedList), addFirst/-367824530=([java.util.LinkedList, java.lang.Object], void), cast-from-var2409-to-var822=([freemarker.core.EscapeBlock], java.lang.Object), MixedContentElements/-1798446385=([freemarker.core.FMParser], freemarker.core.TemplateElements), setContent/-1520856095=([freemarker.core.EscapeBlock, freemarker.core.TemplateElements], void), removeFirst/-682907227=([java.util.LinkedList], java.lang.Object), template/-1475596563=([freemarker.core.FMParser], freemarker.template.Template), setLocation/2027311074=([freemarker.core.TemplateObject, freemarker.template.Template, freemarker.core.Token, freemarker.core.Token], void), cast-from-var2409-to-var3104=([freemarker.core.EscapeBlock], freemarker.core.TemplateObject)}
; {var773=freemarker.core.FMParser, var2630=r0, var2033=freemarker.core.Token, var2746=r1, var1150=freemarker.core.OutputFormat, var396=$r2, var2579=$z0, var1501=$z1, var2009=$r10, var2717=140, var420=freemarker.core.Expression, var438=$r11, var1423=148, var2409=freemarker.core.EscapeBlock, var678=$r3, var2654=$r4, var1434=$r5, var2396=java.util.LinkedList, var2096=$r6, var822=java.lang.Object, var1250=freemarker.core.TemplateElements, var602=$r12, var2176=$r7, var546=$r13, var334=freemarker.template.Template, var2357=$r8, var3104=freemarker.core.TemplateObject}
; {freemarker.core.FMParser=var773, r0=var2630, freemarker.core.Token=var2033, r1=var2746, freemarker.core.OutputFormat=var1150, $r2=var396, $z0=var2579, $z1=var1501, $r10=var2009, 140=var2717, freemarker.core.Expression=var420, $r11=var438, 148=var1423, freemarker.core.EscapeBlock=var2409, $r3=var678, $r4=var2654, $r5=var1434, java.util.LinkedList=var2396, $r6=var2096, java.lang.Object=var822, freemarker.core.TemplateElements=var1250, $r12=var602, $r7=var2176, $r13=var546, freemarker.template.Template=var334, $r8=var2357, freemarker.core.TemplateObject=var3104}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.core.FMParser;	r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(70);	$r2 = r0.<freemarker.core.FMParser: freemarker.core.OutputFormat outputFormat>;	$z0 = $r2 instanceof freemarker.core.MarkupOutputFormat;	if $z0 == 0 goto $r10 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(142);	$z1 = r0.<freemarker.core.FMParser: boolean autoEscaping>;	if $z1 == 0 goto $r10 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(142);	$r10 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(142);	specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(140);	$r11 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.Expression Expression()>();	specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(148);	$r3 = new freemarker.core.EscapeBlock;	$r4 = $r10.<freemarker.core.Token: java.lang.String image>;	$r5 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Expression escapedExpression(freemarker.core.Expression)>($r11);	specialinvoke $r3.<freemarker.core.EscapeBlock: void <init>(java.lang.String,freemarker.core.Expression,freemarker.core.Expression)>($r4, $r11, $r5);	$r6 = r0.<freemarker.core.FMParser: java.util.LinkedList escapes>;	virtualinvoke $r6.<java.util.LinkedList: void addFirst(java.lang.Object)>($r3);	$r12 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.TemplateElements MixedContentElements()>();	virtualinvoke $r3.<freemarker.core.EscapeBlock: void setContent(freemarker.core.TemplateElements)>($r12);	$r7 = r0.<freemarker.core.FMParser: java.util.LinkedList escapes>;	virtualinvoke $r7.<java.util.LinkedList: java.lang.Object removeFirst()>();	$r13 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(71);	$r8 = r0.<freemarker.core.FMParser: freemarker.template.Template template>;	virtualinvoke $r3.<freemarker.core.EscapeBlock: void setLocation(freemarker.template.Template,freemarker.core.Token,freemarker.core.Token)>($r8, r1, $r13);	return $r3
;block_num 3
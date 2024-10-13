(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3573 0)
(declare-sort var304 0)
(declare-sort var3391 0)
(declare-sort var425 0)
(declare-sort var592 0)
(declare-sort var3123 0)
(declare-sort var1563 0)
(declare-sort var1943 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jj_consume_token/-1662239344 (var3573 Int) var304)
(declare-fun Expression/1135211635 (var3573) var425)
(declare-fun jj_ntk/-1475596563 (var3573) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun jj_la1/-1475596563 (var3573) (Array Int Int))
(declare-fun jj_gen/-1475596563 (var3573) Int)
(declare-fun pushIteratorBlockContext/-1504331062 (var3573) var592)
(declare-fun MixedContentElements/-1798446385 (var3573) var3123)
(declare-fun var592_access$300/-1143040697 (var592) Int)
(declare-fun var1563-init () var1563)
(declare-fun template/-1475596563 (var3573) var1943)
(declare-fun <init>/-549569735 (var1563 String var1943 var304) void)
(declare-const null-var3573 var3573)
(declare-const null-var304 var304)
(declare-const null-var3391 var3391)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var0 var3573) ; Statement: r0 := @this: freemarker.core.FMParser 
(assert (not (= var0 null-var3573)))
(define-const var1191 var304 null-var304) ; Statement: r23 = null 
(define-const var3718 var304 null-var304) ; Statement: r24 = null 
(define-const var622 var3391 null-var3391) ; Statement: r25 = null 
(assert true)
(define-const var211 var304 (jj_consume_token/-1662239344 var0 10)) ; Statement: r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(10) 
(assert true)
(define-const var195 var425 (Expression/1135211635 var0)) ; Statement: r2 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.Expression Expression()>() 
(define-const var179 Int (jj_ntk/-1475596563 var0)) ; Statement: $i0 = r0.<freemarker.core.FMParser: int jj_ntk> 
(define-const var377 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i19 = (int) -1 
 ; Statement: if $i0 != $i19 goto $i15 = r0.<freemarker.core.FMParser: int jj_ntk> 
(assert (not (= var179 var377))) ; Cond: $i0 != $i19 
(define-const var2592 Int (jj_ntk/-1475596563 var0)) ; Statement: $i15 = r0.<freemarker.core.FMParser: int jj_ntk> 
(assert true) ; Non Conditional
 ; Statement: lookupswitch($i15) {     case 140: goto specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(140);     default: goto $r22 = r0.<freemarker.core.FMParser: int[] jj_la1>; } 
(assert (and (not (= var2592 140)) true)) ; Intersect: Negate: Cond: $i15 == 140   and Non Conditional 
(define-const var2989 (Array Int Int) (jj_la1/-1475596563 var0)) ; Statement: $r22 = r0.<freemarker.core.FMParser: int[] jj_la1> 
(define-const var625 Int (jj_gen/-1475596563 var0)) ; Statement: $i14 = r0.<freemarker.core.FMParser: int jj_gen> 
(declare-const var2989!1 (Array Int Int))
(assert (not (= var2989!1 null-__Array__Int__Int__)))
(assert (= (select var2989!1 34) var625)) ; Statement: $r22[34] = $i14 
(assert true) ; Non Conditional
(assert true)
;(assert (jj_consume_token/-1662239344 var0 148)) ; Statement: specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(148) 

(declare-const var0!1 var3573)
(declare-const var1047 Int)
(assert true)
(define-const var3985 var592 (pushIteratorBlockContext/-1504331062 var0!1)) ; Statement: $r26 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.FMParser$ParserIteratorBlockContext pushIteratorBlockContext()>() 
 ; Statement: if r23 == null goto $r27 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.TemplateElements MixedContentElements()>() 
(assert (= var1191 null-var304)) ; Cond: r23 == null 
(assert true)
(define-const var1973 var3123 (MixedContentElements/-1798446385 var0!1)) ; Statement: $r27 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.TemplateElements MixedContentElements()>() 
 ; Statement: if r23 == null goto $i2 = staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: int access$300(freemarker.core.FMParser$ParserIteratorBlockContext)>($r26) 
(assert (= var1191 null-var304)) ; Cond: r23 == null 
(define-const var3070 Int (var592_access$300/-1143040697 var3985)) ; Statement: $i2 = staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: int access$300(freemarker.core.FMParser$ParserIteratorBlockContext)>($r26) 
 ; Statement: if $i2 == 2 goto specialinvoke r0.<freemarker.core.FMParser: void popIteratorBlockContext()>() 
(assert (not (= var3070 2))) ; Negate: Cond: $i2 == 2  
(define-const var3618 var1563 var1563-init) ; Statement: $r35 = new freemarker.core.ParseException 
(define-const var2739 var1943 (template/-1475596563 var0!1)) ; Statement: $r9 = r0.<freemarker.core.FMParser: freemarker.template.Template template> 
(assert true)
;(assert (<init>/-549569735 var3618 "#list must have either \u0022as loopVar\u0022 parameter or nested #items that belongs to it." var2739 var211)) ; Statement: specialinvoke $r35.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.template.Template,freemarker.core.Token)>("#list must have either \"as loopVar\" parameter or nested #items that belongs to it.", $r9, r1) 

(declare-const var3618!1 var1563)
(declare-const var1015 String)
(declare-const var2739!1 var1943)
(declare-const var211!1 var304)
 ; Statement: throw $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {jj_consume_token/-1662239344=([freemarker.core.FMParser, int], freemarker.core.Token), Expression/1135211635=([freemarker.core.FMParser], freemarker.core.Expression), jj_ntk/-1475596563=([freemarker.core.FMParser], int), cast-from-Int-to-Int=([int], int), jj_la1/-1475596563=([freemarker.core.FMParser], int[]), jj_gen/-1475596563=([freemarker.core.FMParser], int), pushIteratorBlockContext/-1504331062=([freemarker.core.FMParser], freemarker.core.FMParser$ParserIteratorBlockContext), MixedContentElements/-1798446385=([freemarker.core.FMParser], freemarker.core.TemplateElements), var592_access$300/-1143040697=([freemarker.core.FMParser$ParserIteratorBlockContext], int), var1563-init=([], freemarker.core.ParseException), template/-1475596563=([freemarker.core.FMParser], freemarker.template.Template), <init>/-549569735=([freemarker.core.ParseException, java.lang.String, freemarker.template.Template, freemarker.core.Token], void)}
; {var3573=freemarker.core.FMParser, var0=r0, var304=freemarker.core.Token, var1191=r23, var3718=r24, var3391=freemarker.core.ElseOfList, var622=r25, var211=r1, var425=freemarker.core.Expression, var195=r2, var179=$i0, var377=$i19, var2592=$i15, var2989=$r22, var625=$i14, var1047=148, var592=freemarker.core.FMParser$ParserIteratorBlockContext, var3985=$r26, var3123=freemarker.core.TemplateElements, var1973=$r27, var3070=$i2, var1563=freemarker.core.ParseException, var3618=$r35, var1943=freemarker.template.Template, var2739=$r9, var1015="#list must have either \"as loopVar\" parameter or nested #items that belongs to it."}
; {freemarker.core.FMParser=var3573, r0=var0, freemarker.core.Token=var304, r23=var1191, r24=var3718, freemarker.core.ElseOfList=var3391, r25=var622, r1=var211, freemarker.core.Expression=var425, r2=var195, $i0=var179, $i19=var377, $i15=var2592, $r22=var2989, $i14=var625, 148=var1047, freemarker.core.FMParser$ParserIteratorBlockContext=var592, $r26=var3985, freemarker.core.TemplateElements=var3123, $r27=var1973, $i2=var3070, freemarker.core.ParseException=var1563, $r35=var3618, freemarker.template.Template=var1943, $r9=var2739, "#list must have either \"as loopVar\" parameter or nested #items that belongs to it."=var1015}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.core.FMParser;	r23 = null;	r24 = null;	r25 = null;	r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(10);	r2 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.Expression Expression()>();	$i0 = r0.<freemarker.core.FMParser: int jj_ntk>;	$i19 = (int) -1;	if $i0 != $i19 goto $i15 = r0.<freemarker.core.FMParser: int jj_ntk>;	$i15 = r0.<freemarker.core.FMParser: int jj_ntk>;	lookupswitch($i15) {     case 140: goto specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(140);     default: goto $r22 = r0.<freemarker.core.FMParser: int[] jj_la1>; };	$r22 = r0.<freemarker.core.FMParser: int[] jj_la1>;	$i14 = r0.<freemarker.core.FMParser: int jj_gen>;	$r22[34] = $i14;	specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(148);	$r26 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.FMParser$ParserIteratorBlockContext pushIteratorBlockContext()>();	if r23 == null goto $r27 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.TemplateElements MixedContentElements()>();	$r27 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.TemplateElements MixedContentElements()>();	if r23 == null goto $i2 = staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: int access$300(freemarker.core.FMParser$ParserIteratorBlockContext)>($r26);	$i2 = staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: int access$300(freemarker.core.FMParser$ParserIteratorBlockContext)>($r26);	if $i2 == 2 goto specialinvoke r0.<freemarker.core.FMParser: void popIteratorBlockContext()>();	$r35 = new freemarker.core.ParseException;	$r9 = r0.<freemarker.core.FMParser: freemarker.template.Template template>;	specialinvoke $r35.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.template.Template,freemarker.core.Token)>("#list must have either \"as loopVar\" parameter or nested #items that belongs to it.", $r9, r1);	throw $r35
;block_num 8
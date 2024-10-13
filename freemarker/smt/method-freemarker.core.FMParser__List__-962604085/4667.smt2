(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2513 0)
(declare-sort var1105 0)
(declare-sort var348 0)
(declare-sort var2946 0)
(declare-sort var1441 0)
(declare-sort var3354 0)
(declare-sort var2573 0)
(declare-sort var2242 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jj_consume_token/-1662239344 (var2513 Int) var1105)
(declare-fun Expression/1135211635 (var2513) var2946)
(declare-fun jj_ntk/-1475596563 (var2513) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun jj_ntk_f/1929880400 (var2513) Int)
(declare-fun jj_la1/-1475596563 (var2513) (Array Int Int))
(declare-fun jj_gen/-1475596563 (var2513) Int)
(declare-fun pushIteratorBlockContext/-1504331062 (var2513) var1441)
(declare-fun MixedContentElements/-1798446385 (var2513) var3354)
(declare-fun var1441_access$300/-1143040697 (var1441) Int)
(declare-fun var2573-init () var2573)
(declare-fun template/-1475596563 (var2513) var2242)
(declare-fun <init>/-549569735 (var2573 String var2242 var1105) void)
(declare-const null-var2513 var2513)
(declare-const null-var1105 var1105)
(declare-const null-var348 var348)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3995 var2513) ; Statement: r0 := @this: freemarker.core.FMParser 
(assert (not (= var3995 null-var2513)))
(define-const var988 var1105 null-var1105) ; Statement: r23 = null 
(define-const var3837 var1105 null-var1105) ; Statement: r24 = null 
(define-const var2676 var348 null-var348) ; Statement: r25 = null 
(assert true)
(define-const var3869 var1105 (jj_consume_token/-1662239344 var3995 10)) ; Statement: r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(10) 
(assert true)
(define-const var2589 var2946 (Expression/1135211635 var3995)) ; Statement: r2 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.Expression Expression()>() 
(define-const var3638 Int (jj_ntk/-1475596563 var3995)) ; Statement: $i0 = r0.<freemarker.core.FMParser: int jj_ntk> 
(define-const var2485 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i19 = (int) -1 
 ; Statement: if $i0 != $i19 goto $i15 = r0.<freemarker.core.FMParser: int jj_ntk> 
(assert (not (not (= var3638 var2485)))) ; Negate: Cond: $i0 != $i19  
(assert true)
(define-const var3103 Int (jj_ntk_f/1929880400 var3995)) ; Statement: $i15 = specialinvoke r0.<freemarker.core.FMParser: int jj_ntk_f()>() 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: lookupswitch($i15) {     case 140: goto specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(140);     default: goto $r22 = r0.<freemarker.core.FMParser: int[] jj_la1>; } 
(assert (and (not (= var3103 140)) true)) ; Intersect: Negate: Cond: $i15 == 140   and Non Conditional 
(define-const var458 (Array Int Int) (jj_la1/-1475596563 var3995)) ; Statement: $r22 = r0.<freemarker.core.FMParser: int[] jj_la1> 
(define-const var0 Int (jj_gen/-1475596563 var3995)) ; Statement: $i14 = r0.<freemarker.core.FMParser: int jj_gen> 
(declare-const var458!1 (Array Int Int))
(assert (not (= var458!1 null-__Array__Int__Int__)))
(assert (= (select var458!1 34) var0)) ; Statement: $r22[34] = $i14 
(assert true) ; Non Conditional
(assert true)
;(assert (jj_consume_token/-1662239344 var3995 148)) ; Statement: specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(148) 

(declare-const var3995!1 var2513)
(declare-const var2745 Int)
(assert true)
(define-const var2345 var1441 (pushIteratorBlockContext/-1504331062 var3995!1)) ; Statement: $r26 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.FMParser$ParserIteratorBlockContext pushIteratorBlockContext()>() 
 ; Statement: if r23 == null goto $r27 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.TemplateElements MixedContentElements()>() 
(assert (= var988 null-var1105)) ; Cond: r23 == null 
(assert true)
(define-const var3933 var3354 (MixedContentElements/-1798446385 var3995!1)) ; Statement: $r27 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.TemplateElements MixedContentElements()>() 
 ; Statement: if r23 == null goto $i2 = staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: int access$300(freemarker.core.FMParser$ParserIteratorBlockContext)>($r26) 
(assert (= var988 null-var1105)) ; Cond: r23 == null 
(define-const var81 Int (var1441_access$300/-1143040697 var2345)) ; Statement: $i2 = staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: int access$300(freemarker.core.FMParser$ParserIteratorBlockContext)>($r26) 
 ; Statement: if $i2 == 2 goto specialinvoke r0.<freemarker.core.FMParser: void popIteratorBlockContext()>() 
(assert (not (= var81 2))) ; Negate: Cond: $i2 == 2  
(define-const var2187 var2573 var2573-init) ; Statement: $r35 = new freemarker.core.ParseException 
(define-const var675 var2242 (template/-1475596563 var3995!1)) ; Statement: $r9 = r0.<freemarker.core.FMParser: freemarker.template.Template template> 
(assert true)
;(assert (<init>/-549569735 var2187 "#list must have either \u0022as loopVar\u0022 parameter or nested #items that belongs to it." var675 var3869)) ; Statement: specialinvoke $r35.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.template.Template,freemarker.core.Token)>("#list must have either \"as loopVar\" parameter or nested #items that belongs to it.", $r9, r1) 

(declare-const var2187!1 var2573)
(declare-const var293 String)
(declare-const var675!1 var2242)
(declare-const var3869!1 var1105)
 ; Statement: throw $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {jj_consume_token/-1662239344=([freemarker.core.FMParser, int], freemarker.core.Token), Expression/1135211635=([freemarker.core.FMParser], freemarker.core.Expression), jj_ntk/-1475596563=([freemarker.core.FMParser], int), cast-from-Int-to-Int=([int], int), jj_ntk_f/1929880400=([freemarker.core.FMParser], int), jj_la1/-1475596563=([freemarker.core.FMParser], int[]), jj_gen/-1475596563=([freemarker.core.FMParser], int), pushIteratorBlockContext/-1504331062=([freemarker.core.FMParser], freemarker.core.FMParser$ParserIteratorBlockContext), MixedContentElements/-1798446385=([freemarker.core.FMParser], freemarker.core.TemplateElements), var1441_access$300/-1143040697=([freemarker.core.FMParser$ParserIteratorBlockContext], int), var2573-init=([], freemarker.core.ParseException), template/-1475596563=([freemarker.core.FMParser], freemarker.template.Template), <init>/-549569735=([freemarker.core.ParseException, java.lang.String, freemarker.template.Template, freemarker.core.Token], void)}
; {var2513=freemarker.core.FMParser, var3995=r0, var1105=freemarker.core.Token, var988=r23, var3837=r24, var348=freemarker.core.ElseOfList, var2676=r25, var3869=r1, var2946=freemarker.core.Expression, var2589=r2, var3638=$i0, var2485=$i19, var3103=$i15, var458=$r22, var0=$i14, var2745=148, var1441=freemarker.core.FMParser$ParserIteratorBlockContext, var2345=$r26, var3354=freemarker.core.TemplateElements, var3933=$r27, var81=$i2, var2573=freemarker.core.ParseException, var2187=$r35, var2242=freemarker.template.Template, var675=$r9, var293="#list must have either \"as loopVar\" parameter or nested #items that belongs to it."}
; {freemarker.core.FMParser=var2513, r0=var3995, freemarker.core.Token=var1105, r23=var988, r24=var3837, freemarker.core.ElseOfList=var348, r25=var2676, r1=var3869, freemarker.core.Expression=var2946, r2=var2589, $i0=var3638, $i19=var2485, $i15=var3103, $r22=var458, $i14=var0, 148=var2745, freemarker.core.FMParser$ParserIteratorBlockContext=var1441, $r26=var2345, freemarker.core.TemplateElements=var3354, $r27=var3933, $i2=var81, freemarker.core.ParseException=var2573, $r35=var2187, freemarker.template.Template=var2242, $r9=var675, "#list must have either \"as loopVar\" parameter or nested #items that belongs to it."=var293}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.core.FMParser;	r23 = null;	r24 = null;	r25 = null;	r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(10);	r2 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.Expression Expression()>();	$i0 = r0.<freemarker.core.FMParser: int jj_ntk>;	$i19 = (int) -1;	if $i0 != $i19 goto $i15 = r0.<freemarker.core.FMParser: int jj_ntk>;	$i15 = specialinvoke r0.<freemarker.core.FMParser: int jj_ntk_f()>();	goto [?= (branch)];	lookupswitch($i15) {     case 140: goto specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(140);     default: goto $r22 = r0.<freemarker.core.FMParser: int[] jj_la1>; };	$r22 = r0.<freemarker.core.FMParser: int[] jj_la1>;	$i14 = r0.<freemarker.core.FMParser: int jj_gen>;	$r22[34] = $i14;	specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(148);	$r26 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.FMParser$ParserIteratorBlockContext pushIteratorBlockContext()>();	if r23 == null goto $r27 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.TemplateElements MixedContentElements()>();	$r27 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.TemplateElements MixedContentElements()>();	if r23 == null goto $i2 = staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: int access$300(freemarker.core.FMParser$ParserIteratorBlockContext)>($r26);	$i2 = staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: int access$300(freemarker.core.FMParser$ParserIteratorBlockContext)>($r26);	if $i2 == 2 goto specialinvoke r0.<freemarker.core.FMParser: void popIteratorBlockContext()>();	$r35 = new freemarker.core.ParseException;	$r9 = r0.<freemarker.core.FMParser: freemarker.template.Template template>;	specialinvoke $r35.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.template.Template,freemarker.core.Token)>("#list must have either \"as loopVar\" parameter or nested #items that belongs to it.", $r9, r1);	throw $r35
;block_num 8
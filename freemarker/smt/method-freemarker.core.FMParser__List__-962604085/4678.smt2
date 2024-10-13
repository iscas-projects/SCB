(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2243 0)
(declare-sort var603 0)
(declare-sort var2932 0)
(declare-sort var1488 0)
(declare-sort var707 0)
(declare-sort var190 0)
(declare-sort var1923 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jj_consume_token/-1662239344 (var2243 Int) var603)
(declare-fun Expression/1135211635 (var2243) var1488)
(declare-fun jj_ntk/-1475596563 (var2243) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun jj_la1/-1475596563 (var2243) (Array Int Int))
(declare-fun jj_gen/-1475596563 (var2243) Int)
(declare-fun pushIteratorBlockContext/-1504331062 (var2243) var707)
(declare-fun image/-1758362606 (var603) String)
(declare-fun var707_access$102/-813458486 (var707 String) String)
(declare-fun breakableDirectiveNesting/-1475596563 (var2243) Int)
(declare-fun continuableDirectiveNesting/-1475596563 (var2243) Int)
(declare-fun var707_access$202/-369847063 (var707 String) String)
(declare-fun var707_access$402/1202721581 (var707 Bool) Bool)
(declare-fun var707_access$200/100838128 (var707) String)
(declare-fun var707_access$100/-529620497 (var707) String)
(declare-fun var190-init () var190)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun template/-1475596563 (var2243) var1923)
(declare-fun <init>/-549569735 (var190 String var1923 var603) void)
(declare-const null-var2243 var2243)
(declare-const null-var603 var603)
(declare-const null-var2932 var2932)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3246 var2243) ; Statement: r0 := @this: freemarker.core.FMParser 
(assert (not (= var3246 null-var2243)))
(define-const var3513 var603 null-var603) ; Statement: r23 = null 
(define-const var177 var603 null-var603) ; Statement: r24 = null 
(define-const var12 var2932 null-var2932) ; Statement: r25 = null 
(assert true)
(define-const var22 var603 (jj_consume_token/-1662239344 var3246 10)) ; Statement: r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(10) 
(assert true)
(define-const var436 var1488 (Expression/1135211635 var3246)) ; Statement: r2 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.Expression Expression()>() 
(define-const var1943 Int (jj_ntk/-1475596563 var3246)) ; Statement: $i0 = r0.<freemarker.core.FMParser: int jj_ntk> 
(define-const var1053 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i19 = (int) -1 
 ; Statement: if $i0 != $i19 goto $i15 = r0.<freemarker.core.FMParser: int jj_ntk> 
(assert (not (= var1943 var1053))) ; Cond: $i0 != $i19 
(define-const var3352 Int (jj_ntk/-1475596563 var3246)) ; Statement: $i15 = r0.<freemarker.core.FMParser: int jj_ntk> 
(assert true) ; Non Conditional
 ; Statement: lookupswitch($i15) {     case 140: goto specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(140);     default: goto $r22 = r0.<freemarker.core.FMParser: int[] jj_la1>; } 
(assert (and (not (= var3352 140)) true)) ; Intersect: Negate: Cond: $i15 == 140   and Non Conditional 
(define-const var1335 (Array Int Int) (jj_la1/-1475596563 var3246)) ; Statement: $r22 = r0.<freemarker.core.FMParser: int[] jj_la1> 
(define-const var2215 Int (jj_gen/-1475596563 var3246)) ; Statement: $i14 = r0.<freemarker.core.FMParser: int jj_gen> 
(declare-const var1335!1 (Array Int Int))
(assert (not (= var1335!1 null-__Array__Int__Int__)))
(assert (= (select var1335!1 34) var2215)) ; Statement: $r22[34] = $i14 
(assert true) ; Non Conditional
(assert true)
;(assert (jj_consume_token/-1662239344 var3246 148)) ; Statement: specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(148) 

(declare-const var3246!1 var2243)
(declare-const var2419 Int)
(assert true)
(define-const var3088 var707 (pushIteratorBlockContext/-1504331062 var3246!1)) ; Statement: $r26 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.FMParser$ParserIteratorBlockContext pushIteratorBlockContext()>() 
 ; Statement: if r23 == null goto $r27 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.TemplateElements MixedContentElements()>() 
(assert (not (= var3513 null-var603))) ; Negate: Cond: r23 == null  
(define-const var3728 String (image/-1758362606 var3513)) ; Statement: $r10 = r23.<freemarker.core.Token: java.lang.String image> 
;(assert (var707_access$102/-813458486 var3088 var3728)) ; Statement: staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: java.lang.String access$102(freemarker.core.FMParser$ParserIteratorBlockContext,java.lang.String)>($r26, $r10) 

(declare-const var3088!1 var707)
(declare-const var3728!1 String)
(define-const var893 Int (breakableDirectiveNesting/-1475596563 var3246!1)) ; Statement: $i9 = r0.<freemarker.core.FMParser: int breakableDirectiveNesting> 
(define-const var682 Int (+ var893 1)) ; Statement: $i10 = $i9 + 1 
(declare-const var3246!2 var2243)
(assert (not (= var3246!2 null-var2243)))
(assert (= (breakableDirectiveNesting/-1475596563 var3246!2) var682)) ; Statement: r0.<freemarker.core.FMParser: int breakableDirectiveNesting> = $i10 
(define-const var1347 Int (continuableDirectiveNesting/-1475596563 var3246!2)) ; Statement: $i11 = r0.<freemarker.core.FMParser: int continuableDirectiveNesting> 
(define-const var1947 Int (+ var1347 1)) ; Statement: $i12 = $i11 + 1 
(declare-const var3246!3 var2243)
(assert (not (= var3246!3 null-var2243)))
(assert (= (continuableDirectiveNesting/-1475596563 var3246!3) var1947)) ; Statement: r0.<freemarker.core.FMParser: int continuableDirectiveNesting> = $i12 
 ; Statement: if r24 == null goto $r27 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.TemplateElements MixedContentElements()>() 
(assert (not (= var177 null-var603))) ; Negate: Cond: r24 == null  
(define-const var354 String (image/-1758362606 var177)) ; Statement: $r11 = r24.<freemarker.core.Token: java.lang.String image> 
;(assert (var707_access$202/-369847063 var3088!1 var354)) ; Statement: staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: java.lang.String access$202(freemarker.core.FMParser$ParserIteratorBlockContext,java.lang.String)>($r26, $r11) 

(declare-const var3088!2 var707)
(declare-const var354!1 String)
;(assert (var707_access$402/1202721581 var3088!2 (ite (= 1 1) true false))) ; Statement: staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: boolean access$402(freemarker.core.FMParser$ParserIteratorBlockContext,boolean)>($r26, 1) 

(declare-const var3088!3 var707)
(declare-const var1070 Int)
(define-const var2964 String (var707_access$200/100838128 var3088!3)) ; Statement: $r13 = staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: java.lang.String access$200(freemarker.core.FMParser$ParserIteratorBlockContext)>($r26) 
(define-const var297 String (var707_access$100/-529620497 var3088!3)) ; Statement: $r12 = staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: java.lang.String access$100(freemarker.core.FMParser$ParserIteratorBlockContext)>($r26) 
(assert true)
(define-const var358 Bool (= var2964 var297)) ; Statement: $z0 = virtualinvoke $r13.<java.lang.String: boolean equals(java.lang.Object)>($r12) 
 ; Statement: if $z0 == 0 goto $r27 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.TemplateElements MixedContentElements()>() 
(assert (not (= (ite var358 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1952 var190 var190-init) ; Statement: $r34 = new freemarker.core.ParseException 
(define-const var1420 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1420)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1420!1 String)
(assert (= var1420!1 ""))
(assert true)
(define-const var953 String (append/672562846 var1420!1 "The key and value loop variable names must differ, but both were: ")) ; Statement: $r17 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The key and value loop variable names must differ, but both were: ") 
(declare-const var1420!2 String)
(assert (= var1420!2 (str.++ var1420!1 "The key and value loop variable names must differ, but both were: ")))
(define-const var3724 String (var707_access$100/-529620497 var3088!3)) ; Statement: $r16 = staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: java.lang.String access$100(freemarker.core.FMParser$ParserIteratorBlockContext)>($r26) 
(assert true)
(define-const var1980 String (append/672562846 var953 var3724)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var953!1 String)
(assert (= var953!1 (str.++ var953 var3724)))
(assert true)
(define-const var1027 String (toString/-2075883882 var1980)) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2439 var1923 (template/-1475596563 var3246!3)) ; Statement: $r19 = r0.<freemarker.core.FMParser: freemarker.template.Template template> 
(assert true)
;(assert (<init>/-549569735 var1952 var1027 var2439 var22)) ; Statement: specialinvoke $r34.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.template.Template,freemarker.core.Token)>($r20, $r19, r1) 

(declare-const var1952!1 var190)
(declare-const var1027!1 String)
(declare-const var2439!1 var1923)
(declare-const var22!1 var603)
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {jj_consume_token/-1662239344=([freemarker.core.FMParser, int], freemarker.core.Token), Expression/1135211635=([freemarker.core.FMParser], freemarker.core.Expression), jj_ntk/-1475596563=([freemarker.core.FMParser], int), cast-from-Int-to-Int=([int], int), jj_la1/-1475596563=([freemarker.core.FMParser], int[]), jj_gen/-1475596563=([freemarker.core.FMParser], int), pushIteratorBlockContext/-1504331062=([freemarker.core.FMParser], freemarker.core.FMParser$ParserIteratorBlockContext), image/-1758362606=([freemarker.core.Token], java.lang.String), var707_access$102/-813458486=([freemarker.core.FMParser$ParserIteratorBlockContext, java.lang.String], java.lang.String), breakableDirectiveNesting/-1475596563=([freemarker.core.FMParser], int), continuableDirectiveNesting/-1475596563=([freemarker.core.FMParser], int), var707_access$202/-369847063=([freemarker.core.FMParser$ParserIteratorBlockContext, java.lang.String], java.lang.String), var707_access$402/1202721581=([freemarker.core.FMParser$ParserIteratorBlockContext, boolean], boolean), var707_access$200/100838128=([freemarker.core.FMParser$ParserIteratorBlockContext], java.lang.String), var707_access$100/-529620497=([freemarker.core.FMParser$ParserIteratorBlockContext], java.lang.String), var190-init=([], freemarker.core.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), template/-1475596563=([freemarker.core.FMParser], freemarker.template.Template), <init>/-549569735=([freemarker.core.ParseException, java.lang.String, freemarker.template.Template, freemarker.core.Token], void)}
; {var2243=freemarker.core.FMParser, var3246=r0, var603=freemarker.core.Token, var3513=r23, var177=r24, var2932=freemarker.core.ElseOfList, var12=r25, var22=r1, var1488=freemarker.core.Expression, var436=r2, var1943=$i0, var1053=$i19, var3352=$i15, var1335=$r22, var2215=$i14, var2419=148, var707=freemarker.core.FMParser$ParserIteratorBlockContext, var3088=$r26, var3728=$r10, var893=$i9, var682=$i10, var1347=$i11, var1947=$i12, var354=$r11, var1070=1, var2964=$r13, var297=$r12, var358=$z0, var190=freemarker.core.ParseException, var1952=$r34, var1420=$r33, var953=$r17, var3724=$r16, var1980=$r18, var1027=$r20, var1923=freemarker.template.Template, var2439=$r19}
; {freemarker.core.FMParser=var2243, r0=var3246, freemarker.core.Token=var603, r23=var3513, r24=var177, freemarker.core.ElseOfList=var2932, r25=var12, r1=var22, freemarker.core.Expression=var1488, r2=var436, $i0=var1943, $i19=var1053, $i15=var3352, $r22=var1335, $i14=var2215, 148=var2419, freemarker.core.FMParser$ParserIteratorBlockContext=var707, $r26=var3088, $r10=var3728, $i9=var893, $i10=var682, $i11=var1347, $i12=var1947, $r11=var354, 1=var1070, $r13=var2964, $r12=var297, $z0=var358, freemarker.core.ParseException=var190, $r34=var1952, $r33=var1420, $r17=var953, $r16=var3724, $r18=var1980, $r20=var1027, freemarker.template.Template=var1923, $r19=var2439}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.FMParser;	r23 = null;	r24 = null;	r25 = null;	r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(10);	r2 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.Expression Expression()>();	$i0 = r0.<freemarker.core.FMParser: int jj_ntk>;	$i19 = (int) -1;	if $i0 != $i19 goto $i15 = r0.<freemarker.core.FMParser: int jj_ntk>;	$i15 = r0.<freemarker.core.FMParser: int jj_ntk>;	lookupswitch($i15) {     case 140: goto specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(140);     default: goto $r22 = r0.<freemarker.core.FMParser: int[] jj_la1>; };	$r22 = r0.<freemarker.core.FMParser: int[] jj_la1>;	$i14 = r0.<freemarker.core.FMParser: int jj_gen>;	$r22[34] = $i14;	specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(148);	$r26 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.FMParser$ParserIteratorBlockContext pushIteratorBlockContext()>();	if r23 == null goto $r27 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.TemplateElements MixedContentElements()>();	$r10 = r23.<freemarker.core.Token: java.lang.String image>;	staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: java.lang.String access$102(freemarker.core.FMParser$ParserIteratorBlockContext,java.lang.String)>($r26, $r10);	$i9 = r0.<freemarker.core.FMParser: int breakableDirectiveNesting>;	$i10 = $i9 + 1;	r0.<freemarker.core.FMParser: int breakableDirectiveNesting> = $i10;	$i11 = r0.<freemarker.core.FMParser: int continuableDirectiveNesting>;	$i12 = $i11 + 1;	r0.<freemarker.core.FMParser: int continuableDirectiveNesting> = $i12;	if r24 == null goto $r27 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.TemplateElements MixedContentElements()>();	$r11 = r24.<freemarker.core.Token: java.lang.String image>;	staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: java.lang.String access$202(freemarker.core.FMParser$ParserIteratorBlockContext,java.lang.String)>($r26, $r11);	staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: boolean access$402(freemarker.core.FMParser$ParserIteratorBlockContext,boolean)>($r26, 1);	$r13 = staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: java.lang.String access$200(freemarker.core.FMParser$ParserIteratorBlockContext)>($r26);	$r12 = staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: java.lang.String access$100(freemarker.core.FMParser$ParserIteratorBlockContext)>($r26);	$z0 = virtualinvoke $r13.<java.lang.String: boolean equals(java.lang.Object)>($r12);	if $z0 == 0 goto $r27 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.TemplateElements MixedContentElements()>();	$r34 = new freemarker.core.ParseException;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The key and value loop variable names must differ, but both were: ");	$r16 = staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: java.lang.String access$100(freemarker.core.FMParser$ParserIteratorBlockContext)>($r26);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	$r19 = r0.<freemarker.core.FMParser: freemarker.template.Template template>;	specialinvoke $r34.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.template.Template,freemarker.core.Token)>($r20, $r19, r1);	throw $r34
;block_num 8
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var462 0)
(declare-sort var868 0)
(declare-sort var814 0)
(declare-sort var1647 0)
(declare-sort var3779 0)
(declare-sort var3786 0)
(declare-sort var1113 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jj_consume_token/-1662239344 (var462 Int) var868)
(declare-fun Expression/1135211635 (var462) var1647)
(declare-fun jj_ntk/-1475596563 (var462) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun jj_ntk_f/1929880400 (var462) Int)
(declare-fun jj_la1/-1475596563 (var462) (Array Int Int))
(declare-fun jj_gen/-1475596563 (var462) Int)
(declare-fun pushIteratorBlockContext/-1504331062 (var462) var3779)
(declare-fun image/-1758362606 (var868) String)
(declare-fun var3779_access$102/-813458486 (var3779 String) String)
(declare-fun breakableDirectiveNesting/-1475596563 (var462) Int)
(declare-fun continuableDirectiveNesting/-1475596563 (var462) Int)
(declare-fun var3779_access$202/-369847063 (var3779 String) String)
(declare-fun var3779_access$402/1202721581 (var3779 Bool) Bool)
(declare-fun var3779_access$200/100838128 (var3779) String)
(declare-fun var3779_access$100/-529620497 (var3779) String)
(declare-fun var3786-init () var3786)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun template/-1475596563 (var462) var1113)
(declare-fun <init>/-549569735 (var3786 String var1113 var868) void)
(declare-const null-var462 var462)
(declare-const null-var868 var868)
(declare-const null-var814 var814)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3816 var462) ; Statement: r0 := @this: freemarker.core.FMParser 
(assert (not (= var3816 null-var462)))
(define-const var2441 var868 null-var868) ; Statement: r23 = null 
(define-const var1584 var868 null-var868) ; Statement: r24 = null 
(define-const var176 var814 null-var814) ; Statement: r25 = null 
(assert true)
(define-const var1487 var868 (jj_consume_token/-1662239344 var3816 10)) ; Statement: r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(10) 
(assert true)
(define-const var2251 var1647 (Expression/1135211635 var3816)) ; Statement: r2 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.Expression Expression()>() 
(define-const var720 Int (jj_ntk/-1475596563 var3816)) ; Statement: $i0 = r0.<freemarker.core.FMParser: int jj_ntk> 
(define-const var2948 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i19 = (int) -1 
 ; Statement: if $i0 != $i19 goto $i15 = r0.<freemarker.core.FMParser: int jj_ntk> 
(assert (not (not (= var720 var2948)))) ; Negate: Cond: $i0 != $i19  
(assert true)
(define-const var2863 Int (jj_ntk_f/1929880400 var3816)) ; Statement: $i15 = specialinvoke r0.<freemarker.core.FMParser: int jj_ntk_f()>() 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: lookupswitch($i15) {     case 140: goto specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(140);     default: goto $r22 = r0.<freemarker.core.FMParser: int[] jj_la1>; } 
(assert (and (not (= var2863 140)) true)) ; Intersect: Negate: Cond: $i15 == 140   and Non Conditional 
(define-const var3894 (Array Int Int) (jj_la1/-1475596563 var3816)) ; Statement: $r22 = r0.<freemarker.core.FMParser: int[] jj_la1> 
(define-const var2194 Int (jj_gen/-1475596563 var3816)) ; Statement: $i14 = r0.<freemarker.core.FMParser: int jj_gen> 
(declare-const var3894!1 (Array Int Int))
(assert (not (= var3894!1 null-__Array__Int__Int__)))
(assert (= (select var3894!1 34) var2194)) ; Statement: $r22[34] = $i14 
(assert true) ; Non Conditional
(assert true)
;(assert (jj_consume_token/-1662239344 var3816 148)) ; Statement: specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(148) 

(declare-const var3816!1 var462)
(declare-const var367 Int)
(assert true)
(define-const var3541 var3779 (pushIteratorBlockContext/-1504331062 var3816!1)) ; Statement: $r26 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.FMParser$ParserIteratorBlockContext pushIteratorBlockContext()>() 
 ; Statement: if r23 == null goto $r27 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.TemplateElements MixedContentElements()>() 
(assert (not (= var2441 null-var868))) ; Negate: Cond: r23 == null  
(define-const var2606 String (image/-1758362606 var2441)) ; Statement: $r10 = r23.<freemarker.core.Token: java.lang.String image> 
;(assert (var3779_access$102/-813458486 var3541 var2606)) ; Statement: staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: java.lang.String access$102(freemarker.core.FMParser$ParserIteratorBlockContext,java.lang.String)>($r26, $r10) 

(declare-const var3541!1 var3779)
(declare-const var2606!1 String)
(define-const var1770 Int (breakableDirectiveNesting/-1475596563 var3816!1)) ; Statement: $i9 = r0.<freemarker.core.FMParser: int breakableDirectiveNesting> 
(define-const var1982 Int (+ var1770 1)) ; Statement: $i10 = $i9 + 1 
(declare-const var3816!2 var462)
(assert (not (= var3816!2 null-var462)))
(assert (= (breakableDirectiveNesting/-1475596563 var3816!2) var1982)) ; Statement: r0.<freemarker.core.FMParser: int breakableDirectiveNesting> = $i10 
(define-const var2954 Int (continuableDirectiveNesting/-1475596563 var3816!2)) ; Statement: $i11 = r0.<freemarker.core.FMParser: int continuableDirectiveNesting> 
(define-const var3470 Int (+ var2954 1)) ; Statement: $i12 = $i11 + 1 
(declare-const var3816!3 var462)
(assert (not (= var3816!3 null-var462)))
(assert (= (continuableDirectiveNesting/-1475596563 var3816!3) var3470)) ; Statement: r0.<freemarker.core.FMParser: int continuableDirectiveNesting> = $i12 
 ; Statement: if r24 == null goto $r27 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.TemplateElements MixedContentElements()>() 
(assert (not (= var1584 null-var868))) ; Negate: Cond: r24 == null  
(define-const var3598 String (image/-1758362606 var1584)) ; Statement: $r11 = r24.<freemarker.core.Token: java.lang.String image> 
;(assert (var3779_access$202/-369847063 var3541!1 var3598)) ; Statement: staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: java.lang.String access$202(freemarker.core.FMParser$ParserIteratorBlockContext,java.lang.String)>($r26, $r11) 

(declare-const var3541!2 var3779)
(declare-const var3598!1 String)
;(assert (var3779_access$402/1202721581 var3541!2 (ite (= 1 1) true false))) ; Statement: staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: boolean access$402(freemarker.core.FMParser$ParserIteratorBlockContext,boolean)>($r26, 1) 

(declare-const var3541!3 var3779)
(declare-const var1215 Int)
(define-const var1689 String (var3779_access$200/100838128 var3541!3)) ; Statement: $r13 = staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: java.lang.String access$200(freemarker.core.FMParser$ParserIteratorBlockContext)>($r26) 
(define-const var2847 String (var3779_access$100/-529620497 var3541!3)) ; Statement: $r12 = staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: java.lang.String access$100(freemarker.core.FMParser$ParserIteratorBlockContext)>($r26) 
(assert true)
(define-const var706 Bool (= var1689 var2847)) ; Statement: $z0 = virtualinvoke $r13.<java.lang.String: boolean equals(java.lang.Object)>($r12) 
 ; Statement: if $z0 == 0 goto $r27 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.TemplateElements MixedContentElements()>() 
(assert (not (= (ite var706 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var606 var3786 var3786-init) ; Statement: $r34 = new freemarker.core.ParseException 
(define-const var3007 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3007)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3007!1 String)
(assert (= var3007!1 ""))
(assert true)
(define-const var3600 String (append/672562846 var3007!1 "The key and value loop variable names must differ, but both were: ")) ; Statement: $r17 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The key and value loop variable names must differ, but both were: ") 
(declare-const var3007!2 String)
(assert (= var3007!2 (str.++ var3007!1 "The key and value loop variable names must differ, but both were: ")))
(define-const var2966 String (var3779_access$100/-529620497 var3541!3)) ; Statement: $r16 = staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: java.lang.String access$100(freemarker.core.FMParser$ParserIteratorBlockContext)>($r26) 
(assert true)
(define-const var865 String (append/672562846 var3600 var2966)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var3600!1 String)
(assert (= var3600!1 (str.++ var3600 var2966)))
(assert true)
(define-const var1909 String (toString/-2075883882 var865)) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2103 var1113 (template/-1475596563 var3816!3)) ; Statement: $r19 = r0.<freemarker.core.FMParser: freemarker.template.Template template> 
(assert true)
;(assert (<init>/-549569735 var606 var1909 var2103 var1487)) ; Statement: specialinvoke $r34.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.template.Template,freemarker.core.Token)>($r20, $r19, r1) 

(declare-const var606!1 var3786)
(declare-const var1909!1 String)
(declare-const var2103!1 var1113)
(declare-const var1487!1 var868)
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {jj_consume_token/-1662239344=([freemarker.core.FMParser, int], freemarker.core.Token), Expression/1135211635=([freemarker.core.FMParser], freemarker.core.Expression), jj_ntk/-1475596563=([freemarker.core.FMParser], int), cast-from-Int-to-Int=([int], int), jj_ntk_f/1929880400=([freemarker.core.FMParser], int), jj_la1/-1475596563=([freemarker.core.FMParser], int[]), jj_gen/-1475596563=([freemarker.core.FMParser], int), pushIteratorBlockContext/-1504331062=([freemarker.core.FMParser], freemarker.core.FMParser$ParserIteratorBlockContext), image/-1758362606=([freemarker.core.Token], java.lang.String), var3779_access$102/-813458486=([freemarker.core.FMParser$ParserIteratorBlockContext, java.lang.String], java.lang.String), breakableDirectiveNesting/-1475596563=([freemarker.core.FMParser], int), continuableDirectiveNesting/-1475596563=([freemarker.core.FMParser], int), var3779_access$202/-369847063=([freemarker.core.FMParser$ParserIteratorBlockContext, java.lang.String], java.lang.String), var3779_access$402/1202721581=([freemarker.core.FMParser$ParserIteratorBlockContext, boolean], boolean), var3779_access$200/100838128=([freemarker.core.FMParser$ParserIteratorBlockContext], java.lang.String), var3779_access$100/-529620497=([freemarker.core.FMParser$ParserIteratorBlockContext], java.lang.String), var3786-init=([], freemarker.core.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), template/-1475596563=([freemarker.core.FMParser], freemarker.template.Template), <init>/-549569735=([freemarker.core.ParseException, java.lang.String, freemarker.template.Template, freemarker.core.Token], void)}
; {var462=freemarker.core.FMParser, var3816=r0, var868=freemarker.core.Token, var2441=r23, var1584=r24, var814=freemarker.core.ElseOfList, var176=r25, var1487=r1, var1647=freemarker.core.Expression, var2251=r2, var720=$i0, var2948=$i19, var2863=$i15, var3894=$r22, var2194=$i14, var367=148, var3779=freemarker.core.FMParser$ParserIteratorBlockContext, var3541=$r26, var2606=$r10, var1770=$i9, var1982=$i10, var2954=$i11, var3470=$i12, var3598=$r11, var1215=1, var1689=$r13, var2847=$r12, var706=$z0, var3786=freemarker.core.ParseException, var606=$r34, var3007=$r33, var3600=$r17, var2966=$r16, var865=$r18, var1909=$r20, var1113=freemarker.template.Template, var2103=$r19}
; {freemarker.core.FMParser=var462, r0=var3816, freemarker.core.Token=var868, r23=var2441, r24=var1584, freemarker.core.ElseOfList=var814, r25=var176, r1=var1487, freemarker.core.Expression=var1647, r2=var2251, $i0=var720, $i19=var2948, $i15=var2863, $r22=var3894, $i14=var2194, 148=var367, freemarker.core.FMParser$ParserIteratorBlockContext=var3779, $r26=var3541, $r10=var2606, $i9=var1770, $i10=var1982, $i11=var2954, $i12=var3470, $r11=var3598, 1=var1215, $r13=var1689, $r12=var2847, $z0=var706, freemarker.core.ParseException=var3786, $r34=var606, $r33=var3007, $r17=var3600, $r16=var2966, $r18=var865, $r20=var1909, freemarker.template.Template=var1113, $r19=var2103}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.FMParser;	r23 = null;	r24 = null;	r25 = null;	r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(10);	r2 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.Expression Expression()>();	$i0 = r0.<freemarker.core.FMParser: int jj_ntk>;	$i19 = (int) -1;	if $i0 != $i19 goto $i15 = r0.<freemarker.core.FMParser: int jj_ntk>;	$i15 = specialinvoke r0.<freemarker.core.FMParser: int jj_ntk_f()>();	goto [?= (branch)];	lookupswitch($i15) {     case 140: goto specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(140);     default: goto $r22 = r0.<freemarker.core.FMParser: int[] jj_la1>; };	$r22 = r0.<freemarker.core.FMParser: int[] jj_la1>;	$i14 = r0.<freemarker.core.FMParser: int jj_gen>;	$r22[34] = $i14;	specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(148);	$r26 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.FMParser$ParserIteratorBlockContext pushIteratorBlockContext()>();	if r23 == null goto $r27 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.TemplateElements MixedContentElements()>();	$r10 = r23.<freemarker.core.Token: java.lang.String image>;	staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: java.lang.String access$102(freemarker.core.FMParser$ParserIteratorBlockContext,java.lang.String)>($r26, $r10);	$i9 = r0.<freemarker.core.FMParser: int breakableDirectiveNesting>;	$i10 = $i9 + 1;	r0.<freemarker.core.FMParser: int breakableDirectiveNesting> = $i10;	$i11 = r0.<freemarker.core.FMParser: int continuableDirectiveNesting>;	$i12 = $i11 + 1;	r0.<freemarker.core.FMParser: int continuableDirectiveNesting> = $i12;	if r24 == null goto $r27 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.TemplateElements MixedContentElements()>();	$r11 = r24.<freemarker.core.Token: java.lang.String image>;	staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: java.lang.String access$202(freemarker.core.FMParser$ParserIteratorBlockContext,java.lang.String)>($r26, $r11);	staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: boolean access$402(freemarker.core.FMParser$ParserIteratorBlockContext,boolean)>($r26, 1);	$r13 = staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: java.lang.String access$200(freemarker.core.FMParser$ParserIteratorBlockContext)>($r26);	$r12 = staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: java.lang.String access$100(freemarker.core.FMParser$ParserIteratorBlockContext)>($r26);	$z0 = virtualinvoke $r13.<java.lang.String: boolean equals(java.lang.Object)>($r12);	if $z0 == 0 goto $r27 = virtualinvoke r0.<freemarker.core.FMParser: freemarker.core.TemplateElements MixedContentElements()>();	$r34 = new freemarker.core.ParseException;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The key and value loop variable names must differ, but both were: ");	$r16 = staticinvoke <freemarker.core.FMParser$ParserIteratorBlockContext: java.lang.String access$100(freemarker.core.FMParser$ParserIteratorBlockContext)>($r26);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	$r19 = r0.<freemarker.core.FMParser: freemarker.template.Template template>;	specialinvoke $r34.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.template.Template,freemarker.core.Token)>($r20, $r19, r1);	throw $r34
;block_num 8
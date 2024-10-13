(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1404 0)
(declare-sort var1885 0)
(declare-sort var990 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun jj_ntk/-1475596563 (var1404) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun jj_la1/-1475596563 (var1404) (Array Int Int))
(declare-fun jj_gen/-1475596563 (var1404) Int)
(declare-fun jj_consume_token/-1662239344 (var1404 Int) var1885)
(declare-fun var990-init () var990)
(declare-fun <init>/303744740 (var990) void)
(declare-const null-var1404 var1404)
(declare-const null-var1885 var1885)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var565 var1404) ; Statement: r1 := @this: freemarker.core.FMParser 
(assert (not (= var565 null-var1404)))
(define-const var3936 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3936)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3936!1 String)
(assert (= var3936!1 ""))
(define-const var3215 var1885 null-var1885) ; Statement: r6 = null 
(define-const var2939 var1885 null-var1885) ; Statement: r7 = null 
(assert true) ; Non Conditional
(define-const var2828 Int (jj_ntk/-1475596563 var565)) ; Statement: $i0 = r1.<freemarker.core.FMParser: int jj_ntk> 
(define-const var1232 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: if $i0 != $i8 goto $i5 = r1.<freemarker.core.FMParser: int jj_ntk> 
(assert (not (= var2828 var1232))) ; Cond: $i0 != $i8 
(define-const var2862 Int (jj_ntk/-1475596563 var565)) ; Statement: $i5 = r1.<freemarker.core.FMParser: int jj_ntk> 
(assert true) ; Non Conditional
 ; Statement: tableswitch($i5) {     case 79: goto r8 = specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(79);     case 80: goto r8 = specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(80);     case 81: goto r8 = specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(81);     default: goto $r4 = r1.<freemarker.core.FMParser: int[] jj_la1>; } 
(assert (and (not (= var2862 81)) (and (not (= var2862 80)) (and (not (= var2862 79)) true)))) ; Intersect: Negate: Cond: $i5 == 81   and Intersect: Negate: Cond: $i5 == 80   and Intersect: Negate: Cond: $i5 == 79   and Non Conditional   
(define-const var1601 (Array Int Int) (jj_la1/-1475596563 var565)) ; Statement: $r4 = r1.<freemarker.core.FMParser: int[] jj_la1> 
(define-const var3165 Int (jj_gen/-1475596563 var565)) ; Statement: $i4 = r1.<freemarker.core.FMParser: int jj_gen> 
(declare-const var1601!1 (Array Int Int))
(assert (not (= var1601!1 null-__Array__Int__Int__)))
(assert (= (select var1601!1 95) var3165)) ; Statement: $r4[95] = $i4 
(define-const var3775 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
(assert true)
;(assert (jj_consume_token/-1662239344 var565 var3775)) ; Statement: specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>($i10) 

(declare-const var565!1 var1404)
(declare-const var3775!1 Int)
(define-const var2421 var990 var990-init) ; Statement: $r14 = new freemarker.core.ParseException 
(assert true)
;(assert (<init>/303744740 var2421)) ; Statement: specialinvoke $r14.<freemarker.core.ParseException: void <init>()>() 

(declare-const var2421!1 var990)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), jj_ntk/-1475596563=([freemarker.core.FMParser], int), cast-from-Int-to-Int=([int], int), jj_la1/-1475596563=([freemarker.core.FMParser], int[]), jj_gen/-1475596563=([freemarker.core.FMParser], int), jj_consume_token/-1662239344=([freemarker.core.FMParser, int], freemarker.core.Token), var990-init=([], freemarker.core.ParseException), <init>/303744740=([freemarker.core.ParseException], void)}
; {var1404=freemarker.core.FMParser, var565=r1, var3936=$r13, var1885=freemarker.core.Token, var3215=r6, var2939=r7, var2828=$i0, var1232=$i8, var2862=$i5, var1601=$r4, var3165=$i4, var3775=$i10, var990=freemarker.core.ParseException, var2421=$r14}
; {freemarker.core.FMParser=var1404, r1=var565, $r13=var3936, freemarker.core.Token=var1885, r6=var3215, r7=var2939, $i0=var2828, $i8=var1232, $i5=var2862, $r4=var1601, $i4=var3165, $i10=var3775, freemarker.core.ParseException=var990, $r14=var2421}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: freemarker.core.FMParser;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	r6 = null;	r7 = null;	$i0 = r1.<freemarker.core.FMParser: int jj_ntk>;	$i8 = (int) -1;	if $i0 != $i8 goto $i5 = r1.<freemarker.core.FMParser: int jj_ntk>;	$i5 = r1.<freemarker.core.FMParser: int jj_ntk>;	tableswitch($i5) {     case 79: goto r8 = specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(79);     case 80: goto r8 = specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(80);     case 81: goto r8 = specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(81);     default: goto $r4 = r1.<freemarker.core.FMParser: int[] jj_la1>; };	$r4 = r1.<freemarker.core.FMParser: int[] jj_la1>;	$i4 = r1.<freemarker.core.FMParser: int jj_gen>;	$r4[95] = $i4;	$i10 = (int) -1;	specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>($i10);	$r14 = new freemarker.core.ParseException;	specialinvoke $r14.<freemarker.core.ParseException: void <init>()>();	throw $r14
;block_num 5
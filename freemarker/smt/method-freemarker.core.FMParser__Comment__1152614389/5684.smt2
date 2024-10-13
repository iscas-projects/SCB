(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var785 0)
(declare-sort var2072 0)
(declare-sort var3181 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun jj_ntk/-1475596563 (var785) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun jj_ntk_f/1929880400 (var785) Int)
(declare-fun jj_la1/-1475596563 (var785) (Array Int Int))
(declare-fun jj_gen/-1475596563 (var785) Int)
(declare-fun jj_consume_token/-1662239344 (var785 Int) var3181)
(declare-fun var2072-init () var2072)
(declare-fun <init>/303744740 (var2072) void)
(declare-const null-var785 var785)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1402 var785) ; Statement: r1 := @this: freemarker.core.FMParser 
(assert (not (= var1402 null-var785)))
(define-const var47 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var47)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var47!1 String)
(assert (= var47!1 ""))
(define-const var112 Int (jj_ntk/-1475596563 var1402)) ; Statement: $i0 = r1.<freemarker.core.FMParser: int jj_ntk> 
(define-const var691 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i0 != $i4 goto $i2 = r1.<freemarker.core.FMParser: int jj_ntk> 
(assert (not (not (= var112 var691)))) ; Negate: Cond: $i0 != $i4  
(assert true)
(define-const var2897 Int (jj_ntk_f/1929880400 var1402)) ; Statement: $i2 = specialinvoke r1.<freemarker.core.FMParser: int jj_ntk_f()>() 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: lookupswitch($i2) {     case 33: goto r9 = specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(33);     case 34: goto r9 = specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(34);     default: goto $r7 = r1.<freemarker.core.FMParser: int[] jj_la1>; } 
(assert (and (not (= var2897 34)) (and (not (= var2897 33)) true))) ; Intersect: Negate: Cond: $i2 == 34   and Intersect: Negate: Cond: $i2 == 33   and Non Conditional  
(define-const var2739 (Array Int Int) (jj_la1/-1475596563 var1402)) ; Statement: $r7 = r1.<freemarker.core.FMParser: int[] jj_la1> 
(define-const var3847 Int (jj_gen/-1475596563 var1402)) ; Statement: $i1 = r1.<freemarker.core.FMParser: int jj_gen> 
(declare-const var2739!1 (Array Int Int))
(assert (not (= var2739!1 null-__Array__Int__Int__)))
(assert (= (select var2739!1 84) var3847)) ; Statement: $r7[84] = $i1 
(define-const var3294 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(assert true)
;(assert (jj_consume_token/-1662239344 var1402 var3294)) ; Statement: specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>($i6) 

(declare-const var1402!1 var785)
(declare-const var3294!1 Int)
(define-const var2644 var2072 var2072-init) ; Statement: $r11 = new freemarker.core.ParseException 
(assert true)
;(assert (<init>/303744740 var2644)) ; Statement: specialinvoke $r11.<freemarker.core.ParseException: void <init>()>() 

(declare-const var2644!1 var2072)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), jj_ntk/-1475596563=([freemarker.core.FMParser], int), cast-from-Int-to-Int=([int], int), jj_ntk_f/1929880400=([freemarker.core.FMParser], int), jj_la1/-1475596563=([freemarker.core.FMParser], int[]), jj_gen/-1475596563=([freemarker.core.FMParser], int), jj_consume_token/-1662239344=([freemarker.core.FMParser, int], freemarker.core.Token), var2072-init=([], freemarker.core.ParseException), <init>/303744740=([freemarker.core.ParseException], void)}
; {var785=freemarker.core.FMParser, var1402=r1, var47=$r10, var112=$i0, var691=$i4, var2897=$i2, var2739=$r7, var3847=$i1, var3294=$i6, var2072=freemarker.core.ParseException, var2644=$r11, var3181=freemarker.core.Token}
; {freemarker.core.FMParser=var785, r1=var1402, $r10=var47, $i0=var112, $i4=var691, $i2=var2897, $r7=var2739, $i1=var3847, $i6=var3294, freemarker.core.ParseException=var2072, $r11=var2644, freemarker.core.Token=var3181}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: freemarker.core.FMParser;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$i0 = r1.<freemarker.core.FMParser: int jj_ntk>;	$i4 = (int) -1;	if $i0 != $i4 goto $i2 = r1.<freemarker.core.FMParser: int jj_ntk>;	$i2 = specialinvoke r1.<freemarker.core.FMParser: int jj_ntk_f()>();	goto [?= (branch)];	lookupswitch($i2) {     case 33: goto r9 = specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(33);     case 34: goto r9 = specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(34);     default: goto $r7 = r1.<freemarker.core.FMParser: int[] jj_la1>; };	$r7 = r1.<freemarker.core.FMParser: int[] jj_la1>;	$i1 = r1.<freemarker.core.FMParser: int jj_gen>;	$r7[84] = $i1;	$i6 = (int) -1;	specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>($i6);	$r11 = new freemarker.core.ParseException;	specialinvoke $r11.<freemarker.core.ParseException: void <init>()>();	throw $r11
;block_num 4
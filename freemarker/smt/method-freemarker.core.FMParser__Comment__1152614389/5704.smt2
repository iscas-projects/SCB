(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2014 0)
(declare-sort var2358 0)
(declare-sort var3908 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun jj_ntk/-1475596563 (var2014) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun jj_la1/-1475596563 (var2014) (Array Int Int))
(declare-fun jj_gen/-1475596563 (var2014) Int)
(declare-fun jj_consume_token/-1662239344 (var2014 Int) var3908)
(declare-fun var2358-init () var2358)
(declare-fun <init>/303744740 (var2358) void)
(declare-const null-var2014 var2014)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2201 var2014) ; Statement: r1 := @this: freemarker.core.FMParser 
(assert (not (= var2201 null-var2014)))
(define-const var2641 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2641)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2641!1 String)
(assert (= var2641!1 ""))
(define-const var1890 Int (jj_ntk/-1475596563 var2201)) ; Statement: $i0 = r1.<freemarker.core.FMParser: int jj_ntk> 
(define-const var977 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i0 != $i4 goto $i2 = r1.<freemarker.core.FMParser: int jj_ntk> 
(assert (not (= var1890 var977))) ; Cond: $i0 != $i4 
(define-const var1597 Int (jj_ntk/-1475596563 var2201)) ; Statement: $i2 = r1.<freemarker.core.FMParser: int jj_ntk> 
(assert true) ; Non Conditional
 ; Statement: lookupswitch($i2) {     case 33: goto r9 = specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(33);     case 34: goto r9 = specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(34);     default: goto $r7 = r1.<freemarker.core.FMParser: int[] jj_la1>; } 
(assert (and (not (= var1597 34)) (and (not (= var1597 33)) true))) ; Intersect: Negate: Cond: $i2 == 34   and Intersect: Negate: Cond: $i2 == 33   and Non Conditional  
(define-const var318 (Array Int Int) (jj_la1/-1475596563 var2201)) ; Statement: $r7 = r1.<freemarker.core.FMParser: int[] jj_la1> 
(define-const var1298 Int (jj_gen/-1475596563 var2201)) ; Statement: $i1 = r1.<freemarker.core.FMParser: int jj_gen> 
(declare-const var318!1 (Array Int Int))
(assert (not (= var318!1 null-__Array__Int__Int__)))
(assert (= (select var318!1 84) var1298)) ; Statement: $r7[84] = $i1 
(define-const var3692 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(assert true)
;(assert (jj_consume_token/-1662239344 var2201 var3692)) ; Statement: specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>($i6) 

(declare-const var2201!1 var2014)
(declare-const var3692!1 Int)
(define-const var2927 var2358 var2358-init) ; Statement: $r11 = new freemarker.core.ParseException 
(assert true)
;(assert (<init>/303744740 var2927)) ; Statement: specialinvoke $r11.<freemarker.core.ParseException: void <init>()>() 

(declare-const var2927!1 var2358)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), jj_ntk/-1475596563=([freemarker.core.FMParser], int), cast-from-Int-to-Int=([int], int), jj_la1/-1475596563=([freemarker.core.FMParser], int[]), jj_gen/-1475596563=([freemarker.core.FMParser], int), jj_consume_token/-1662239344=([freemarker.core.FMParser, int], freemarker.core.Token), var2358-init=([], freemarker.core.ParseException), <init>/303744740=([freemarker.core.ParseException], void)}
; {var2014=freemarker.core.FMParser, var2201=r1, var2641=$r10, var1890=$i0, var977=$i4, var1597=$i2, var318=$r7, var1298=$i1, var3692=$i6, var2358=freemarker.core.ParseException, var2927=$r11, var3908=freemarker.core.Token}
; {freemarker.core.FMParser=var2014, r1=var2201, $r10=var2641, $i0=var1890, $i4=var977, $i2=var1597, $r7=var318, $i1=var1298, $i6=var3692, freemarker.core.ParseException=var2358, $r11=var2927, freemarker.core.Token=var3908}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: freemarker.core.FMParser;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$i0 = r1.<freemarker.core.FMParser: int jj_ntk>;	$i4 = (int) -1;	if $i0 != $i4 goto $i2 = r1.<freemarker.core.FMParser: int jj_ntk>;	$i2 = r1.<freemarker.core.FMParser: int jj_ntk>;	lookupswitch($i2) {     case 33: goto r9 = specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(33);     case 34: goto r9 = specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(34);     default: goto $r7 = r1.<freemarker.core.FMParser: int[] jj_la1>; };	$r7 = r1.<freemarker.core.FMParser: int[] jj_la1>;	$i1 = r1.<freemarker.core.FMParser: int jj_gen>;	$r7[84] = $i1;	$i6 = (int) -1;	specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>($i6);	$r11 = new freemarker.core.ParseException;	specialinvoke $r11.<freemarker.core.ParseException: void <init>()>();	throw $r11
;block_num 4
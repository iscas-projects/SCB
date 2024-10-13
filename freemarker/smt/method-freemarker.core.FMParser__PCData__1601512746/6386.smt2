(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1799 0)
(declare-sort var3056 0)
(declare-sort var3286 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun jj_ntk/-1475596563 (var1799) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun jj_ntk_f/1929880400 (var1799) Int)
(declare-fun jj_la1/-1475596563 (var1799) (Array Int Int))
(declare-fun jj_gen/-1475596563 (var1799) Int)
(declare-fun jj_consume_token/-1662239344 (var1799 Int) var3056)
(declare-fun var3286-init () var3286)
(declare-fun <init>/303744740 (var3286) void)
(declare-const null-var1799 var1799)
(declare-const null-var3056 var3056)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3511 var1799) ; Statement: r1 := @this: freemarker.core.FMParser 
(assert (not (= var3511 null-var1799)))
(define-const var3195 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3195)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3195!1 String)
(assert (= var3195!1 ""))
(define-const var1358 var3056 null-var3056) ; Statement: r6 = null 
(define-const var2708 var3056 null-var3056) ; Statement: r7 = null 
(assert true) ; Non Conditional
(define-const var3507 Int (jj_ntk/-1475596563 var3511)) ; Statement: $i0 = r1.<freemarker.core.FMParser: int jj_ntk> 
(define-const var791 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: if $i0 != $i8 goto $i5 = r1.<freemarker.core.FMParser: int jj_ntk> 
(assert (not (not (= var3507 var791)))) ; Negate: Cond: $i0 != $i8  
(assert true)
(define-const var2099 Int (jj_ntk_f/1929880400 var3511)) ; Statement: $i5 = specialinvoke r1.<freemarker.core.FMParser: int jj_ntk_f()>() 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: tableswitch($i5) {     case 79: goto r8 = specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(79);     case 80: goto r8 = specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(80);     case 81: goto r8 = specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(81);     default: goto $r4 = r1.<freemarker.core.FMParser: int[] jj_la1>; } 
(assert (and (not (= var2099 81)) (and (not (= var2099 80)) (and (not (= var2099 79)) true)))) ; Intersect: Negate: Cond: $i5 == 81   and Intersect: Negate: Cond: $i5 == 80   and Intersect: Negate: Cond: $i5 == 79   and Non Conditional   
(define-const var2380 (Array Int Int) (jj_la1/-1475596563 var3511)) ; Statement: $r4 = r1.<freemarker.core.FMParser: int[] jj_la1> 
(define-const var3711 Int (jj_gen/-1475596563 var3511)) ; Statement: $i4 = r1.<freemarker.core.FMParser: int jj_gen> 
(declare-const var2380!1 (Array Int Int))
(assert (not (= var2380!1 null-__Array__Int__Int__)))
(assert (= (select var2380!1 95) var3711)) ; Statement: $r4[95] = $i4 
(define-const var430 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
(assert true)
;(assert (jj_consume_token/-1662239344 var3511 var430)) ; Statement: specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>($i10) 

(declare-const var3511!1 var1799)
(declare-const var430!1 Int)
(define-const var3538 var3286 var3286-init) ; Statement: $r14 = new freemarker.core.ParseException 
(assert true)
;(assert (<init>/303744740 var3538)) ; Statement: specialinvoke $r14.<freemarker.core.ParseException: void <init>()>() 

(declare-const var3538!1 var3286)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), jj_ntk/-1475596563=([freemarker.core.FMParser], int), cast-from-Int-to-Int=([int], int), jj_ntk_f/1929880400=([freemarker.core.FMParser], int), jj_la1/-1475596563=([freemarker.core.FMParser], int[]), jj_gen/-1475596563=([freemarker.core.FMParser], int), jj_consume_token/-1662239344=([freemarker.core.FMParser, int], freemarker.core.Token), var3286-init=([], freemarker.core.ParseException), <init>/303744740=([freemarker.core.ParseException], void)}
; {var1799=freemarker.core.FMParser, var3511=r1, var3195=$r13, var3056=freemarker.core.Token, var1358=r6, var2708=r7, var3507=$i0, var791=$i8, var2099=$i5, var2380=$r4, var3711=$i4, var430=$i10, var3286=freemarker.core.ParseException, var3538=$r14}
; {freemarker.core.FMParser=var1799, r1=var3511, $r13=var3195, freemarker.core.Token=var3056, r6=var1358, r7=var2708, $i0=var3507, $i8=var791, $i5=var2099, $r4=var2380, $i4=var3711, $i10=var430, freemarker.core.ParseException=var3286, $r14=var3538}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: freemarker.core.FMParser;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	r6 = null;	r7 = null;	$i0 = r1.<freemarker.core.FMParser: int jj_ntk>;	$i8 = (int) -1;	if $i0 != $i8 goto $i5 = r1.<freemarker.core.FMParser: int jj_ntk>;	$i5 = specialinvoke r1.<freemarker.core.FMParser: int jj_ntk_f()>();	goto [?= (branch)];	tableswitch($i5) {     case 79: goto r8 = specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(79);     case 80: goto r8 = specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(80);     case 81: goto r8 = specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(81);     default: goto $r4 = r1.<freemarker.core.FMParser: int[] jj_la1>; };	$r4 = r1.<freemarker.core.FMParser: int[] jj_la1>;	$i4 = r1.<freemarker.core.FMParser: int jj_gen>;	$r4[95] = $i4;	$i10 = (int) -1;	specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>($i10);	$r14 = new freemarker.core.ParseException;	specialinvoke $r14.<freemarker.core.ParseException: void <init>()>();	throw $r14
;block_num 5
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2587 0)
(declare-sort var2746 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jj_consume_token/1757370011 (var2587 Int) var2746)
(declare-fun String-init () String)
(declare-fun image/-2105314717 (var2746) String)
(declare-fun <init>/2110755883 (String String) void)
(declare-fun jj_ntk/-579133653 (var2587) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun jj_ntk_f/2140011722 (var2587) Int)
(declare-fun jj_la1/-579133653 (var2587) (Array Int Int))
(declare-fun jj_gen/-579133653 (var2587) Int)
(declare-fun <init>/-1873387413 (String String) void)
(declare-const null-var2587 var2587)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3179 var2587) ; Statement: r0 := @this: org.apache.ibatis.ognl.OgnlParser 
(assert (not (= var3179 null-var2587)))
(assert true)
(define-const var406 var2746 (jj_consume_token/1757370011 var3179 64)) ; Statement: r8 = specialinvoke r0.<org.apache.ibatis.ognl.OgnlParser: org.apache.ibatis.ognl.Token jj_consume_token(int)>(64) 
(define-const var2250 String String-init) ; Statement: $r10 = new java.lang.StringBuffer 
(define-const var3630 String (image/-2105314717 var406)) ; Statement: $r2 = r8.<org.apache.ibatis.ognl.Token: java.lang.String image> 
(assert true)
;(assert (<init>/2110755883 var2250 var3630)) ; Statement: specialinvoke $r10.<java.lang.StringBuffer: void <init>(java.lang.String)>($r2) 

(declare-const var2250!1 String)
(declare-const var3630!1 String)
(assert true) ; Non Conditional
(define-const var1623 Int (jj_ntk/-579133653 var3179)) ; Statement: $i0 = r0.<org.apache.ibatis.ognl.OgnlParser: int jj_ntk> 
(define-const var3210 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i0 != $i4 goto $i2 = r0.<org.apache.ibatis.ognl.OgnlParser: int jj_ntk> 
(assert (not (not (= var1623 var3210)))) ; Negate: Cond: $i0 != $i4  
(assert true)
(define-const var2790 Int (jj_ntk_f/2140011722 var3179)) ; Statement: $i2 = specialinvoke r0.<org.apache.ibatis.ognl.OgnlParser: int jj_ntk_f()>() 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: lookupswitch($i2) {     case 43: goto goto [?= specialinvoke r0.<org.apache.ibatis.ognl.OgnlParser: org.apache.ibatis.ognl.Token jj_consume_token(int)>(43)];     default: goto $r5 = r0.<org.apache.ibatis.ognl.OgnlParser: int[] jj_la1>; } 
(assert (and (not (= var2790 43)) true)) ; Intersect: Negate: Cond: $i2 == 43   and Non Conditional 
(define-const var1813 (Array Int Int) (jj_la1/-579133653 var3179)) ; Statement: $r5 = r0.<org.apache.ibatis.ognl.OgnlParser: int[] jj_la1> 
(define-const var1651 Int (jj_gen/-579133653 var3179)) ; Statement: $i1 = r0.<org.apache.ibatis.ognl.OgnlParser: int jj_gen> 
(declare-const var1813!1 (Array Int Int))
(assert (not (= var1813!1 null-__Array__Int__Int__)))
(assert (= (select var1813!1 54) var1651)) ; Statement: $r5[54] = $i1 
 ; Statement: goto [?= $r11 = new java.lang.String] 
(assert true) ; Non Conditional
(define-const var1351 String String-init) ; Statement: $r11 = new java.lang.String 
(assert true)
;(assert (<init>/-1873387413 var1351 var2250!1)) ; Statement: specialinvoke $r11.<java.lang.String: void <init>(java.lang.StringBuffer)>($r10) 

(declare-const var1351!1 String)
(declare-const var2250!2 String)
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {jj_consume_token/1757370011=([org.apache.ibatis.ognl.OgnlParser, int], org.apache.ibatis.ognl.Token), String-init=([], java.lang.StringBuffer), image/-2105314717=([org.apache.ibatis.ognl.Token], java.lang.String), <init>/2110755883=([java.lang.StringBuffer, java.lang.String], void), jj_ntk/-579133653=([org.apache.ibatis.ognl.OgnlParser], int), cast-from-Int-to-Int=([int], int), jj_ntk_f/2140011722=([org.apache.ibatis.ognl.OgnlParser], int), jj_la1/-579133653=([org.apache.ibatis.ognl.OgnlParser], int[]), jj_gen/-579133653=([org.apache.ibatis.ognl.OgnlParser], int), <init>/-1873387413=([java.lang.String, java.lang.StringBuffer], void)}
; {var2587=org.apache.ibatis.ognl.OgnlParser, var3179=r0, var2746=org.apache.ibatis.ognl.Token, var406=r8, var2250=$r10, var3630=$r2, var1623=$i0, var3210=$i4, var2790=$i2, var1813=$r5, var1651=$i1, var1351=$r11}
; {org.apache.ibatis.ognl.OgnlParser=var2587, r0=var3179, org.apache.ibatis.ognl.Token=var2746, r8=var406, $r10=var2250, $r2=var3630, $i0=var1623, $i4=var3210, $i2=var2790, $r5=var1813, $i1=var1651, $r11=var1351}
;seq <java.lang.StringBuffer: void <init>(java.lang.String)>;	<java.lang.String: void <init>(java.lang.StringBuffer)>
;cnt {"<java.lang.StringBuffer: void <init>(java.lang.String)>": 1,"<java.lang.String: void <init>(java.lang.StringBuffer)>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.OgnlParser;	r8 = specialinvoke r0.<org.apache.ibatis.ognl.OgnlParser: org.apache.ibatis.ognl.Token jj_consume_token(int)>(64);	$r10 = new java.lang.StringBuffer;	$r2 = r8.<org.apache.ibatis.ognl.Token: java.lang.String image>;	specialinvoke $r10.<java.lang.StringBuffer: void <init>(java.lang.String)>($r2);	$i0 = r0.<org.apache.ibatis.ognl.OgnlParser: int jj_ntk>;	$i4 = (int) -1;	if $i0 != $i4 goto $i2 = r0.<org.apache.ibatis.ognl.OgnlParser: int jj_ntk>;	$i2 = specialinvoke r0.<org.apache.ibatis.ognl.OgnlParser: int jj_ntk_f()>();	goto [?= (branch)];	lookupswitch($i2) {     case 43: goto goto [?= specialinvoke r0.<org.apache.ibatis.ognl.OgnlParser: org.apache.ibatis.ognl.Token jj_consume_token(int)>(43)];     default: goto $r5 = r0.<org.apache.ibatis.ognl.OgnlParser: int[] jj_la1>; };	$r5 = r0.<org.apache.ibatis.ognl.OgnlParser: int[] jj_la1>;	$i1 = r0.<org.apache.ibatis.ognl.OgnlParser: int jj_gen>;	$r5[54] = $i1;	goto [?= $r11 = new java.lang.String];	$r11 = new java.lang.String;	specialinvoke $r11.<java.lang.String: void <init>(java.lang.StringBuffer)>($r10);	return $r11
;block_num 6
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2690 0)
(declare-sort var1341 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jj_consume_token/1757370011 (var2690 Int) var1341)
(declare-fun String-init () String)
(declare-fun image/-2105314717 (var1341) String)
(declare-fun <init>/2110755883 (String String) void)
(declare-fun jj_ntk/-579133653 (var2690) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun jj_la1/-579133653 (var2690) (Array Int Int))
(declare-fun jj_gen/-579133653 (var2690) Int)
(declare-fun <init>/-1873387413 (String String) void)
(declare-const null-var2690 var2690)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3964 var2690) ; Statement: r0 := @this: org.apache.ibatis.ognl.OgnlParser 
(assert (not (= var3964 null-var2690)))
(assert true)
(define-const var820 var1341 (jj_consume_token/1757370011 var3964 64)) ; Statement: r8 = specialinvoke r0.<org.apache.ibatis.ognl.OgnlParser: org.apache.ibatis.ognl.Token jj_consume_token(int)>(64) 
(define-const var2561 String String-init) ; Statement: $r10 = new java.lang.StringBuffer 
(define-const var1994 String (image/-2105314717 var820)) ; Statement: $r2 = r8.<org.apache.ibatis.ognl.Token: java.lang.String image> 
(assert true)
;(assert (<init>/2110755883 var2561 var1994)) ; Statement: specialinvoke $r10.<java.lang.StringBuffer: void <init>(java.lang.String)>($r2) 

(declare-const var2561!1 String)
(declare-const var1994!1 String)
(assert true) ; Non Conditional
(define-const var191 Int (jj_ntk/-579133653 var3964)) ; Statement: $i0 = r0.<org.apache.ibatis.ognl.OgnlParser: int jj_ntk> 
(define-const var1518 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i0 != $i4 goto $i2 = r0.<org.apache.ibatis.ognl.OgnlParser: int jj_ntk> 
(assert (not (= var191 var1518))) ; Cond: $i0 != $i4 
(define-const var3322 Int (jj_ntk/-579133653 var3964)) ; Statement: $i2 = r0.<org.apache.ibatis.ognl.OgnlParser: int jj_ntk> 
(assert true) ; Non Conditional
 ; Statement: lookupswitch($i2) {     case 43: goto goto [?= specialinvoke r0.<org.apache.ibatis.ognl.OgnlParser: org.apache.ibatis.ognl.Token jj_consume_token(int)>(43)];     default: goto $r5 = r0.<org.apache.ibatis.ognl.OgnlParser: int[] jj_la1>; } 
(assert (and (not (= var3322 43)) true)) ; Intersect: Negate: Cond: $i2 == 43   and Non Conditional 
(define-const var1404 (Array Int Int) (jj_la1/-579133653 var3964)) ; Statement: $r5 = r0.<org.apache.ibatis.ognl.OgnlParser: int[] jj_la1> 
(define-const var402 Int (jj_gen/-579133653 var3964)) ; Statement: $i1 = r0.<org.apache.ibatis.ognl.OgnlParser: int jj_gen> 
(declare-const var1404!1 (Array Int Int))
(assert (not (= var1404!1 null-__Array__Int__Int__)))
(assert (= (select var1404!1 54) var402)) ; Statement: $r5[54] = $i1 
 ; Statement: goto [?= $r11 = new java.lang.String] 
(assert true) ; Non Conditional
(define-const var3460 String String-init) ; Statement: $r11 = new java.lang.String 
(assert true)
;(assert (<init>/-1873387413 var3460 var2561!1)) ; Statement: specialinvoke $r11.<java.lang.String: void <init>(java.lang.StringBuffer)>($r10) 

(declare-const var3460!1 String)
(declare-const var2561!2 String)
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {jj_consume_token/1757370011=([org.apache.ibatis.ognl.OgnlParser, int], org.apache.ibatis.ognl.Token), String-init=([], java.lang.StringBuffer), image/-2105314717=([org.apache.ibatis.ognl.Token], java.lang.String), <init>/2110755883=([java.lang.StringBuffer, java.lang.String], void), jj_ntk/-579133653=([org.apache.ibatis.ognl.OgnlParser], int), cast-from-Int-to-Int=([int], int), jj_la1/-579133653=([org.apache.ibatis.ognl.OgnlParser], int[]), jj_gen/-579133653=([org.apache.ibatis.ognl.OgnlParser], int), <init>/-1873387413=([java.lang.String, java.lang.StringBuffer], void)}
; {var2690=org.apache.ibatis.ognl.OgnlParser, var3964=r0, var1341=org.apache.ibatis.ognl.Token, var820=r8, var2561=$r10, var1994=$r2, var191=$i0, var1518=$i4, var3322=$i2, var1404=$r5, var402=$i1, var3460=$r11}
; {org.apache.ibatis.ognl.OgnlParser=var2690, r0=var3964, org.apache.ibatis.ognl.Token=var1341, r8=var820, $r10=var2561, $r2=var1994, $i0=var191, $i4=var1518, $i2=var3322, $r5=var1404, $i1=var402, $r11=var3460}
;seq <java.lang.StringBuffer: void <init>(java.lang.String)>;	<java.lang.String: void <init>(java.lang.StringBuffer)>
;cnt {"<java.lang.StringBuffer: void <init>(java.lang.String)>": 1,"<java.lang.String: void <init>(java.lang.StringBuffer)>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.OgnlParser;	r8 = specialinvoke r0.<org.apache.ibatis.ognl.OgnlParser: org.apache.ibatis.ognl.Token jj_consume_token(int)>(64);	$r10 = new java.lang.StringBuffer;	$r2 = r8.<org.apache.ibatis.ognl.Token: java.lang.String image>;	specialinvoke $r10.<java.lang.StringBuffer: void <init>(java.lang.String)>($r2);	$i0 = r0.<org.apache.ibatis.ognl.OgnlParser: int jj_ntk>;	$i4 = (int) -1;	if $i0 != $i4 goto $i2 = r0.<org.apache.ibatis.ognl.OgnlParser: int jj_ntk>;	$i2 = r0.<org.apache.ibatis.ognl.OgnlParser: int jj_ntk>;	lookupswitch($i2) {     case 43: goto goto [?= specialinvoke r0.<org.apache.ibatis.ognl.OgnlParser: org.apache.ibatis.ognl.Token jj_consume_token(int)>(43)];     default: goto $r5 = r0.<org.apache.ibatis.ognl.OgnlParser: int[] jj_la1>; };	$r5 = r0.<org.apache.ibatis.ognl.OgnlParser: int[] jj_la1>;	$i1 = r0.<org.apache.ibatis.ognl.OgnlParser: int jj_gen>;	$r5[54] = $i1;	goto [?= $r11 = new java.lang.String];	$r11 = new java.lang.String;	specialinvoke $r11.<java.lang.String: void <init>(java.lang.StringBuffer)>($r10);	return $r11
;block_num 6
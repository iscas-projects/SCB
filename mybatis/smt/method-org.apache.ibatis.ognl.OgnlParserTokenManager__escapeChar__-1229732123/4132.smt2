(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var694 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun image/1370455615 (var694) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun charAt/1621160911 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var694 var694)
(declare-const var509 var694) ; Statement: r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager 
(assert (not (= var509 null-var694)))
(define-const var2417 String (image/1370455615 var509)) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image> 
(assert true)
(define-const var1038 Int (length/-171891354 var2417)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(define-const var908 Int (- var1038 1)) ; Statement: i8 = $i0 - 1 
(define-const var1657 String (image/1370455615 var509)) ; Statement: $r2 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image> 
(assert true)
(define-const var2454 Int (charAt/1621160911 var1657 var908)) ; Statement: $c1 = virtualinvoke $r2.<java.lang.StringBuilder: char charAt(int)>(i8) 
(define-const var3707 Int (cast-from-Int-to-Int var2454)) ; Statement: $i10 = (int) $c1 
 ; Statement: lookupswitch($i10) {     case 34: goto return 34;     case 39: goto return 39;     case 92: goto return 92;     case 98: goto return 8;     case 102: goto return 12;     case 110: goto return 10;     case 114: goto return 13;     case 116: goto return 9;     default: goto $r3 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>; } 
(assert (and (= var3707 116) (and (not (= var3707 114)) (and (not (= var3707 110)) (and (not (= var3707 102)) (and (not (= var3707 98)) (and (not (= var3707 92)) (and (not (= var3707 39)) (and (not (= var3707 34)) true))))))))) ; Intersect: Cond: $i10 == 116  and Intersect: Negate: Cond: $i10 == 114   and Intersect: Negate: Cond: $i10 == 110   and Intersect: Negate: Cond: $i10 == 102   and Intersect: Negate: Cond: $i10 == 98   and Intersect: Negate: Cond: $i10 == 92   and Intersect: Negate: Cond: $i10 == 39   and Intersect: Negate: Cond: $i10 == 34   and Non Conditional        
 ; Statement: return 9 
(check-sat)
(get-model)
(get-unsat-core)
; {image/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), charAt/1621160911=([java.lang.StringBuilder, int], char), cast-from-Int-to-Int=([char], int)}
; {var694=org.apache.ibatis.ognl.OgnlParserTokenManager, var509=r0, var2417=$r1, var1038=$i0, var908=i8, var1657=$r2, var2454=$c1, var3707=$i10}
; {org.apache.ibatis.ognl.OgnlParserTokenManager=var694, r0=var509, $r1=var2417, $i0=var1038, i8=var908, $r2=var1657, $c1=var2454, $i10=var3707}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: char charAt(int)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: char charAt(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager;	$r1 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	i8 = $i0 - 1;	$r2 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>;	$c1 = virtualinvoke $r2.<java.lang.StringBuilder: char charAt(int)>(i8);	$i10 = (int) $c1;	lookupswitch($i10) {     case 34: goto return 34;     case 39: goto return 39;     case 92: goto return 92;     case 98: goto return 8;     case 102: goto return 12;     case 110: goto return 10;     case 114: goto return 13;     case 116: goto return 9;     default: goto $r3 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>; };	return 9
;block_num 2
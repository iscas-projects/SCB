(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var627 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun image/1370455615 (var627) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun charAt/1621160911 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var627 var627)
(declare-const var62 var627) ; Statement: r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager 
(assert (not (= var62 null-var627)))
(define-const var715 String (image/1370455615 var62)) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image> 
(assert true)
(define-const var2820 Int (length/-171891354 var715)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(define-const var1996 Int (- var2820 1)) ; Statement: i8 = $i0 - 1 
(define-const var1812 String (image/1370455615 var62)) ; Statement: $r2 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image> 
(assert true)
(define-const var269 Int (charAt/1621160911 var1812 var1996)) ; Statement: $c1 = virtualinvoke $r2.<java.lang.StringBuilder: char charAt(int)>(i8) 
(define-const var3375 Int (cast-from-Int-to-Int var269)) ; Statement: $i10 = (int) $c1 
 ; Statement: lookupswitch($i10) {     case 34: goto return 34;     case 39: goto return 39;     case 92: goto return 92;     case 98: goto return 8;     case 102: goto return 12;     case 110: goto return 10;     case 114: goto return 13;     case 116: goto return 9;     default: goto $r3 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>; } 
(assert (and (= var3375 114) (and (not (= var3375 110)) (and (not (= var3375 102)) (and (not (= var3375 98)) (and (not (= var3375 92)) (and (not (= var3375 39)) (and (not (= var3375 34)) true)))))))) ; Intersect: Cond: $i10 == 114  and Intersect: Negate: Cond: $i10 == 110   and Intersect: Negate: Cond: $i10 == 102   and Intersect: Negate: Cond: $i10 == 98   and Intersect: Negate: Cond: $i10 == 92   and Intersect: Negate: Cond: $i10 == 39   and Intersect: Negate: Cond: $i10 == 34   and Non Conditional       
 ; Statement: return 13 
(check-sat)
(get-model)
(get-unsat-core)
; {image/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), charAt/1621160911=([java.lang.StringBuilder, int], char), cast-from-Int-to-Int=([char], int)}
; {var627=org.apache.ibatis.ognl.OgnlParserTokenManager, var62=r0, var715=$r1, var2820=$i0, var1996=i8, var1812=$r2, var269=$c1, var3375=$i10}
; {org.apache.ibatis.ognl.OgnlParserTokenManager=var627, r0=var62, $r1=var715, $i0=var2820, i8=var1996, $r2=var1812, $c1=var269, $i10=var3375}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: char charAt(int)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: char charAt(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager;	$r1 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	i8 = $i0 - 1;	$r2 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>;	$c1 = virtualinvoke $r2.<java.lang.StringBuilder: char charAt(int)>(i8);	$i10 = (int) $c1;	lookupswitch($i10) {     case 34: goto return 34;     case 39: goto return 39;     case 92: goto return 92;     case 98: goto return 8;     case 102: goto return 12;     case 110: goto return 10;     case 114: goto return 13;     case 116: goto return 9;     default: goto $r3 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>; };	return 13
;block_num 2
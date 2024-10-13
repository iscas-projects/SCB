(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3015 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun image/1370455615 (var3015) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun charAt/1621160911 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3015 var3015)
(declare-const var896 var3015) ; Statement: r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager 
(assert (not (= var896 null-var3015)))
(define-const var2273 String (image/1370455615 var896)) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image> 
(assert true)
(define-const var1083 Int (length/-171891354 var2273)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(define-const var2075 Int (- var1083 1)) ; Statement: i8 = $i0 - 1 
(define-const var3800 String (image/1370455615 var896)) ; Statement: $r2 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image> 
(assert true)
(define-const var532 Int (charAt/1621160911 var3800 var2075)) ; Statement: $c1 = virtualinvoke $r2.<java.lang.StringBuilder: char charAt(int)>(i8) 
(define-const var3163 Int (cast-from-Int-to-Int var532)) ; Statement: $i10 = (int) $c1 
 ; Statement: lookupswitch($i10) {     case 34: goto return 34;     case 39: goto return 39;     case 92: goto return 92;     case 98: goto return 8;     case 102: goto return 12;     case 110: goto return 10;     case 114: goto return 13;     case 116: goto return 9;     default: goto $r3 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>; } 
(assert (and (= var3163 98) (and (not (= var3163 92)) (and (not (= var3163 39)) (and (not (= var3163 34)) true))))) ; Intersect: Cond: $i10 == 98  and Intersect: Negate: Cond: $i10 == 92   and Intersect: Negate: Cond: $i10 == 39   and Intersect: Negate: Cond: $i10 == 34   and Non Conditional    
 ; Statement: return 8 
(check-sat)
(get-model)
(get-unsat-core)
; {image/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), charAt/1621160911=([java.lang.StringBuilder, int], char), cast-from-Int-to-Int=([char], int)}
; {var3015=org.apache.ibatis.ognl.OgnlParserTokenManager, var896=r0, var2273=$r1, var1083=$i0, var2075=i8, var3800=$r2, var532=$c1, var3163=$i10}
; {org.apache.ibatis.ognl.OgnlParserTokenManager=var3015, r0=var896, $r1=var2273, $i0=var1083, i8=var2075, $r2=var3800, $c1=var532, $i10=var3163}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: char charAt(int)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: char charAt(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager;	$r1 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	i8 = $i0 - 1;	$r2 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>;	$c1 = virtualinvoke $r2.<java.lang.StringBuilder: char charAt(int)>(i8);	$i10 = (int) $c1;	lookupswitch($i10) {     case 34: goto return 34;     case 39: goto return 39;     case 92: goto return 92;     case 98: goto return 8;     case 102: goto return 12;     case 110: goto return 10;     case 114: goto return 13;     case 116: goto return 9;     default: goto $r3 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>; };	return 8
;block_num 2
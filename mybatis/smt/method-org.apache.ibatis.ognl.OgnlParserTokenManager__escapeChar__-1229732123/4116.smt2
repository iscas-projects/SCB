(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1438 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun image/1370455615 (var1438) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun charAt/1621160911 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1438 var1438)
(declare-const var2552 var1438) ; Statement: r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager 
(assert (not (= var2552 null-var1438)))
(define-const var3149 String (image/1370455615 var2552)) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image> 
(assert true)
(define-const var3043 Int (length/-171891354 var3149)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(define-const var3318 Int (- var3043 1)) ; Statement: i8 = $i0 - 1 
(define-const var3094 String (image/1370455615 var2552)) ; Statement: $r2 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image> 
(assert true)
(define-const var103 Int (charAt/1621160911 var3094 var3318)) ; Statement: $c1 = virtualinvoke $r2.<java.lang.StringBuilder: char charAt(int)>(i8) 
(define-const var867 Int (cast-from-Int-to-Int var103)) ; Statement: $i10 = (int) $c1 
 ; Statement: lookupswitch($i10) {     case 34: goto return 34;     case 39: goto return 39;     case 92: goto return 92;     case 98: goto return 8;     case 102: goto return 12;     case 110: goto return 10;     case 114: goto return 13;     case 116: goto return 9;     default: goto $r3 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>; } 
(assert (and (= var867 110) (and (not (= var867 102)) (and (not (= var867 98)) (and (not (= var867 92)) (and (not (= var867 39)) (and (not (= var867 34)) true))))))) ; Intersect: Cond: $i10 == 110  and Intersect: Negate: Cond: $i10 == 102   and Intersect: Negate: Cond: $i10 == 98   and Intersect: Negate: Cond: $i10 == 92   and Intersect: Negate: Cond: $i10 == 39   and Intersect: Negate: Cond: $i10 == 34   and Non Conditional      
 ; Statement: return 10 
(check-sat)
(get-model)
(get-unsat-core)
; {image/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), charAt/1621160911=([java.lang.StringBuilder, int], char), cast-from-Int-to-Int=([char], int)}
; {var1438=org.apache.ibatis.ognl.OgnlParserTokenManager, var2552=r0, var3149=$r1, var3043=$i0, var3318=i8, var3094=$r2, var103=$c1, var867=$i10}
; {org.apache.ibatis.ognl.OgnlParserTokenManager=var1438, r0=var2552, $r1=var3149, $i0=var3043, i8=var3318, $r2=var3094, $c1=var103, $i10=var867}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: char charAt(int)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: char charAt(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager;	$r1 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	i8 = $i0 - 1;	$r2 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>;	$c1 = virtualinvoke $r2.<java.lang.StringBuilder: char charAt(int)>(i8);	$i10 = (int) $c1;	lookupswitch($i10) {     case 34: goto return 34;     case 39: goto return 39;     case 92: goto return 92;     case 98: goto return 8;     case 102: goto return 12;     case 110: goto return 10;     case 114: goto return 13;     case 116: goto return 9;     default: goto $r3 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>; };	return 10
;block_num 2
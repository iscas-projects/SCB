(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var828 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun image/1370455615 (var828) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun charAt/1621160911 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var828 var828)
(declare-const var496 var828) ; Statement: r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager 
(assert (not (= var496 null-var828)))
(define-const var2499 String (image/1370455615 var496)) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image> 
(assert true)
(define-const var149 Int (length/-171891354 var2499)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(define-const var518 Int (- var149 1)) ; Statement: i8 = $i0 - 1 
(define-const var3285 String (image/1370455615 var496)) ; Statement: $r2 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image> 
(assert true)
(define-const var975 Int (charAt/1621160911 var3285 var518)) ; Statement: $c1 = virtualinvoke $r2.<java.lang.StringBuilder: char charAt(int)>(i8) 
(define-const var953 Int (cast-from-Int-to-Int var975)) ; Statement: $i10 = (int) $c1 
 ; Statement: lookupswitch($i10) {     case 34: goto return 34;     case 39: goto return 39;     case 92: goto return 92;     case 98: goto return 8;     case 102: goto return 12;     case 110: goto return 10;     case 114: goto return 13;     case 116: goto return 9;     default: goto $r3 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>; } 
(assert (and (= var953 102) (and (not (= var953 98)) (and (not (= var953 92)) (and (not (= var953 39)) (and (not (= var953 34)) true)))))) ; Intersect: Cond: $i10 == 102  and Intersect: Negate: Cond: $i10 == 98   and Intersect: Negate: Cond: $i10 == 92   and Intersect: Negate: Cond: $i10 == 39   and Intersect: Negate: Cond: $i10 == 34   and Non Conditional     
 ; Statement: return 12 
(check-sat)
(get-model)
(get-unsat-core)
; {image/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), charAt/1621160911=([java.lang.StringBuilder, int], char), cast-from-Int-to-Int=([char], int)}
; {var828=org.apache.ibatis.ognl.OgnlParserTokenManager, var496=r0, var2499=$r1, var149=$i0, var518=i8, var3285=$r2, var975=$c1, var953=$i10}
; {org.apache.ibatis.ognl.OgnlParserTokenManager=var828, r0=var496, $r1=var2499, $i0=var149, i8=var518, $r2=var3285, $c1=var975, $i10=var953}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: char charAt(int)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: char charAt(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager;	$r1 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	i8 = $i0 - 1;	$r2 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>;	$c1 = virtualinvoke $r2.<java.lang.StringBuilder: char charAt(int)>(i8);	$i10 = (int) $c1;	lookupswitch($i10) {     case 34: goto return 34;     case 39: goto return 39;     case 92: goto return 92;     case 98: goto return 8;     case 102: goto return 12;     case 110: goto return 10;     case 114: goto return 13;     case 116: goto return 9;     default: goto $r3 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>; };	return 12
;block_num 2
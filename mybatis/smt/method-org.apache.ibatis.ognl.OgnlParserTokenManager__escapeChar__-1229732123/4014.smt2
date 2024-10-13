(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3785 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun image/1370455615 (var3785) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun charAt/1621160911 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3785 var3785)
(declare-const var3302 var3785) ; Statement: r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager 
(assert (not (= var3302 null-var3785)))
(define-const var2478 String (image/1370455615 var3302)) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image> 
(assert true)
(define-const var680 Int (length/-171891354 var2478)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(define-const var2959 Int (- var680 1)) ; Statement: i8 = $i0 - 1 
(define-const var1335 String (image/1370455615 var3302)) ; Statement: $r2 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image> 
(assert true)
(define-const var3227 Int (charAt/1621160911 var1335 var2959)) ; Statement: $c1 = virtualinvoke $r2.<java.lang.StringBuilder: char charAt(int)>(i8) 
(define-const var3921 Int (cast-from-Int-to-Int var3227)) ; Statement: $i10 = (int) $c1 
 ; Statement: lookupswitch($i10) {     case 34: goto return 34;     case 39: goto return 39;     case 92: goto return 92;     case 98: goto return 8;     case 102: goto return 12;     case 110: goto return 10;     case 114: goto return 13;     case 116: goto return 9;     default: goto $r3 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>; } 
(assert (and (= var3921 39) (and (not (= var3921 34)) true))) ; Intersect: Cond: $i10 == 39  and Intersect: Negate: Cond: $i10 == 34   and Non Conditional  
 ; Statement: return 39 
(check-sat)
(get-model)
(get-unsat-core)
; {image/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), charAt/1621160911=([java.lang.StringBuilder, int], char), cast-from-Int-to-Int=([char], int)}
; {var3785=org.apache.ibatis.ognl.OgnlParserTokenManager, var3302=r0, var2478=$r1, var680=$i0, var2959=i8, var1335=$r2, var3227=$c1, var3921=$i10}
; {org.apache.ibatis.ognl.OgnlParserTokenManager=var3785, r0=var3302, $r1=var2478, $i0=var680, i8=var2959, $r2=var1335, $c1=var3227, $i10=var3921}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: char charAt(int)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: char charAt(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager;	$r1 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	i8 = $i0 - 1;	$r2 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>;	$c1 = virtualinvoke $r2.<java.lang.StringBuilder: char charAt(int)>(i8);	$i10 = (int) $c1;	lookupswitch($i10) {     case 34: goto return 34;     case 39: goto return 39;     case 92: goto return 92;     case 98: goto return 8;     case 102: goto return 12;     case 110: goto return 10;     case 114: goto return 13;     case 116: goto return 9;     default: goto $r3 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>; };	return 39
;block_num 2
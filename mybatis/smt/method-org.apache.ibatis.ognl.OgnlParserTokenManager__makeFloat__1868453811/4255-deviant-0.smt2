(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1475 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun image/1370455615 (var1475) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Float64_valueOf/-1382253682 (String) Float64)
(declare-const null-var1475 var1475)
(declare-const var1946 var1475) ; Statement: r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager 
(assert (not (= var1946 null-var1475)))
(define-const var61 String (image/1370455615 var1946)) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image> 
(assert true)
(define-const var3333 String (toString/-2075883882 var61)) ; Statement: r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1059 Int (length/-134980193 var3333)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var2096 Int (- var1059 1)) ; Statement: $i1 = $i0 - 1 
(assert (not (and true (and (> (str.len var3333) var2096) (<= 0 var2096)))))
(check-sat)
(get-model)
(get-unsat-core)
; {image/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), Float64_valueOf/-1382253682=([java.lang.String], java.lang.Double)}
; {var1475=org.apache.ibatis.ognl.OgnlParserTokenManager, var1946=r0, var61=$r1, var3333=r2, var1059=$i0, var2096=$i1, var1447=$c2, var1523=$i5, var883=$r6}
; {org.apache.ibatis.ognl.OgnlParserTokenManager=var1475, r0=var1946, $r1=var61, r2=var3333, $i0=var1059, $i1=var2096, $c2=var1447, $i5=var1523, $r6=var883}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager;	$r1 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>;	r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	$i1 = $i0 - 1;	$c2 = virtualinvoke r2.<java.lang.String: char charAt(int)>($i1);	$i5 = (int) $c2;	lookupswitch($i5) {     case 66: goto $r7 = new java.math.BigDecimal;     case 68: goto $r6 = staticinvoke <java.lang.Double: java.lang.Double valueOf(java.lang.String)>(r2);     case 70: goto $r3 = staticinvoke <java.lang.Float: java.lang.Float valueOf(java.lang.String)>(r2);     case 98: goto $r7 = new java.math.BigDecimal;     case 100: goto $r6 = staticinvoke <java.lang.Double: java.lang.Double valueOf(java.lang.String)>(r2);     case 102: goto $r3 = staticinvoke <java.lang.Float: java.lang.Float valueOf(java.lang.String)>(r2);     default: goto $r6 = staticinvoke <java.lang.Double: java.lang.Double valueOf(java.lang.String)>(r2); };	$r6 = staticinvoke <java.lang.Double: java.lang.Double valueOf(java.lang.String)>(r2);	return $r6
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1894 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun image/1370455615 (var1894) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Float32_valueOf/1193455972 (String) Float32)
(declare-const null-var1894 var1894)
(declare-const var540 var1894) ; Statement: r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager 
(assert (not (= var540 null-var1894)))
(define-const var3223 String (image/1370455615 var540)) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image> 
(assert true)
(define-const var3530 String (toString/-2075883882 var3223)) ; Statement: r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var207 Int (length/-134980193 var3530)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var1525 Int (- var207 1)) ; Statement: $i1 = $i0 - 1 
(assert (and true (and (> (str.len var3530) var1525) (<= 0 var1525))))
(define-const var987 Int (charAt/698050440 var3530 var1525)) ; Statement: $c2 = virtualinvoke r2.<java.lang.String: char charAt(int)>($i1) 
(define-const var1314 Int (cast-from-Int-to-Int var987)) ; Statement: $i5 = (int) $c2 
 ; Statement: lookupswitch($i5) {     case 66: goto $r7 = new java.math.BigDecimal;     case 68: goto $r6 = staticinvoke <java.lang.Double: java.lang.Double valueOf(java.lang.String)>(r2);     case 70: goto $r3 = staticinvoke <java.lang.Float: java.lang.Float valueOf(java.lang.String)>(r2);     case 98: goto $r7 = new java.math.BigDecimal;     case 100: goto $r6 = staticinvoke <java.lang.Double: java.lang.Double valueOf(java.lang.String)>(r2);     case 102: goto $r3 = staticinvoke <java.lang.Float: java.lang.Float valueOf(java.lang.String)>(r2);     default: goto $r6 = staticinvoke <java.lang.Double: java.lang.Double valueOf(java.lang.String)>(r2); } 
(assert (and (= var1314 70) (and (not (= var1314 68)) (and (not (= var1314 66)) true)))) ; Intersect: Cond: $i5 == 70  and Intersect: Negate: Cond: $i5 == 68   and Intersect: Negate: Cond: $i5 == 66   and Non Conditional   
(define-const var3376 Float32 (Float32_valueOf/1193455972 var3530)) ; Statement: $r3 = staticinvoke <java.lang.Float: java.lang.Float valueOf(java.lang.String)>(r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {image/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), Float32_valueOf/1193455972=([java.lang.String], java.lang.Float)}
; {var1894=org.apache.ibatis.ognl.OgnlParserTokenManager, var540=r0, var3223=$r1, var3530=r2, var207=$i0, var1525=$i1, var987=$c2, var1314=$i5, var3376=$r3}
; {org.apache.ibatis.ognl.OgnlParserTokenManager=var1894, r0=var540, $r1=var3223, r2=var3530, $i0=var207, $i1=var1525, $c2=var987, $i5=var1314, $r3=var3376}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager;	$r1 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>;	r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	$i1 = $i0 - 1;	$c2 = virtualinvoke r2.<java.lang.String: char charAt(int)>($i1);	$i5 = (int) $c2;	lookupswitch($i5) {     case 66: goto $r7 = new java.math.BigDecimal;     case 68: goto $r6 = staticinvoke <java.lang.Double: java.lang.Double valueOf(java.lang.String)>(r2);     case 70: goto $r3 = staticinvoke <java.lang.Float: java.lang.Float valueOf(java.lang.String)>(r2);     case 98: goto $r7 = new java.math.BigDecimal;     case 100: goto $r6 = staticinvoke <java.lang.Double: java.lang.Double valueOf(java.lang.String)>(r2);     case 102: goto $r3 = staticinvoke <java.lang.Float: java.lang.Float valueOf(java.lang.String)>(r2);     default: goto $r6 = staticinvoke <java.lang.Double: java.lang.Double valueOf(java.lang.String)>(r2); };	$r3 = staticinvoke <java.lang.Float: java.lang.Float valueOf(java.lang.String)>(r2);	return $r3
;block_num 2
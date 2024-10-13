(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var238 0)
(declare-sort var1088 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun image/1370455615 (var238) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1088-init () var1088)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun <init>/-1588472495 (var1088 String) void)
(declare-const null-var238 var238)
(declare-const var271 var238) ; Statement: r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager 
(assert (not (= var271 null-var238)))
(define-const var1950 String (image/1370455615 var271)) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image> 
(assert true)
(define-const var1614 String (toString/-2075883882 var1950)) ; Statement: r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var376 Int (length/-134980193 var1614)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var1115 Int (- var376 1)) ; Statement: $i1 = $i0 - 1 
(assert (not (and true (and (> (str.len var1614) var1115) (<= 0 var1115)))))
(check-sat)
(get-model)
(get-unsat-core)
; {image/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var1088-init=([], java.math.BigDecimal), substring/-1240304868=([java.lang.String, int, int], java.lang.String), <init>/-1588472495=([java.math.BigDecimal, java.lang.String], void)}
; {var238=org.apache.ibatis.ognl.OgnlParserTokenManager, var271=r0, var1950=$r1, var1614=r2, var376=$i0, var1115=$i1, var2449=$c2, var2550=$i5, var1088=java.math.BigDecimal, var1003=$r7, var638=$i3, var2952=$i4, var2703=$r5}
; {org.apache.ibatis.ognl.OgnlParserTokenManager=var238, r0=var271, $r1=var1950, r2=var1614, $i0=var376, $i1=var1115, $c2=var2449, $i5=var2550, java.math.BigDecimal=var1088, $r7=var1003, $i3=var638, $i4=var2952, $r5=var2703}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: int length()>": 2,"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager;	$r1 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>;	r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	$i1 = $i0 - 1;	$c2 = virtualinvoke r2.<java.lang.String: char charAt(int)>($i1);	$i5 = (int) $c2;	lookupswitch($i5) {     case 66: goto $r7 = new java.math.BigDecimal;     case 68: goto $r6 = staticinvoke <java.lang.Double: java.lang.Double valueOf(java.lang.String)>(r2);     case 70: goto $r3 = staticinvoke <java.lang.Float: java.lang.Float valueOf(java.lang.String)>(r2);     case 98: goto $r7 = new java.math.BigDecimal;     case 100: goto $r6 = staticinvoke <java.lang.Double: java.lang.Double valueOf(java.lang.String)>(r2);     case 102: goto $r3 = staticinvoke <java.lang.Float: java.lang.Float valueOf(java.lang.String)>(r2);     default: goto $r6 = staticinvoke <java.lang.Double: java.lang.Double valueOf(java.lang.String)>(r2); };	$r7 = new java.math.BigDecimal;	$i3 = virtualinvoke r2.<java.lang.String: int length()>();	$i4 = $i3 - 1;	$r5 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i4);	specialinvoke $r7.<java.math.BigDecimal: void <init>(java.lang.String)>($r5);	return $r7
;block_num 2
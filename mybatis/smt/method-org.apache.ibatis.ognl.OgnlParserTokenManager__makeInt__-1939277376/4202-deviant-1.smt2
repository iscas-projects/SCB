(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3262 0)
(declare-sort var2452 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun image/1370455615 (var3262) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun cast-from-Int-to-var2452 (Int) var2452)
(declare-fun Int_valueOf/696420135 (String Int) Int)
(declare-const null-var3262 var3262)
(declare-const var1284 var3262) ; Statement: r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager 
(assert (not (= var1284 null-var3262)))
(define-const var1449 String (image/1370455615 var1284)) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image> 
(assert true)
(define-const var2775 String (toString/-2075883882 var1449)) ; Statement: r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3711 Int 10) ; Statement: b11 = 10 
(assert (and true (and (> (str.len var2775) 0) (<= 0 0))))
(define-const var2689 Int (charAt/698050440 var2775 0)) ; Statement: $c0 = virtualinvoke r5.<java.lang.String: char charAt(int)>(0) 
(define-const var1040 Int (cast-from-Int-to-Int var2689)) ; Statement: $i13 = (int) $c0 
 ; Statement: if $i13 != 48 goto (branch) 
(assert (not (= var1040 48))) ; Cond: $i13 != 48 
 ; Statement: if b11 != 16 goto $i1 = virtualinvoke r5.<java.lang.String: int length()>() 
(assert (not (= var3711 16))) ; Cond: b11 != 16 
(assert true)
(define-const var2823 Int (length/-134980193 var2775)) ; Statement: $i1 = virtualinvoke r5.<java.lang.String: int length()>() 
(define-const var3650 Int (- var2823 1)) ; Statement: $i2 = $i1 - 1 
(assert (not (and true (and (> (str.len var2775) var3650) (<= 0 var3650)))))
(check-sat)
(get-model)
(get-unsat-core)
; {image/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), length/-134980193=([java.lang.String], int), cast-from-Int-to-var2452=([java.lang.Integer], java.lang.Comparable), Int_valueOf/696420135=([java.lang.String, int], java.lang.Integer)}
; {var3262=org.apache.ibatis.ognl.OgnlParserTokenManager, var1284=r0, var1449=$r1, var2775=r5, var3711=b11, var2689=$c0, var1040=$i13, var2823=$i1, var3650=$i2, var3244=$c3, var3695=$i16, var2452=java.lang.Comparable, var2383=r6}
; {org.apache.ibatis.ognl.OgnlParserTokenManager=var3262, r0=var1284, $r1=var1449, r5=var2775, b11=var3711, $c0=var2689, $i13=var1040, $i1=var2823, $i2=var3650, $c3=var3244, $i16=var3695, java.lang.Comparable=var2452, r6=var2383}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager;	$r1 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>;	r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	b11 = 10;	$c0 = virtualinvoke r5.<java.lang.String: char charAt(int)>(0);	$i13 = (int) $c0;	if $i13 != 48 goto (branch);	if b11 != 16 goto $i1 = virtualinvoke r5.<java.lang.String: int length()>();	$i1 = virtualinvoke r5.<java.lang.String: int length()>();	$i2 = $i1 - 1;	$c3 = virtualinvoke r5.<java.lang.String: char charAt(int)>($i2);	$i16 = (int) $c3;	lookupswitch($i16) {     case 72: goto $r7 = new java.math.BigInteger;     case 76: goto $i4 = virtualinvoke r5.<java.lang.String: int length()>();     case 104: goto $r7 = new java.math.BigInteger;     case 108: goto $i4 = virtualinvoke r5.<java.lang.String: int length()>();     default: goto r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(java.lang.String,int)>(r5, b11); };	r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(java.lang.String,int)>(r5, b11);	return r6
;block_num 5
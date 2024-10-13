(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3188 0)
(declare-sort var192 0)
(declare-sort var738 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun image/1370455615 (var3188) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var192-init () var192)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun <init>/1387902529 (var192 String Int) void)
(declare-fun cast-from-var192-to-var738 (var192) var738)
(declare-const null-var3188 var3188)
(declare-const var3373 var3188) ; Statement: r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager 
(assert (not (= var3373 null-var3188)))
(define-const var484 String (image/1370455615 var3373)) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image> 
(assert true)
(define-const var3607 String (toString/-2075883882 var484)) ; Statement: r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2811 Int 10) ; Statement: b11 = 10 
(assert (and true (and (> (str.len var3607) 0) (<= 0 0))))
(define-const var812 Int (charAt/698050440 var3607 0)) ; Statement: $c0 = virtualinvoke r5.<java.lang.String: char charAt(int)>(0) 
(define-const var3497 Int (cast-from-Int-to-Int var812)) ; Statement: $i13 = (int) $c0 
 ; Statement: if $i13 != 48 goto (branch) 
(assert (not (= var3497 48))) ; Cond: $i13 != 48 
 ; Statement: if b11 != 16 goto $i1 = virtualinvoke r5.<java.lang.String: int length()>() 
(assert (not (= var2811 16))) ; Cond: b11 != 16 
(assert true)
(define-const var2907 Int (length/-134980193 var3607)) ; Statement: $i1 = virtualinvoke r5.<java.lang.String: int length()>() 
(define-const var1772 Int (- var2907 1)) ; Statement: $i2 = $i1 - 1 
(assert (and true (and (> (str.len var3607) var1772) (<= 0 var1772))))
(define-const var368 Int (charAt/698050440 var3607 var1772)) ; Statement: $c3 = virtualinvoke r5.<java.lang.String: char charAt(int)>($i2) 
(define-const var308 Int (cast-from-Int-to-Int var368)) ; Statement: $i16 = (int) $c3 
 ; Statement: lookupswitch($i16) {     case 72: goto $r7 = new java.math.BigInteger;     case 76: goto $i4 = virtualinvoke r5.<java.lang.String: int length()>();     case 104: goto $r7 = new java.math.BigInteger;     case 108: goto $i4 = virtualinvoke r5.<java.lang.String: int length()>();     default: goto r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(java.lang.String,int)>(r5, b11); } 
(assert (and (= var308 72) true)) ; Intersect: Cond: $i16 == 72  and Non Conditional 
(define-const var446 var192 var192-init) ; Statement: $r7 = new java.math.BigInteger 
(assert true)
(define-const var2670 Int (length/-134980193 var3607)) ; Statement: $i6 = virtualinvoke r5.<java.lang.String: int length()>() 
(define-const var3622 Int (- var2670 1)) ; Statement: $i7 = $i6 - 1 
(assert (not (and true (and (>= 0 0) (>= (str.len var3607) var3622) (>= var3622 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {image/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), length/-134980193=([java.lang.String], int), var192-init=([], java.math.BigInteger), substring/-1240304868=([java.lang.String, int, int], java.lang.String), <init>/1387902529=([java.math.BigInteger, java.lang.String, int], void), cast-from-var192-to-var738=([java.math.BigInteger], java.lang.Comparable)}
; {var3188=org.apache.ibatis.ognl.OgnlParserTokenManager, var3373=r0, var484=$r1, var3607=r5, var2811=b11, var812=$c0, var3497=$i13, var2907=$i1, var1772=$i2, var368=$c3, var308=$i16, var192=java.math.BigInteger, var446=$r7, var2670=$i6, var3622=$i7, var1475=$r4, var738=java.lang.Comparable, var673=r6}
; {org.apache.ibatis.ognl.OgnlParserTokenManager=var3188, r0=var3373, $r1=var484, r5=var3607, b11=var2811, $c0=var812, $i13=var3497, $i1=var2907, $i2=var1772, $c3=var368, $i16=var308, java.math.BigInteger=var192, $r7=var446, $i6=var2670, $i7=var3622, $r4=var1475, java.lang.Comparable=var738, r6=var673}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager;	$r1 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>;	r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	b11 = 10;	$c0 = virtualinvoke r5.<java.lang.String: char charAt(int)>(0);	$i13 = (int) $c0;	if $i13 != 48 goto (branch);	if b11 != 16 goto $i1 = virtualinvoke r5.<java.lang.String: int length()>();	$i1 = virtualinvoke r5.<java.lang.String: int length()>();	$i2 = $i1 - 1;	$c3 = virtualinvoke r5.<java.lang.String: char charAt(int)>($i2);	$i16 = (int) $c3;	lookupswitch($i16) {     case 72: goto $r7 = new java.math.BigInteger;     case 76: goto $i4 = virtualinvoke r5.<java.lang.String: int length()>();     case 104: goto $r7 = new java.math.BigInteger;     case 108: goto $i4 = virtualinvoke r5.<java.lang.String: int length()>();     default: goto r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(java.lang.String,int)>(r5, b11); };	$r7 = new java.math.BigInteger;	$i6 = virtualinvoke r5.<java.lang.String: int length()>();	$i7 = $i6 - 1;	$r4 = virtualinvoke r5.<java.lang.String: java.lang.String substring(int,int)>(0, $i7);	specialinvoke $r7.<java.math.BigInteger: void <init>(java.lang.String,int)>($r4, b11);	r6 = $r7;	goto [?= return r6];	return r6
;block_num 5
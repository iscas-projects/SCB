(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1478 0)
(declare-sort var3803 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun image/1370455615 (var1478) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun cast-from-Int-to-var3803 (Int) var3803)
(declare-fun Int_valueOf/1287719355 (String Int) Int)
(declare-const null-var1478 var1478)
(declare-const var2386 var1478) ; Statement: r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager 
(assert (not (= var2386 null-var1478)))
(define-const var2551 String (image/1370455615 var2386)) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image> 
(assert true)
(define-const var322 String (toString/-2075883882 var2551)) ; Statement: r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3157 Int 10) ; Statement: b11 = 10 
(assert (not (and true (and (> (str.len var322) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {image/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), cast-from-Int-to-var3803=([java.lang.Long], java.lang.Comparable), Int_valueOf/1287719355=([java.lang.String, int], java.lang.Long)}
; {var1478=org.apache.ibatis.ognl.OgnlParserTokenManager, var2386=r0, var2551=$r1, var322=r5, var3157=b11, var3671=$c0, var3347=$i13, var2380=$i1, var260=$i2, var1084=$c3, var2686=$i16, var1687=$i4, var2089=$i5, var2363=$r2, var3803=java.lang.Comparable, var1315=r6}
; {org.apache.ibatis.ognl.OgnlParserTokenManager=var1478, r0=var2386, $r1=var2551, r5=var322, b11=var3157, $c0=var3671, $i13=var3347, $i1=var2380, $i2=var260, $c3=var1084, $i16=var2686, $i4=var1687, $i5=var2089, $r2=var2363, java.lang.Comparable=var3803, r6=var1315}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager;	$r1 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image>;	r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	b11 = 10;	$c0 = virtualinvoke r5.<java.lang.String: char charAt(int)>(0);	$i13 = (int) $c0;	if $i13 != 48 goto (branch);	if b11 != 16 goto $i1 = virtualinvoke r5.<java.lang.String: int length()>();	$i1 = virtualinvoke r5.<java.lang.String: int length()>();	$i2 = $i1 - 1;	$c3 = virtualinvoke r5.<java.lang.String: char charAt(int)>($i2);	$i16 = (int) $c3;	lookupswitch($i16) {     case 72: goto $r7 = new java.math.BigInteger;     case 76: goto $i4 = virtualinvoke r5.<java.lang.String: int length()>();     case 104: goto $r7 = new java.math.BigInteger;     case 108: goto $i4 = virtualinvoke r5.<java.lang.String: int length()>();     default: goto r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(java.lang.String,int)>(r5, b11); };	$i4 = virtualinvoke r5.<java.lang.String: int length()>();	$i5 = $i4 - 1;	$r2 = virtualinvoke r5.<java.lang.String: java.lang.String substring(int,int)>(0, $i5);	r6 = staticinvoke <java.lang.Long: java.lang.Long valueOf(java.lang.String,int)>($r2, b11);	goto [?= return r6];	return r6
;block_num 5
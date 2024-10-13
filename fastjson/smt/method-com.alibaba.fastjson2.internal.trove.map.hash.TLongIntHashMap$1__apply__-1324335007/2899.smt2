(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3455 0)
(declare-sort var2520 0)
(declare-sort var2102 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun first/1164893934 (var3455) Bool)
(declare-fun val$buf/1164893934 (var3455) String)
(declare-fun append/-1031950772 (String var2520) String)
(declare-fun cast-from-Int-to-var2520 (Int) var2520)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2102_valueOf/1602327315 (Bool) var2102)
(declare-const null-var3455 var3455)
(declare-const null-Int Int)
(declare-const var1493 var3455) ; Statement: r0 := @this: com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1 
(assert (not (= var1493 null-var3455)))
(declare-const var1113 Int) ; Statement: r2 := @parameter0: java.lang.Long 
(assert (not (= var1113 null-Int)))
(declare-const var1970 Int) ; Statement: r5 := @parameter1: java.lang.Integer 
(assert (not (= var1970 null-Int)))
(define-const var2622 Bool (first/1164893934 var1493)) ; Statement: $z0 = r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: boolean first> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: java.lang.StringBuilder val$buf> 
(assert (not (= (ite var2622 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var1493!1 var3455)
(assert (not (= var1493!1 null-var3455)))
(assert (= (first/1164893934 var1493!1) (ite (= 1 0) true false))) ; Statement: r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: boolean first> = 0 
 ; Statement: goto [?= $r3 = r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: java.lang.StringBuilder val$buf>] 
(assert true) ; Non Conditional
(define-const var2781 String (val$buf/1164893934 var1493!1)) ; Statement: $r3 = r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: java.lang.StringBuilder val$buf> 
(assert true)
;(assert (append/-1031950772 var2781 (cast-from-Int-to-var2520 var1113))) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2781!1 String)
(assert (str.prefixof var2781 var2781!1))
(define-const var776 String (val$buf/1164893934 var1493!1)) ; Statement: $r4 = r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: java.lang.StringBuilder val$buf> 
(assert true)
;(assert (append/672562846 var776 "=")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var776!1 String)
(assert (= var776!1 (str.++ var776 "=")))
(define-const var2920 String (val$buf/1164893934 var1493!1)) ; Statement: $r6 = r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: java.lang.StringBuilder val$buf> 
(assert true)
;(assert (append/-1031950772 var2920 (cast-from-Int-to-var2520 var1970))) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var2920!1 String)
(assert (str.prefixof var2920 var2920!1))
(define-const var3053 var2102 (var2102_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r7 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {first/1164893934=([com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1], boolean), val$buf/1164893934=([com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-Int-to-var2520=([java.lang.Long], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2102_valueOf/1602327315=([boolean], java.lang.Boolean)}
; {var3455=com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1, var1493=r0, var1113=r2, var1970=r5, var2622=$z0, var2781=$r3, var2520=java.lang.Object, var776=$r4, var2920=$r6, var2102=java.lang.Boolean, var3053=$r7}
; {com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1=var3455, r0=var1493, r2=var1113, r5=var1970, $z0=var2622, $r3=var2781, java.lang.Object=var2520, $r4=var776, $r6=var2920, java.lang.Boolean=var2102, $r7=var3053}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1;	r2 := @parameter0: java.lang.Long;	r5 := @parameter1: java.lang.Integer;	$z0 = r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: boolean first>;	if $z0 == 0 goto $r1 = r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: java.lang.StringBuilder val$buf>;	r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: boolean first> = 0;	goto [?= $r3 = r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: java.lang.StringBuilder val$buf>];	$r3 = r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: java.lang.StringBuilder val$buf>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r4 = r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: java.lang.StringBuilder val$buf>;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r6 = r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: java.lang.StringBuilder val$buf>;	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r7 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	return $r7
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3339 0)
(declare-sort var1058 0)
(declare-sort var27 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun first/1164893934 (var3339) Bool)
(declare-fun val$buf/1164893934 (var3339) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1058) String)
(declare-fun cast-from-Int-to-var1058 (Int) var1058)
(declare-fun var27_valueOf/1602327315 (Bool) var27)
(declare-const null-var3339 var3339)
(declare-const null-Int Int)
(declare-const var2154 var3339) ; Statement: r0 := @this: com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1 
(assert (not (= var2154 null-var3339)))
(declare-const var1043 Int) ; Statement: r2 := @parameter0: java.lang.Long 
(assert (not (= var1043 null-Int)))
(declare-const var2664 Int) ; Statement: r5 := @parameter1: java.lang.Integer 
(assert (not (= var2664 null-Int)))
(define-const var3754 Bool (first/1164893934 var2154)) ; Statement: $z0 = r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: boolean first> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: java.lang.StringBuilder val$buf> 
(assert (= (ite var3754 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2791 String (val$buf/1164893934 var2154)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: java.lang.StringBuilder val$buf> 
(assert true)
;(assert (append/672562846 var2791 ", ")) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2791!1 String)
(assert (= var2791!1 (str.++ var2791 ", ")))
(assert true) ; Non Conditional
(define-const var2919 String (val$buf/1164893934 var2154)) ; Statement: $r3 = r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: java.lang.StringBuilder val$buf> 
(assert true)
;(assert (append/-1031950772 var2919 (cast-from-Int-to-var1058 var1043))) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2919!1 String)
(assert (str.prefixof var2919 var2919!1))
(define-const var1537 String (val$buf/1164893934 var2154)) ; Statement: $r4 = r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: java.lang.StringBuilder val$buf> 
(assert true)
;(assert (append/672562846 var1537 "=")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var1537!1 String)
(assert (= var1537!1 (str.++ var1537 "=")))
(define-const var3539 String (val$buf/1164893934 var2154)) ; Statement: $r6 = r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: java.lang.StringBuilder val$buf> 
(assert true)
;(assert (append/-1031950772 var3539 (cast-from-Int-to-var1058 var2664))) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var3539!1 String)
(assert (str.prefixof var3539 var3539!1))
(define-const var1935 var27 (var27_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r7 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {first/1164893934=([com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1], boolean), val$buf/1164893934=([com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-Int-to-var1058=([java.lang.Long], java.lang.Object), var27_valueOf/1602327315=([boolean], java.lang.Boolean)}
; {var3339=com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1, var2154=r0, var1043=r2, var2664=r5, var3754=$z0, var2791=$r1, var2919=$r3, var1058=java.lang.Object, var1537=$r4, var3539=$r6, var27=java.lang.Boolean, var1935=$r7}
; {com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1=var3339, r0=var2154, r2=var1043, r5=var2664, $z0=var3754, $r1=var2791, $r3=var2919, java.lang.Object=var1058, $r4=var1537, $r6=var3539, java.lang.Boolean=var27, $r7=var1935}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2}
;stmts r0 := @this: com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1;	r2 := @parameter0: java.lang.Long;	r5 := @parameter1: java.lang.Integer;	$z0 = r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: boolean first>;	if $z0 == 0 goto $r1 = r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: java.lang.StringBuilder val$buf>;	$r1 = r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: java.lang.StringBuilder val$buf>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r3 = r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: java.lang.StringBuilder val$buf>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r4 = r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: java.lang.StringBuilder val$buf>;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r6 = r0.<com.alibaba.fastjson2.internal.trove.map.hash.TLongIntHashMap$1: java.lang.StringBuilder val$buf>;	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r7 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	return $r7
;block_num 3
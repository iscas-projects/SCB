(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1100 0)
(declare-sort var228 0)
(declare-sort var1514 0)
(declare-sort var3172 0)
(declare-sort var960 0)
(declare-sort var1747 0)
(declare-sort var3062 0)
(declare-sort var1358 0)
(declare-sort var3835 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun decode/1458458301 (var1100 String) (Array Int Int))
(declare-fun var3172_stream/-1228519031 ((Array Int Int)) var1514)
(declare-fun var1747_bootstrap$/-206050104 () var960)
(declare-fun var1514_mapToObj/1378295357 (var1514 var960) var3062)
(declare-fun var3835_bootstrap$/1645574423 (String) var1358)
(declare-fun var3062_forEach/1037804367 (var3062 var1358) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1100 var1100)
(declare-const null-String String)
(declare-const var2832 var1100) ; Statement: r2 := @this: cn.hutool.core.codec.Hashids 
(assert (not (= var2832 null-var1100)))
(declare-const var1333 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1333 null-String)))
 ; Statement: if r0 != null goto $r1 = new java.lang.StringBuilder 
(assert (not (= var1333 null-String))) ; Cond: r0 != null 
(define-const var2624 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2624)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2624!1 String)
(assert (= var2624!1 ""))
(assert true)
(define-const var2778 (Array Int Int) (decode/1458458301 var2832 var1333)) ; Statement: $r3 = virtualinvoke r2.<cn.hutool.core.codec.Hashids: long[] decode(java.lang.String)>(r0) 
(define-const var2870 var1514 (var3172_stream/-1228519031 var2778)) ; Statement: $r5 = staticinvoke <java.util.Arrays: java.util.stream.LongStream stream(long[])>($r3) 
(define-const var2895 var960 var1747_bootstrap$/-206050104) ; Statement: $r4 = staticinvoke <cn.hutool.core.codec.Hashids$toHexString__137: java.util.function.LongFunction bootstrap$()>() 
(define-const var436 var3062 (var1514_mapToObj/1378295357 var2870 var2895)) ; Statement: $r7 = interfaceinvoke $r5.<java.util.stream.LongStream: java.util.stream.Stream mapToObj(java.util.function.LongFunction)>($r4) 
(define-const var323 var1358 (var3835_bootstrap$/1645574423 var2624!1)) ; Statement: $r6 = staticinvoke <cn.hutool.core.codec.Hashids$lambda_decodeToHex_3__144: java.util.function.Consumer bootstrap$(java.lang.StringBuilder)>($r1) 
;(assert (var3062_forEach/1037804367 var436 var323)) ; Statement: interfaceinvoke $r7.<java.util.stream.Stream: void forEach(java.util.function.Consumer)>($r6) 

(declare-const var436!1 var3062)
(declare-const var323!1 var1358)
(assert true)
(define-const var182 String (toString/-2075883882 var2624!1)) ; Statement: $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), decode/1458458301=([cn.hutool.core.codec.Hashids, java.lang.String], long[]), var3172_stream/-1228519031=([long[]], java.util.stream.LongStream), var1747_bootstrap$/-206050104=([], java.util.function.LongFunction), var1514_mapToObj/1378295357=([java.util.stream.LongStream, java.util.function.LongFunction], java.util.stream.Stream), var3835_bootstrap$/1645574423=([java.lang.StringBuilder], java.util.function.Consumer), var3062_forEach/1037804367=([java.util.stream.Stream, java.util.function.Consumer], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1100=cn.hutool.core.codec.Hashids, var2832=r2, var1333=r0, var228=null_type, var2624=$r1, var2778=$r3, var1514=java.util.stream.LongStream, var3172=java.util.Arrays, var2870=$r5, var960=java.util.function.LongFunction, var1747=cn.hutool.core.codec.Hashids$toHexString__137, var2895=$r4, var3062=java.util.stream.Stream, var436=$r7, var1358=java.util.function.Consumer, var3835=cn.hutool.core.codec.Hashids$lambda_decodeToHex_3__144, var323=$r6, var182=$r8}
; {cn.hutool.core.codec.Hashids=var1100, r2=var2832, r0=var1333, null_type=var228, $r1=var2624, $r3=var2778, java.util.stream.LongStream=var1514, java.util.Arrays=var3172, $r5=var2870, java.util.function.LongFunction=var960, cn.hutool.core.codec.Hashids$toHexString__137=var1747, $r4=var2895, java.util.stream.Stream=var3062, $r7=var436, java.util.function.Consumer=var1358, cn.hutool.core.codec.Hashids$lambda_decodeToHex_3__144=var3835, $r6=var323, $r8=var182}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: cn.hutool.core.codec.Hashids;	r0 := @parameter0: java.lang.String;	if r0 != null goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<cn.hutool.core.codec.Hashids: long[] decode(java.lang.String)>(r0);	$r5 = staticinvoke <java.util.Arrays: java.util.stream.LongStream stream(long[])>($r3);	$r4 = staticinvoke <cn.hutool.core.codec.Hashids$toHexString__137: java.util.function.LongFunction bootstrap$()>();	$r7 = interfaceinvoke $r5.<java.util.stream.LongStream: java.util.stream.Stream mapToObj(java.util.function.LongFunction)>($r4);	$r6 = staticinvoke <cn.hutool.core.codec.Hashids$lambda_decodeToHex_3__144: java.util.function.Consumer bootstrap$(java.lang.StringBuilder)>($r1);	interfaceinvoke $r7.<java.util.stream.Stream: void forEach(java.util.function.Consumer)>($r6);	$r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2
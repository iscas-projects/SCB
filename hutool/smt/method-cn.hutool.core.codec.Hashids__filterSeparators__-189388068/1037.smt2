(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2578 0)
(declare-sort var2685 0)
(declare-sort var1091 0)
(declare-sort var2876 0)
(declare-sort var3756 0)
(declare-sort var1165 0)
(declare-sort var2286 0)
(declare-sort var1043 0)
(declare-sort var1068 0)
(declare-sort var3446 0)
(declare-sort var3557 0)
(declare-sort var225 0)
(declare-sort var3276 0)
(declare-sort var3604 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var2685_range/1921392704 (Int Int) var2685)
(declare-fun var2876_bootstrap$/-415749374 ((Array Int Int)) var1091)
(declare-fun var2685_mapToObj/1936014041 (var2685 var1091) var3756)
(declare-fun var2286_toSet/773895321 () var1165)
(declare-fun var3756_collect/-2050842585 (var3756 var1165) var1043)
(declare-fun cast-from-var1043-to-var1068 (var1043) var1068)
(declare-fun var3446_bootstrap$/23065506 ((Array Int Int)) var1091)
(declare-fun getClass/1258963082 (var1043) ClassObject)
(declare-fun cast-from-var1068-to-var1043 (var1068) var1043)
(declare-fun var225_bootstrap$/-18126296 (var1068) var3557)
(declare-fun var3756_filter/320182972 (var3756 var3557) var3756)
(declare-fun var3604_bootstrap$/609801317 () var3276)
(declare-fun var3756_map/130902797 (var3756 var3276) var3756)
(declare-fun var2286_joining/1485469608 () var1165)
(declare-fun cast-from-var1043-to-String (var1043) String)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-const null-var2578 var2578)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3757 var2578) ; Statement: r19 := @this: cn.hutool.core.codec.Hashids 
(assert (not (= var3757 null-var2578)))
(declare-const var105 (Array Int Int)) ; Statement: r7 := @parameter0: char[] 
(assert (not (= var105 null-__Array__Int__Int__)))
(declare-const var1124 (Array Int Int)) ; Statement: r0 := @parameter1: char[] 
(assert (not (= var1124 null-__Array__Int__Int__)))
(define-const var2383 Int (getLength-Arr-Int-1 var1124)) ; Statement: $i0 = lengthof r0 
(define-const var2829 var2685 (var2685_range/1921392704 0 var2383)) ; Statement: $r2 = staticinvoke <java.util.stream.IntStream: java.util.stream.IntStream range(int,int)>(0, $i0) 
(define-const var2440 var1091 (var2876_bootstrap$/-415749374 var1124)) ; Statement: $r1 = staticinvoke <cn.hutool.core.codec.Hashids$lambda_filterSeparators_13__141: java.util.function.IntFunction bootstrap$(char[])>(r0) 
(define-const var1823 var3756 (var2685_mapToObj/1936014041 var2829 var2440)) ; Statement: $r4 = interfaceinvoke $r2.<java.util.stream.IntStream: java.util.stream.Stream mapToObj(java.util.function.IntFunction)>($r1) 
(define-const var1826 var1165 var2286_toSet/773895321) ; Statement: $r3 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector toSet()>() 
(define-const var2725 var1043 (var3756_collect/-2050842585 var1823 var1826)) ; Statement: $r5 = interfaceinvoke $r4.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r3) 
(define-const var3270 var1068 (cast-from-var1043-to-var1068 var2725)) ; Statement: r6 = (java.util.Set) $r5 
(define-const var459 Int (getLength-Arr-Int-1 var105)) ; Statement: $i1 = lengthof r7 
(define-const var2012 var2685 (var2685_range/1921392704 0 var459)) ; Statement: $r9 = staticinvoke <java.util.stream.IntStream: java.util.stream.IntStream range(int,int)>(0, $i1) 
(define-const var1094 var1091 (var3446_bootstrap$/23065506 var105)) ; Statement: $r8 = staticinvoke <cn.hutool.core.codec.Hashids$lambda_filterSeparators_14__142: java.util.function.IntFunction bootstrap$(char[])>(r7) 
(define-const var2636 var3756 (var2685_mapToObj/1936014041 var2012 var1094)) ; Statement: $r11 = interfaceinvoke $r9.<java.util.stream.IntStream: java.util.stream.Stream mapToObj(java.util.function.IntFunction)>($r8) 
(assert true)
;(assert (getClass/1258963082 (cast-from-var1068-to-var1043 var3270))) ; Statement: virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>() 

(declare-const var3270!1 var1068)
(define-const var1278 var3557 (var225_bootstrap$/-18126296 var3270!1)) ; Statement: $r10 = staticinvoke <cn.hutool.core.codec.Hashids$contains__147: java.util.function.Predicate bootstrap$(java.util.Set)>(r6) 
(define-const var2850 var3756 (var3756_filter/320182972 var2636 var1278)) ; Statement: $r13 = interfaceinvoke $r11.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r10) 
(define-const var3559 var3276 var3604_bootstrap$/609801317) ; Statement: $r12 = staticinvoke <cn.hutool.core.codec.Hashids$lambda_filterSeparators_15__152: java.util.function.Function bootstrap$()>() 
(define-const var3098 var3756 (var3756_map/130902797 var2850 var3559)) ; Statement: $r15 = interfaceinvoke $r13.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r12) 
(define-const var3486 var1165 var2286_joining/1485469608) ; Statement: $r14 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining()>() 
(define-const var3613 var1043 (var3756_collect/-2050842585 var3098 var3486)) ; Statement: $r16 = interfaceinvoke $r15.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r14) 
(define-const var1993 String (cast-from-var1043-to-String var3613)) ; Statement: $r17 = (java.lang.String) $r16 
(assert true)
(define-const var2891 (Array Int Int) (toCharArray/415275702 var1993)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.String: char[] toCharArray()>() 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([char[]], int), var2685_range/1921392704=([int, int], java.util.stream.IntStream), var2876_bootstrap$/-415749374=([char[]], java.util.function.IntFunction), var2685_mapToObj/1936014041=([java.util.stream.IntStream, java.util.function.IntFunction], java.util.stream.Stream), var2286_toSet/773895321=([], java.util.stream.Collector), var3756_collect/-2050842585=([java.util.stream.Stream, java.util.stream.Collector], java.lang.Object), cast-from-var1043-to-var1068=([java.lang.Object], java.util.Set), var3446_bootstrap$/23065506=([char[]], java.util.function.IntFunction), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1068-to-var1043=([java.util.Set], java.lang.Object), var225_bootstrap$/-18126296=([java.util.Set], java.util.function.Predicate), var3756_filter/320182972=([java.util.stream.Stream, java.util.function.Predicate], java.util.stream.Stream), var3604_bootstrap$/609801317=([], java.util.function.Function), var3756_map/130902797=([java.util.stream.Stream, java.util.function.Function], java.util.stream.Stream), var2286_joining/1485469608=([], java.util.stream.Collector), cast-from-var1043-to-String=([java.lang.Object], java.lang.String), toCharArray/415275702=([java.lang.String], char[])}
; {var2578=cn.hutool.core.codec.Hashids, var3757=r19, var105=r7, var1124=r0, var2383=$i0, var2685=java.util.stream.IntStream, var2829=$r2, var1091=java.util.function.IntFunction, var2876=cn.hutool.core.codec.Hashids$lambda_filterSeparators_13__141, var2440=$r1, var3756=java.util.stream.Stream, var1823=$r4, var1165=java.util.stream.Collector, var2286=java.util.stream.Collectors, var1826=$r3, var1043=java.lang.Object, var2725=$r5, var1068=java.util.Set, var3270=r6, var459=$i1, var2012=$r9, var3446=cn.hutool.core.codec.Hashids$lambda_filterSeparators_14__142, var1094=$r8, var2636=$r11, var3557=java.util.function.Predicate, var225=cn.hutool.core.codec.Hashids$contains__147, var1278=$r10, var2850=$r13, var3276=java.util.function.Function, var3604=cn.hutool.core.codec.Hashids$lambda_filterSeparators_15__152, var3559=$r12, var3098=$r15, var3486=$r14, var3613=$r16, var1993=$r17, var2891=$r18}
; {cn.hutool.core.codec.Hashids=var2578, r19=var3757, r7=var105, r0=var1124, $i0=var2383, java.util.stream.IntStream=var2685, $r2=var2829, java.util.function.IntFunction=var1091, cn.hutool.core.codec.Hashids$lambda_filterSeparators_13__141=var2876, $r1=var2440, java.util.stream.Stream=var3756, $r4=var1823, java.util.stream.Collector=var1165, java.util.stream.Collectors=var2286, $r3=var1826, java.lang.Object=var1043, $r5=var2725, java.util.Set=var1068, r6=var3270, $i1=var459, $r9=var2012, cn.hutool.core.codec.Hashids$lambda_filterSeparators_14__142=var3446, $r8=var1094, $r11=var2636, java.util.function.Predicate=var3557, cn.hutool.core.codec.Hashids$contains__147=var225, $r10=var1278, $r13=var2850, java.util.function.Function=var3276, cn.hutool.core.codec.Hashids$lambda_filterSeparators_15__152=var3604, $r12=var3559, $r15=var3098, $r14=var3486, $r16=var3613, $r17=var1993, $r18=var2891}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r19 := @this: cn.hutool.core.codec.Hashids;	r7 := @parameter0: char[];	r0 := @parameter1: char[];	$i0 = lengthof r0;	$r2 = staticinvoke <java.util.stream.IntStream: java.util.stream.IntStream range(int,int)>(0, $i0);	$r1 = staticinvoke <cn.hutool.core.codec.Hashids$lambda_filterSeparators_13__141: java.util.function.IntFunction bootstrap$(char[])>(r0);	$r4 = interfaceinvoke $r2.<java.util.stream.IntStream: java.util.stream.Stream mapToObj(java.util.function.IntFunction)>($r1);	$r3 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector toSet()>();	$r5 = interfaceinvoke $r4.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r3);	r6 = (java.util.Set) $r5;	$i1 = lengthof r7;	$r9 = staticinvoke <java.util.stream.IntStream: java.util.stream.IntStream range(int,int)>(0, $i1);	$r8 = staticinvoke <cn.hutool.core.codec.Hashids$lambda_filterSeparators_14__142: java.util.function.IntFunction bootstrap$(char[])>(r7);	$r11 = interfaceinvoke $r9.<java.util.stream.IntStream: java.util.stream.Stream mapToObj(java.util.function.IntFunction)>($r8);	virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>();	$r10 = staticinvoke <cn.hutool.core.codec.Hashids$contains__147: java.util.function.Predicate bootstrap$(java.util.Set)>(r6);	$r13 = interfaceinvoke $r11.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r10);	$r12 = staticinvoke <cn.hutool.core.codec.Hashids$lambda_filterSeparators_15__152: java.util.function.Function bootstrap$()>();	$r15 = interfaceinvoke $r13.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r12);	$r14 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining()>();	$r16 = interfaceinvoke $r15.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r14);	$r17 = (java.lang.String) $r16;	$r18 = virtualinvoke $r17.<java.lang.String: char[] toCharArray()>();	return $r18
;block_num 1
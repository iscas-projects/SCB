(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3824 0)
(declare-sort var3632 0)
(declare-sort var933 0)
(declare-sort var767 0)
(declare-sort var2597 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun loaderMap/-1825562998 (var3824) var933)
(declare-fun toUpperCase/398655892 (String var767) String)
(declare-fun var933_containsKey/1715618542 (var933 var2597) Bool)
(declare-fun cast-from-String-to-var2597 (String) var2597)
(declare-const null-var3824 var3824)
(declare-const null-String String)
(declare-const var767-ENGLISH var767)
(declare-const var2364 var3824) ; Statement: r0 := @this: org.apache.ibatis.executor.loader.ResultLoaderMap 
(assert (not (= var2364 null-var3824)))
(declare-const var417 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var417 null-String)))
(define-const var2867 var933 (loaderMap/-1825562998 var2364)) ; Statement: $r3 = r0.<org.apache.ibatis.executor.loader.ResultLoaderMap: java.util.Map loaderMap> 
(define-const var3295 var767 var767-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var796 String (toUpperCase/398655892 var417 var3295)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2) 
(define-const var146 Bool (var933_containsKey/1715618542 var2867 (cast-from-String-to-var2597 var796))) ; Statement: $z0 = interfaceinvoke $r3.<java.util.Map: boolean containsKey(java.lang.Object)>($r4) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {loaderMap/-1825562998=([org.apache.ibatis.executor.loader.ResultLoaderMap], java.util.Map), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), var933_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-String-to-var2597=([java.lang.String], java.lang.Object)}
; {var3824=org.apache.ibatis.executor.loader.ResultLoaderMap, var2364=r0, var417=r1, var3632=null_type, var933=java.util.Map, var2867=$r3, var767=java.util.Locale, var3295=$r2, var796=$r4, var2597=java.lang.Object, var146=$z0}
; {org.apache.ibatis.executor.loader.ResultLoaderMap=var3824, r0=var2364, r1=var417, null_type=var3632, java.util.Map=var933, $r3=var2867, java.util.Locale=var767, $r2=var3295, $r4=var796, java.lang.Object=var2597, $z0=var146}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.apache.ibatis.executor.loader.ResultLoaderMap;	r1 := @parameter0: java.lang.String;	$r3 = r0.<org.apache.ibatis.executor.loader.ResultLoaderMap: java.util.Map loaderMap>;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2);	$z0 = interfaceinvoke $r3.<java.util.Map: boolean containsKey(java.lang.Object)>($r4);	return $z0
;block_num 1
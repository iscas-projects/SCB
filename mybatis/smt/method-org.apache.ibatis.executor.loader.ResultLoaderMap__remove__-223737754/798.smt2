(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1782 0)
(declare-sort var1629 0)
(declare-sort var3724 0)
(declare-sort var1631 0)
(declare-sort var3267 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun loaderMap/-1825562998 (var1782) var3724)
(declare-fun toUpperCase/398655892 (String var1631) String)
(declare-fun var3724_remove/-1201052315 (var3724 var3267) var3267)
(declare-fun cast-from-String-to-var3267 (String) var3267)
(declare-const null-var1782 var1782)
(declare-const null-String String)
(declare-const var1631-ENGLISH var1631)
(declare-const var1219 var1782) ; Statement: r0 := @this: org.apache.ibatis.executor.loader.ResultLoaderMap 
(assert (not (= var1219 null-var1782)))
(declare-const var153 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var153 null-String)))
(define-const var3624 var3724 (loaderMap/-1825562998 var1219)) ; Statement: $r3 = r0.<org.apache.ibatis.executor.loader.ResultLoaderMap: java.util.Map loaderMap> 
(define-const var2893 var1631 var1631-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3778 String (toUpperCase/398655892 var153 var2893)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2) 
;(assert (var3724_remove/-1201052315 var3624 (cast-from-String-to-var3267 var3778))) ; Statement: interfaceinvoke $r3.<java.util.Map: java.lang.Object remove(java.lang.Object)>($r4) 

(declare-const var3624!1 var3724)
(declare-const var3778!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {loaderMap/-1825562998=([org.apache.ibatis.executor.loader.ResultLoaderMap], java.util.Map), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), var3724_remove/-1201052315=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3267=([java.lang.String], java.lang.Object)}
; {var1782=org.apache.ibatis.executor.loader.ResultLoaderMap, var1219=r0, var153=r1, var1629=null_type, var3724=java.util.Map, var3624=$r3, var1631=java.util.Locale, var2893=$r2, var3778=$r4, var3267=java.lang.Object}
; {org.apache.ibatis.executor.loader.ResultLoaderMap=var1782, r0=var1219, r1=var153, null_type=var1629, java.util.Map=var3724, $r3=var3624, java.util.Locale=var1631, $r2=var2893, $r4=var3778, java.lang.Object=var3267}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.apache.ibatis.executor.loader.ResultLoaderMap;	r1 := @parameter0: java.lang.String;	$r3 = r0.<org.apache.ibatis.executor.loader.ResultLoaderMap: java.util.Map loaderMap>;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2);	interfaceinvoke $r3.<java.util.Map: java.lang.Object remove(java.lang.Object)>($r4);	return
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3596 0)
(declare-sort var1661 0)
(declare-sort var3745 0)
(declare-sort var3709 0)
(declare-sort var2279 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun defaultContentType/-2044524774 (var3596) var3745)
(declare-fun toLowerCase/1946809429 (String var3709) String)
(declare-fun put/-1214003037 (var3745 var2279 var2279) var2279)
(declare-fun cast-from-String-to-var2279 (String) var2279)
(declare-const null-var3596 var3596)
(declare-const null-String String)
(declare-const var3709-ROOT var3709)
(declare-const var931 var3596) ; Statement: r0 := @this: org.apache.poi.openxml4j.opc.internal.ContentTypeManager 
(assert (not (= var931 null-var3596)))
(declare-const var1645 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1645 null-String)))
(declare-const var1516 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1516 null-String)))
(define-const var1449 var3745 (defaultContentType/-2044524774 var931)) ; Statement: $r3 = r0.<org.apache.poi.openxml4j.opc.internal.ContentTypeManager: java.util.TreeMap defaultContentType> 
(define-const var1266 var3709 var3709-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1986 String (toLowerCase/1946809429 var1645 var1266)) ; Statement: $r5 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(assert true)
;(assert (put/-1214003037 var1449 (cast-from-String-to-var2279 var1986) (cast-from-String-to-var2279 var1516))) ; Statement: virtualinvoke $r3.<java.util.TreeMap: java.lang.Object put(java.lang.Object,java.lang.Object)>($r5, r4) 

(declare-const var1449!1 var3745)
(declare-const var1986!1 String)
(declare-const var1516!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultContentType/-2044524774=([org.apache.poi.openxml4j.opc.internal.ContentTypeManager], java.util.TreeMap), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), put/-1214003037=([java.util.TreeMap, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var2279=([java.lang.String], java.lang.Object)}
; {var3596=org.apache.poi.openxml4j.opc.internal.ContentTypeManager, var931=r0, var1645=r1, var1661=null_type, var1516=r4, var3745=java.util.TreeMap, var1449=$r3, var3709=java.util.Locale, var1266=$r2, var1986=$r5, var2279=java.lang.Object}
; {org.apache.poi.openxml4j.opc.internal.ContentTypeManager=var3596, r0=var931, r1=var1645, null_type=var1661, r4=var1516, java.util.TreeMap=var3745, $r3=var1449, java.util.Locale=var3709, $r2=var1266, $r5=var1986, java.lang.Object=var2279}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.apache.poi.openxml4j.opc.internal.ContentTypeManager;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	$r3 = r0.<org.apache.poi.openxml4j.opc.internal.ContentTypeManager: java.util.TreeMap defaultContentType>;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r5 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	virtualinvoke $r3.<java.util.TreeMap: java.lang.Object put(java.lang.Object,java.lang.Object)>($r5, r4);	return
;block_num 1
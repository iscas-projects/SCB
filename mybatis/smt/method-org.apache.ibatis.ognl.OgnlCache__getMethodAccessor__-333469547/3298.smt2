(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2272 0)
(declare-sort var498 0)
(declare-sort var2768 0)
(declare-sort var3955 0)
(declare-sort var2657 0)
(declare-sort var2538 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun methodAccessors/1493318390 (var2272) var498)
(declare-fun var3955_getHandler/-1171995976 (ClassObject var498) var2768)
(declare-fun cast-from-var2768-to-var2657 (var2768) var2657)
(declare-fun var2538-init () var2538)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2768) String)
(declare-fun cast-from-ClassObject-to-var2768 (ClassObject) var2768)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-434000407 (var2538 String) void)
(declare-const null-var2272 var2272)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2657 var2657)
(declare-const var306 var2272) ; Statement: r1 := @this: org.apache.ibatis.ognl.OgnlCache 
(assert (not (= var306 null-var2272)))
(declare-const var3244 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3244 null-ClassObject)))
(define-const var908 var498 (methodAccessors/1493318390 var306)) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.OgnlCache: org.apache.ibatis.ognl.internal.ClassCache methodAccessors> 
(define-const var3992 var2768 (var3955_getHandler/-1171995976 var3244 var908)) ; Statement: $r3 = staticinvoke <org.apache.ibatis.ognl.internal.ClassCacheHandler: java.lang.Object getHandler(java.lang.Class,org.apache.ibatis.ognl.internal.ClassCache)>(r0, $r2) 
(define-const var3078 var2657 (cast-from-var2768-to-var2657 var3992)) ; Statement: r4 = (org.apache.ibatis.ognl.MethodAccessor) $r3 
 ; Statement: if r4 == null goto $r5 = new org.apache.ibatis.ognl.OgnlException 
(assert (= var3078 null-var2657)) ; Cond: r4 == null 
(define-const var762 var2538 var2538-init) ; Statement: $r5 = new org.apache.ibatis.ognl.OgnlException 
(define-const var648 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var648)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var648!1 String)
(assert (= var648!1 ""))
(assert true)
(define-const var3819 String (append/672562846 var648!1 "No method accessor for ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No method accessor for ") 
(declare-const var648!2 String)
(assert (= var648!2 (str.++ var648!1 "No method accessor for ")))
(assert true)
(define-const var1914 String (append/-1031950772 var3819 (cast-from-ClassObject-to-var2768 var3244))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3819!1 String)
(assert (str.prefixof var3819 var3819!1))
(assert true)
(define-const var3366 String (toString/-2075883882 var1914)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-434000407 var762 var3366)) ; Statement: specialinvoke $r5.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String)>($r9) 

(declare-const var762!1 var2538)
(declare-const var3366!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {methodAccessors/1493318390=([org.apache.ibatis.ognl.OgnlCache], org.apache.ibatis.ognl.internal.ClassCache), var3955_getHandler/-1171995976=([java.lang.Class, org.apache.ibatis.ognl.internal.ClassCache], java.lang.Object), cast-from-var2768-to-var2657=([java.lang.Object], org.apache.ibatis.ognl.MethodAccessor), var2538-init=([], org.apache.ibatis.ognl.OgnlException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2768=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-434000407=([org.apache.ibatis.ognl.OgnlException, java.lang.String], void)}
; {var2272=org.apache.ibatis.ognl.OgnlCache, var306=r1, var3244=r0, var498=org.apache.ibatis.ognl.internal.ClassCache, var908=$r2, var2768=java.lang.Object, var3955=org.apache.ibatis.ognl.internal.ClassCacheHandler, var3992=$r3, var2657=org.apache.ibatis.ognl.MethodAccessor, var3078=r4, var2538=org.apache.ibatis.ognl.OgnlException, var762=$r5, var648=$r6, var3819=$r7, var1914=$r8, var3366=$r9}
; {org.apache.ibatis.ognl.OgnlCache=var2272, r1=var306, r0=var3244, org.apache.ibatis.ognl.internal.ClassCache=var498, $r2=var908, java.lang.Object=var2768, org.apache.ibatis.ognl.internal.ClassCacheHandler=var3955, $r3=var3992, org.apache.ibatis.ognl.MethodAccessor=var2657, r4=var3078, org.apache.ibatis.ognl.OgnlException=var2538, $r5=var762, $r6=var648, $r7=var3819, $r8=var1914, $r9=var3366}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.OgnlCache;	r0 := @parameter0: java.lang.Class;	$r2 = r1.<org.apache.ibatis.ognl.OgnlCache: org.apache.ibatis.ognl.internal.ClassCache methodAccessors>;	$r3 = staticinvoke <org.apache.ibatis.ognl.internal.ClassCacheHandler: java.lang.Object getHandler(java.lang.Class,org.apache.ibatis.ognl.internal.ClassCache)>(r0, $r2);	r4 = (org.apache.ibatis.ognl.MethodAccessor) $r3;	if r4 == null goto $r5 = new org.apache.ibatis.ognl.OgnlException;	$r5 = new org.apache.ibatis.ognl.OgnlException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No method accessor for ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1736 0)
(declare-sort var1556 0)
(declare-sort var891 0)
(declare-sort var2903 0)
(declare-sort var2275 0)
(declare-sort var1540 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyAccessors/1493318390 (var1736) var1556)
(declare-fun var2903_getHandler/-1171995976 (ClassObject var1556) var891)
(declare-fun cast-from-var891-to-var2275 (var891) var2275)
(declare-fun var1540-init () var1540)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var891) String)
(declare-fun cast-from-ClassObject-to-var891 (ClassObject) var891)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-434000407 (var1540 String) void)
(declare-const null-var1736 var1736)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2275 var2275)
(declare-const var3598 var1736) ; Statement: r1 := @this: org.apache.ibatis.ognl.OgnlCache 
(assert (not (= var3598 null-var1736)))
(declare-const var883 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var883 null-ClassObject)))
(define-const var1983 var1556 (propertyAccessors/1493318390 var3598)) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.OgnlCache: org.apache.ibatis.ognl.internal.ClassCache propertyAccessors> 
(define-const var3639 var891 (var2903_getHandler/-1171995976 var883 var1983)) ; Statement: $r3 = staticinvoke <org.apache.ibatis.ognl.internal.ClassCacheHandler: java.lang.Object getHandler(java.lang.Class,org.apache.ibatis.ognl.internal.ClassCache)>(r0, $r2) 
(define-const var3221 var2275 (cast-from-var891-to-var2275 var3639)) ; Statement: r4 = (org.apache.ibatis.ognl.PropertyAccessor) $r3 
 ; Statement: if r4 == null goto $r5 = new org.apache.ibatis.ognl.OgnlException 
(assert (= var3221 null-var2275)) ; Cond: r4 == null 
(define-const var2463 var1540 var1540-init) ; Statement: $r5 = new org.apache.ibatis.ognl.OgnlException 
(define-const var1646 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1646)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1646!1 String)
(assert (= var1646!1 ""))
(assert true)
(define-const var3462 String (append/672562846 var1646!1 "No property accessor for class ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No property accessor for class ") 
(declare-const var1646!2 String)
(assert (= var1646!2 (str.++ var1646!1 "No property accessor for class ")))
(assert true)
(define-const var1696 String (append/-1031950772 var3462 (cast-from-ClassObject-to-var891 var883))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3462!1 String)
(assert (str.prefixof var3462 var3462!1))
(assert true)
(define-const var41 String (toString/-2075883882 var1696)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-434000407 var2463 var41)) ; Statement: specialinvoke $r5.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String)>($r9) 

(declare-const var2463!1 var1540)
(declare-const var41!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyAccessors/1493318390=([org.apache.ibatis.ognl.OgnlCache], org.apache.ibatis.ognl.internal.ClassCache), var2903_getHandler/-1171995976=([java.lang.Class, org.apache.ibatis.ognl.internal.ClassCache], java.lang.Object), cast-from-var891-to-var2275=([java.lang.Object], org.apache.ibatis.ognl.PropertyAccessor), var1540-init=([], org.apache.ibatis.ognl.OgnlException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var891=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-434000407=([org.apache.ibatis.ognl.OgnlException, java.lang.String], void)}
; {var1736=org.apache.ibatis.ognl.OgnlCache, var3598=r1, var883=r0, var1556=org.apache.ibatis.ognl.internal.ClassCache, var1983=$r2, var891=java.lang.Object, var2903=org.apache.ibatis.ognl.internal.ClassCacheHandler, var3639=$r3, var2275=org.apache.ibatis.ognl.PropertyAccessor, var3221=r4, var1540=org.apache.ibatis.ognl.OgnlException, var2463=$r5, var1646=$r6, var3462=$r7, var1696=$r8, var41=$r9}
; {org.apache.ibatis.ognl.OgnlCache=var1736, r1=var3598, r0=var883, org.apache.ibatis.ognl.internal.ClassCache=var1556, $r2=var1983, java.lang.Object=var891, org.apache.ibatis.ognl.internal.ClassCacheHandler=var2903, $r3=var3639, org.apache.ibatis.ognl.PropertyAccessor=var2275, r4=var3221, org.apache.ibatis.ognl.OgnlException=var1540, $r5=var2463, $r6=var1646, $r7=var3462, $r8=var1696, $r9=var41}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.OgnlCache;	r0 := @parameter0: java.lang.Class;	$r2 = r1.<org.apache.ibatis.ognl.OgnlCache: org.apache.ibatis.ognl.internal.ClassCache propertyAccessors>;	$r3 = staticinvoke <org.apache.ibatis.ognl.internal.ClassCacheHandler: java.lang.Object getHandler(java.lang.Class,org.apache.ibatis.ognl.internal.ClassCache)>(r0, $r2);	r4 = (org.apache.ibatis.ognl.PropertyAccessor) $r3;	if r4 == null goto $r5 = new org.apache.ibatis.ognl.OgnlException;	$r5 = new org.apache.ibatis.ognl.OgnlException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No property accessor for class ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 2
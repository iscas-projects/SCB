(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3769 0)
(declare-sort var1553 0)
(declare-sort var1845 0)
(declare-sort var2878 0)
(declare-sort var2170 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun caseInsensitivePropertyMap/-1577411681 (var3769) var1845)
(declare-fun toUpperCase/398655892 (String var2878) String)
(declare-fun var1845_get/1088891777 (var1845 var2170) var2170)
(declare-fun cast-from-String-to-var2170 (String) var2170)
(declare-fun cast-from-var2170-to-String (var2170) String)
(declare-const null-var3769 var3769)
(declare-const null-String String)
(declare-const var2878-ENGLISH var2878)
(declare-const var3180 var3769) ; Statement: r0 := @this: org.apache.ibatis.reflection.Reflector 
(assert (not (= var3180 null-var3769)))
(declare-const var1496 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1496 null-String)))
(define-const var3902 var1845 (caseInsensitivePropertyMap/-1577411681 var3180)) ; Statement: $r3 = r0.<org.apache.ibatis.reflection.Reflector: java.util.Map caseInsensitivePropertyMap> 
(define-const var2008 var2878 var2878-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3456 String (toUpperCase/398655892 var1496 var2008)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2) 
(define-const var427 var2170 (var1845_get/1088891777 var3902 (cast-from-String-to-var2170 var3456))) ; Statement: $r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4) 
(define-const var2684 String (cast-from-var2170-to-String var427)) ; Statement: $r6 = (java.lang.String) $r5 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {caseInsensitivePropertyMap/-1577411681=([org.apache.ibatis.reflection.Reflector], java.util.Map), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), var1845_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2170=([java.lang.String], java.lang.Object), cast-from-var2170-to-String=([java.lang.Object], java.lang.String)}
; {var3769=org.apache.ibatis.reflection.Reflector, var3180=r0, var1496=r1, var1553=null_type, var1845=java.util.Map, var3902=$r3, var2878=java.util.Locale, var2008=$r2, var3456=$r4, var2170=java.lang.Object, var427=$r5, var2684=$r6}
; {org.apache.ibatis.reflection.Reflector=var3769, r0=var3180, r1=var1496, null_type=var1553, java.util.Map=var1845, $r3=var3902, java.util.Locale=var2878, $r2=var2008, $r4=var3456, java.lang.Object=var2170, $r5=var427, $r6=var2684}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.apache.ibatis.reflection.Reflector;	r1 := @parameter0: java.lang.String;	$r3 = r0.<org.apache.ibatis.reflection.Reflector: java.util.Map caseInsensitivePropertyMap>;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2);	$r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4);	$r6 = (java.lang.String) $r5;	return $r6
;block_num 1
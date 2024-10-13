(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2626 0)
(declare-sort var3974 0)
(declare-sort var1172 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getComponentType/1960034130 (ClassObject) ClassObject)
(declare-fun getComponentType/-1185830126 (var2626) var2626)
(declare-fun var1172_requireNonNull/-961817614 (var3974) var3974)
(declare-fun cast-from-var2626-to-var3974 (var2626) var3974)
(declare-fun cast-from-var3974-to-var2626 (var3974) var2626)
(declare-fun getSubtype/688421183 (var2626 ClassObject) var2626)
(declare-fun runtimeType/224140194 (var2626) ClassObject)
(declare-fun var2626_newArrayClassOrGenericArrayType/947526003 (ClassObject) ClassObject)
(declare-fun var2626_of/-1805862341 (ClassObject) var2626)
(declare-const null-var2626 var2626)
(declare-const null-ClassObject ClassObject)
(declare-const var3783 var2626) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken 
(assert (not (= var3783 null-var2626)))
(declare-const var2965 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2965 null-ClassObject)))
(assert true)
(define-const var1920 ClassObject (getComponentType/1960034130 var2965)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.Class getComponentType()>() 
 ; Statement: if r1 != null goto $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken getComponentType()>() 
(assert (not (= var1920 null-ClassObject))) ; Cond: r1 != null 
(assert true)
(define-const var1087 var2626 (getComponentType/-1185830126 var3783)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken getComponentType()>() 
(define-const var2684 var3974 (var1172_requireNonNull/-961817614 (cast-from-var2626-to-var3974 var1087))) ; Statement: $r4 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r3) 
(define-const var465 var2626 (cast-from-var3974-to-var2626 var2684)) ; Statement: $r5 = (com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken) $r4 
(assert true)
(define-const var2787 var2626 (getSubtype/688421183 var465 var1920)) ; Statement: r6 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken getSubtype(java.lang.Class)>(r1) 
(define-const var1392 ClassObject (runtimeType/224140194 var2787)) ; Statement: $r7 = r6.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: java.lang.reflect.Type runtimeType> 
(define-const var2883 ClassObject (var2626_newArrayClassOrGenericArrayType/947526003 var1392)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: java.lang.reflect.Type newArrayClassOrGenericArrayType(java.lang.reflect.Type)>($r7) 
(define-const var3622 var2626 (var2626_of/-1805862341 var2883)) ; Statement: r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken of(java.lang.reflect.Type)>($r8) 
 ; Statement: return r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getComponentType/1960034130=([java.lang.Class], java.lang.Class), getComponentType/-1185830126=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken], com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken), var1172_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-var2626-to-var3974=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken], java.lang.Object), cast-from-var3974-to-var2626=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken), getSubtype/688421183=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken, java.lang.Class], com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken), runtimeType/224140194=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken], java.lang.reflect.Type), var2626_newArrayClassOrGenericArrayType/947526003=([java.lang.reflect.Type], java.lang.reflect.Type), var2626_of/-1805862341=([java.lang.reflect.Type], com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken)}
; {var2626=com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken, var3783=r2, var2965=r0, var1920=r1, var1087=$r3, var3974=java.lang.Object, var1172=java.util.Objects, var2684=$r4, var465=$r5, var2787=r6, var1392=$r7, var2883=$r8, var3622=r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken=var2626, r2=var3783, r0=var2965, r1=var1920, $r3=var1087, java.lang.Object=var3974, java.util.Objects=var1172, $r4=var2684, $r5=var465, r6=var2787, $r7=var1392, $r8=var2883, r9=var3622}
;seq 
;cnt {}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken;	r0 := @parameter0: java.lang.Class;	r1 = virtualinvoke r0.<java.lang.Class: java.lang.Class getComponentType()>();	if r1 != null goto $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken getComponentType()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken getComponentType()>();	$r4 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r3);	$r5 = (com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken) $r4;	r6 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken getSubtype(java.lang.Class)>(r1);	$r7 = r6.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: java.lang.reflect.Type runtimeType>;	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: java.lang.reflect.Type newArrayClassOrGenericArrayType(java.lang.reflect.Type)>($r7);	r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken of(java.lang.reflect.Type)>($r8);	return r9
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2911 0)
(declare-sort var3899 0)
(declare-sort var2097 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getComponentType/-1185830126 (var2911) var2911)
(declare-fun getComponentType/1960034130 (ClassObject) ClassObject)
(declare-fun var2097_requireNonNull/-961817614 (var3899) var3899)
(declare-fun cast-from-ClassObject-to-var3899 (ClassObject) var3899)
(declare-fun cast-from-var3899-to-ClassObject (var3899) ClassObject)
(declare-fun getSupertype/650700602 (var2911 ClassObject) var2911)
(declare-fun runtimeType/224140194 (var2911) ClassObject)
(declare-fun var2911_newArrayClassOrGenericArrayType/947526003 (ClassObject) ClassObject)
(declare-fun var2911_of/-1805862341 (ClassObject) var2911)
(declare-const null-var2911 var2911)
(declare-const null-ClassObject ClassObject)
(declare-const var2547 var2911) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken 
(assert (not (= var2547 null-var2911)))
(declare-const var1762 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var1762 null-ClassObject)))
(assert true)
(define-const var3176 var2911 (getComponentType/-1185830126 var2547)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken getComponentType()>() 
 ; Statement: if r1 != null goto $r3 = virtualinvoke r2.<java.lang.Class: java.lang.Class getComponentType()>() 
(assert (not (= var3176 null-var2911))) ; Cond: r1 != null 
(assert true)
(define-const var3878 ClassObject (getComponentType/1960034130 var1762)) ; Statement: $r3 = virtualinvoke r2.<java.lang.Class: java.lang.Class getComponentType()>() 
(define-const var1533 var3899 (var2097_requireNonNull/-961817614 (cast-from-ClassObject-to-var3899 var3878))) ; Statement: $r4 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r3) 
(define-const var909 ClassObject (cast-from-var3899-to-ClassObject var1533)) ; Statement: $r5 = (java.lang.Class) $r4 
(assert true)
(define-const var629 var2911 (getSupertype/650700602 var3176 var909)) ; Statement: r6 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken getSupertype(java.lang.Class)>($r5) 
(define-const var3662 ClassObject (runtimeType/224140194 var629)) ; Statement: $r7 = r6.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: java.lang.reflect.Type runtimeType> 
(define-const var1764 ClassObject (var2911_newArrayClassOrGenericArrayType/947526003 var3662)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: java.lang.reflect.Type newArrayClassOrGenericArrayType(java.lang.reflect.Type)>($r7) 
(define-const var3907 var2911 (var2911_of/-1805862341 var1764)) ; Statement: r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken of(java.lang.reflect.Type)>($r8) 
 ; Statement: return r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getComponentType/-1185830126=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken], com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken), getComponentType/1960034130=([java.lang.Class], java.lang.Class), var2097_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var3899=([java.lang.Class], java.lang.Object), cast-from-var3899-to-ClassObject=([java.lang.Object], java.lang.Class), getSupertype/650700602=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken, java.lang.Class], com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken), runtimeType/224140194=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken], java.lang.reflect.Type), var2911_newArrayClassOrGenericArrayType/947526003=([java.lang.reflect.Type], java.lang.reflect.Type), var2911_of/-1805862341=([java.lang.reflect.Type], com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken)}
; {var2911=com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken, var2547=r0, var1762=r2, var3176=r1, var3878=$r3, var3899=java.lang.Object, var2097=java.util.Objects, var1533=$r4, var909=$r5, var629=r6, var3662=$r7, var1764=$r8, var3907=r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken=var2911, r0=var2547, r2=var1762, r1=var3176, $r3=var3878, java.lang.Object=var3899, java.util.Objects=var2097, $r4=var1533, $r5=var909, r6=var629, $r7=var3662, $r8=var1764, r9=var3907}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken;	r2 := @parameter0: java.lang.Class;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken getComponentType()>();	if r1 != null goto $r3 = virtualinvoke r2.<java.lang.Class: java.lang.Class getComponentType()>();	$r3 = virtualinvoke r2.<java.lang.Class: java.lang.Class getComponentType()>();	$r4 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r3);	$r5 = (java.lang.Class) $r4;	r6 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken getSupertype(java.lang.Class)>($r5);	$r7 = r6.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: java.lang.reflect.Type runtimeType>;	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: java.lang.reflect.Type newArrayClassOrGenericArrayType(java.lang.reflect.Type)>($r7);	r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken of(java.lang.reflect.Type)>($r8);	return r9
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3547 0)
(declare-sort var193 0)
(declare-sort var663 0)
(declare-sort var3231 0)
(declare-sort var1704 0)
(declare-sort var2691 0)
(declare-sort var1170 0)
(declare-sort var2376 0)
(declare-sort var1378 0)
(declare-sort var1708 0)
(declare-sort var2127 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun ownerType/64115787 (var3547) ClassObject)
(declare-fun rawType/64115787 (var3547) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var663_access$400/1443480811 () var193)
(declare-fun argumentsList/64115787 (var3547) var3231)
(declare-fun var2691_requireNonNull/-961817614 (var1170) var1170)
(declare-fun cast-from-var1704-to-var1170 (var1704) var1170)
(declare-fun var1378_bootstrap$/26205836 (var1704) var2376)
(declare-fun var2127_transform/218838323 (var1708 var2376) var1708)
(declare-fun cast-from-var3231-to-var1708 (var3231) var1708)
(declare-fun join/2083217584 (var193 var1708) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3547 var3547)
(declare-const null-ClassObject ClassObject)
(declare-const var1704-CURRENT var1704)
(declare-const var3143 var3547) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$ParameterizedTypeImpl 
(assert (not (= var3143 null-var3547)))
(define-const var219 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var219)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var219!1 String)
(assert (= var219!1 ""))
(define-const var2562 ClassObject (ownerType/64115787 var3143)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$ParameterizedTypeImpl: java.lang.reflect.Type ownerType> 
 ; Statement: if $r2 == null goto $r8 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$ParameterizedTypeImpl: java.lang.Class rawType> 
(assert (= var2562 null-ClassObject)) ; Cond: $r2 == null 
(define-const var426 ClassObject (rawType/64115787 var3143)) ; Statement: $r8 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$ParameterizedTypeImpl: java.lang.Class rawType> 
(assert true)
(define-const var2420 String (getName/-1958580599 var426)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3252 String (append/672562846 var219!1 var2420)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var219!2 String)
(assert (= var219!2 (str.++ var219!1 var2420)))
(assert true)
(define-const var3157 String (append/-1166366385 var3252 60)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60) 
(declare-const var3252!1 String)
(assert (str.prefixof var3252 var3252!1))
(define-const var759 var193 var663_access$400/1443480811) ; Statement: $r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner access$400()>() 
(define-const var1614 var3231 (argumentsList/64115787 var3143)) ; Statement: $r13 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$ParameterizedTypeImpl: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList argumentsList> 
(define-const var1069 var1704 var1704-CURRENT) ; Statement: $r14 = <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion CURRENT> 
;(assert (var2691_requireNonNull/-961817614 (cast-from-var1704-to-var1170 var1069))) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r14) 

(declare-const var1069!1 var1704)
(define-const var3313 var2376 (var1378_bootstrap$/26205836 var1069!1)) ; Statement: $r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$ParameterizedTypeImpl$typeName__712: com.google.javascript.jscomp.jarjar.com.google.common.base.Function bootstrap$(com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion)>($r14) 
(define-const var616 var1708 (var2127_transform/218838323 (cast-from-var3231-to-var1708 var1614) var3313)) ; Statement: $r16 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterables: java.lang.Iterable transform(java.lang.Iterable,com.google.javascript.jscomp.jarjar.com.google.common.base.Function)>($r13, $r15) 
(assert true)
(define-const var2570 String (join/2083217584 var759 var616)) ; Statement: $r17 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: java.lang.String join(java.lang.Iterable)>($r16) 
(assert true)
(define-const var3851 String (append/672562846 var3157 var2570)) ; Statement: $r18 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3157!1 String)
(assert (= var3157!1 (str.++ var3157 var2570)))
(assert true)
(define-const var1833 String (append/-1166366385 var3851 62)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var3851!1 String)
(assert (str.prefixof var3851 var3851!1))
(assert true)
(define-const var2297 String (toString/-2075883882 var1833)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), ownerType/64115787=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$ParameterizedTypeImpl], java.lang.reflect.Type), rawType/64115787=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$ParameterizedTypeImpl], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var663_access$400/1443480811=([], com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner), argumentsList/64115787=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$ParameterizedTypeImpl], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), var2691_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-var1704-to-var1170=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion], java.lang.Object), var1378_bootstrap$/26205836=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion], com.google.javascript.jscomp.jarjar.com.google.common.base.Function), var2127_transform/218838323=([java.lang.Iterable, com.google.javascript.jscomp.jarjar.com.google.common.base.Function], java.lang.Iterable), cast-from-var3231-to-var1708=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], java.lang.Iterable), join/2083217584=([com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner, java.lang.Iterable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3547=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$ParameterizedTypeImpl, var3143=r1, var219=$r0, var2562=$r2, var426=$r8, var2420=$r9, var3252=$r10, var3157=$r11, var193=com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner, var663=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types, var759=$r12, var3231=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1614=$r13, var1704=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion, var1069=$r14, var2691=java.util.Objects, var1170=java.lang.Object, var2376=com.google.javascript.jscomp.jarjar.com.google.common.base.Function, var1378=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$ParameterizedTypeImpl$typeName__712, var3313=$r15, var1708=java.lang.Iterable, var2127=com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterables, var616=$r16, var2570=$r17, var3851=$r18, var1833=$r19, var2297=$r20}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$ParameterizedTypeImpl=var3547, r1=var3143, $r0=var219, $r2=var2562, $r8=var426, $r9=var2420, $r10=var3252, $r11=var3157, com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner=var193, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types=var663, $r12=var759, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3231, $r13=var1614, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion=var1704, $r14=var1069, java.util.Objects=var2691, java.lang.Object=var1170, com.google.javascript.jscomp.jarjar.com.google.common.base.Function=var2376, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$ParameterizedTypeImpl$typeName__712=var1378, $r15=var3313, java.lang.Iterable=var1708, com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterables=var2127, $r16=var616, $r17=var2570, $r18=var3851, $r19=var1833, $r20=var2297}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$ParameterizedTypeImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$ParameterizedTypeImpl: java.lang.reflect.Type ownerType>;	if $r2 == null goto $r8 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$ParameterizedTypeImpl: java.lang.Class rawType>;	$r8 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$ParameterizedTypeImpl: java.lang.Class rawType>;	$r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60);	$r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner access$400()>();	$r13 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$ParameterizedTypeImpl: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList argumentsList>;	$r14 = <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion CURRENT>;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r14);	$r15 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$ParameterizedTypeImpl$typeName__712: com.google.javascript.jscomp.jarjar.com.google.common.base.Function bootstrap$(com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion)>($r14);	$r16 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterables: java.lang.Iterable transform(java.lang.Iterable,com.google.javascript.jscomp.jarjar.com.google.common.base.Function)>($r13, $r15);	$r17 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: java.lang.String join(java.lang.Iterable)>($r16);	$r18 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	return $r20
;block_num 2
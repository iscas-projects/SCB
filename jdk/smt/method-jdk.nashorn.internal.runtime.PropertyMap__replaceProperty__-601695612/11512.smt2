(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1187 0)
(declare-sort var124 0)
(declare-sort var2067 0)
(declare-sort var2962 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyModified/2002480773 (var1187 var124 var124 Bool) void)
(declare-fun getClass/1258963082 (var2067) ClassObject)
(declare-fun cast-from-var124-to-var2067 (var124) var2067)
(declare-fun var2962-init () var2962)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-388390247 (String Bool) String)
(declare-fun append/-1031950772 (String var2067) String)
(declare-fun cast-from-ClassObject-to-var2067 (ClassObject) var2067)
(declare-fun getLocalType/757166644 (var124) ClassObject)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var2962 var2067) void)
(declare-fun cast-from-String-to-var2067 (String) var2067)
(declare-const null-var1187 var1187)
(declare-const null-var124 var124)
(declare-const var1187-$assertionsDisabled Bool)
(declare-const var3765 var1187) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.PropertyMap 
(assert (not (= var3765 null-var1187)))
(declare-const var3646 var124) ; Statement: r1 := @parameter0: jdk.nashorn.internal.runtime.Property 
(assert (not (= var3646 null-var124)))
(declare-const var3535 var124) ; Statement: r2 := @parameter1: jdk.nashorn.internal.runtime.Property 
(assert (not (= var3535 null-var124)))
(assert true)
;(assert (propertyModified/2002480773 var3765 var3646 var3535 (ite (= 1 1) true false))) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.runtime.PropertyMap: void propertyModified(jdk.nashorn.internal.runtime.Property,jdk.nashorn.internal.runtime.Property,boolean)>(r1, r2, 1) 

(declare-const var3765!1 var1187)
(declare-const var3646!1 var124)
(declare-const var3535!1 var124)
(declare-const var1220 Int)
(assert true)
(define-const var3873 ClassObject (getClass/1258963082 (cast-from-var124-to-var2067 var3646!1))) ; Statement: $r4 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var372 ClassObject (getClass/1258963082 (cast-from-var124-to-var2067 var3535!1))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
 ; Statement: if $r4 != $r3 goto $z6 = 0 
(assert (not (= var3873 var372))) ; Cond: $r4 != $r3 
(define-const var352 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(define-const var3627 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
(define-const var427 Bool var352) ; Statement: z0 = $z6 
(define-const var2802 Bool var1187-$assertionsDisabled) ; Statement: $z1 = <jdk.nashorn.internal.runtime.PropertyMap: boolean $assertionsDisabled> 
 ; Statement: if $z1 != 0 goto (branch) 
(assert (not (not (= (ite var2802 1 0) 0)))) ; Negate: Cond: $z1 != 0  
 ; Statement: if $z5 != 0 goto (branch) 
(assert (not (not (= (ite var3627 1 0) 0)))) ; Negate: Cond: $z5 != 0  
(define-const var3473 Bool false) ; Statement: $z2 = r1 instanceof jdk.nashorn.internal.runtime.AccessorProperty 
 ; Statement: if $z2 == 0 goto $r8 = new java.lang.AssertionError 
(assert (= (ite var3473 1 0) 0)) ; Cond: $z2 == 0 
(define-const var881 var2962 var2962-init) ; Statement: $r8 = new java.lang.AssertionError 
(define-const var335 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var335)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var335!1 String)
(assert (= var335!1 ""))
(assert true)
(define-const var3814 String (append/672562846 var335!1 "arbitrary replaceProperty attempted ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("arbitrary replaceProperty attempted ") 
(declare-const var335!2 String)
(assert (= var335!2 (str.++ var335!1 "arbitrary replaceProperty attempted ")))
(assert true)
(define-const var1278 String (append/-388390247 var3814 var427)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z0) 
(declare-const var3814!1 String)
(assert (str.prefixof var3814 var3814!1))
(assert true)
(define-const var3357 String (append/672562846 var1278 " oldProperty=")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" oldProperty=") 
(declare-const var1278!1 String)
(assert (= var1278!1 (str.++ var1278 " oldProperty=")))
(assert true)
(define-const var43 ClassObject (getClass/1258963082 (cast-from-var124-to-var2067 var3646!1))) ; Statement: $r12 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2427 String (append/-1031950772 var3357 (cast-from-ClassObject-to-var2067 var43))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12) 
(declare-const var3357!1 String)
(assert (str.prefixof var3357 var3357!1))
(assert true)
(define-const var3761 String (append/672562846 var2427 " newProperty=")) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" newProperty=") 
(declare-const var2427!1 String)
(assert (= var2427!1 (str.++ var2427 " newProperty=")))
(assert true)
(define-const var3170 ClassObject (getClass/1258963082 (cast-from-var124-to-var2067 var3535!1))) ; Statement: $r15 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1898 String (append/-1031950772 var3761 (cast-from-ClassObject-to-var2067 var3170))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var3761!1 String)
(assert (str.prefixof var3761 var3761!1))
(assert true)
(define-const var2009 String (append/672562846 var1898 " [")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [") 
(declare-const var1898!1 String)
(assert (= var1898!1 (str.++ var1898 " [")))
(assert true)
(define-const var137 ClassObject (getLocalType/757166644 var3646!1)) ; Statement: $r18 = virtualinvoke r1.<jdk.nashorn.internal.runtime.Property: java.lang.Class getLocalType()>() 
(assert true)
(define-const var2309 String (append/-1031950772 var2009 (cast-from-ClassObject-to-var2067 var137))) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r18) 
(declare-const var2009!1 String)
(assert (str.prefixof var2009 var2009!1))
(assert true)
(define-const var3773 String (append/672562846 var2309 " => ")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" => ") 
(declare-const var2309!1 String)
(assert (= var2309!1 (str.++ var2309 " => ")))
(assert true)
(define-const var2073 ClassObject (getLocalType/757166644 var3535!1)) ; Statement: $r21 = virtualinvoke r2.<jdk.nashorn.internal.runtime.Property: java.lang.Class getLocalType()>() 
(assert true)
(define-const var1081 String (append/-1031950772 var3773 (cast-from-ClassObject-to-var2067 var2073))) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21) 
(declare-const var3773!1 String)
(assert (str.prefixof var3773 var3773!1))
(assert true)
(define-const var2502 String (append/672562846 var1081 "]")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1081!1 String)
(assert (= var1081!1 (str.++ var1081 "]")))
(assert true)
(define-const var2380 String (toString/-2075883882 var2502)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var881 (cast-from-String-to-var2067 var2380))) ; Statement: specialinvoke $r8.<java.lang.AssertionError: void <init>(java.lang.Object)>($r25) 

(declare-const var881!1 var2962)
(declare-const var2380!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyModified/2002480773=([jdk.nashorn.internal.runtime.PropertyMap, jdk.nashorn.internal.runtime.Property, jdk.nashorn.internal.runtime.Property, boolean], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var124-to-var2067=([jdk.nashorn.internal.runtime.Property], java.lang.Object), var2962-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2067=([java.lang.Class], java.lang.Object), getLocalType/757166644=([jdk.nashorn.internal.runtime.Property], java.lang.Class), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var2067=([java.lang.String], java.lang.Object)}
; {var1187=jdk.nashorn.internal.runtime.PropertyMap, var3765=r0, var124=jdk.nashorn.internal.runtime.Property, var3646=r1, var3535=r2, var1220=1, var2067=java.lang.Object, var3873=$r4, var372=$r3, var352=$z6, var3627=$z5, var427=z0, var2802=$z1, var3473=$z2, var2962=java.lang.AssertionError, var881=$r8, var335=$r9, var3814=$r10, var1278=$r11, var3357=$r13, var43=$r12, var2427=$r14, var3761=$r16, var3170=$r15, var1898=$r17, var2009=$r19, var137=$r18, var2309=$r20, var3773=$r22, var2073=$r21, var1081=$r23, var2502=$r24, var2380=$r25}
; {jdk.nashorn.internal.runtime.PropertyMap=var1187, r0=var3765, jdk.nashorn.internal.runtime.Property=var124, r1=var3646, r2=var3535, 1=var1220, java.lang.Object=var2067, $r4=var3873, $r3=var372, $z6=var352, $z5=var3627, z0=var427, $z1=var2802, $z2=var3473, java.lang.AssertionError=var2962, $r8=var881, $r9=var335, $r10=var3814, $r11=var1278, $r13=var3357, $r12=var43, $r14=var2427, $r16=var3761, $r15=var3170, $r17=var1898, $r19=var2009, $r18=var137, $r20=var2309, $r22=var3773, $r21=var2073, $r23=var1081, $r24=var2502, $r25=var2380}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.PropertyMap;	r1 := @parameter0: jdk.nashorn.internal.runtime.Property;	r2 := @parameter1: jdk.nashorn.internal.runtime.Property;	virtualinvoke r0.<jdk.nashorn.internal.runtime.PropertyMap: void propertyModified(jdk.nashorn.internal.runtime.Property,jdk.nashorn.internal.runtime.Property,boolean)>(r1, r2, 1);	$r4 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	if $r4 != $r3 goto $z6 = 0;	$z6 = 0;	$z5 = 0;	z0 = $z6;	$z1 = <jdk.nashorn.internal.runtime.PropertyMap: boolean $assertionsDisabled>;	if $z1 != 0 goto (branch);	if $z5 != 0 goto (branch);	$z2 = r1 instanceof jdk.nashorn.internal.runtime.AccessorProperty;	if $z2 == 0 goto $r8 = new java.lang.AssertionError;	$r8 = new java.lang.AssertionError;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("arbitrary replaceProperty attempted ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z0);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" oldProperty=");	$r12 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12);	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" newProperty=");	$r15 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [");	$r18 = virtualinvoke r1.<jdk.nashorn.internal.runtime.Property: java.lang.Class getLocalType()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r18);	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" => ");	$r21 = virtualinvoke r2.<jdk.nashorn.internal.runtime.Property: java.lang.Class getLocalType()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.AssertionError: void <init>(java.lang.Object)>($r25);	throw $r8
;block_num 6
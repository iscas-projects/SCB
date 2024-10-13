(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3063 0)
(declare-sort var3742 0)
(declare-sort var1280 0)
(declare-sort var3368 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyModified/2002480773 (var3063 var3742 var3742 Bool) void)
(declare-fun getClass/1258963082 (var1280) ClassObject)
(declare-fun cast-from-var3742-to-var1280 (var3742) var1280)
(declare-fun var3368-init () var3368)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-388390247 (String Bool) String)
(declare-fun append/-1031950772 (String var1280) String)
(declare-fun cast-from-ClassObject-to-var1280 (ClassObject) var1280)
(declare-fun getLocalType/757166644 (var3742) ClassObject)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var3368 var1280) void)
(declare-fun cast-from-String-to-var1280 (String) var1280)
(declare-const null-var3063 var3063)
(declare-const null-var3742 var3742)
(declare-const var3063-$assertionsDisabled Bool)
(declare-const var3903 var3063) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.PropertyMap 
(assert (not (= var3903 null-var3063)))
(declare-const var2132 var3742) ; Statement: r1 := @parameter0: jdk.nashorn.internal.runtime.Property 
(assert (not (= var2132 null-var3742)))
(declare-const var1573 var3742) ; Statement: r2 := @parameter1: jdk.nashorn.internal.runtime.Property 
(assert (not (= var1573 null-var3742)))
(assert true)
;(assert (propertyModified/2002480773 var3903 var2132 var1573 (ite (= 1 1) true false))) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.runtime.PropertyMap: void propertyModified(jdk.nashorn.internal.runtime.Property,jdk.nashorn.internal.runtime.Property,boolean)>(r1, r2, 1) 

(declare-const var3903!1 var3063)
(declare-const var2132!1 var3742)
(declare-const var1573!1 var3742)
(declare-const var3271 Int)
(assert true)
(define-const var1282 ClassObject (getClass/1258963082 (cast-from-var3742-to-var1280 var2132!1))) ; Statement: $r4 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2283 ClassObject (getClass/1258963082 (cast-from-var3742-to-var1280 var1573!1))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
 ; Statement: if $r4 != $r3 goto $z6 = 0 
(assert (not (not (= var1282 var2283)))) ; Negate: Cond: $r4 != $r3  
(define-const var3779 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
(define-const var422 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= z0 = $z6] 
(assert true) ; Non Conditional
(define-const var1324 Bool var3779) ; Statement: z0 = $z6 
(define-const var1164 Bool var3063-$assertionsDisabled) ; Statement: $z1 = <jdk.nashorn.internal.runtime.PropertyMap: boolean $assertionsDisabled> 
 ; Statement: if $z1 != 0 goto (branch) 
(assert (not (not (= (ite var1164 1 0) 0)))) ; Negate: Cond: $z1 != 0  
 ; Statement: if $z5 != 0 goto (branch) 
(assert (not (not (= (ite var422 1 0) 0)))) ; Negate: Cond: $z5 != 0  
(define-const var3330 Bool false) ; Statement: $z2 = r1 instanceof jdk.nashorn.internal.runtime.AccessorProperty 
 ; Statement: if $z2 == 0 goto $r8 = new java.lang.AssertionError 
(assert (= (ite var3330 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2059 var3368 var3368-init) ; Statement: $r8 = new java.lang.AssertionError 
(define-const var3044 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3044)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3044!1 String)
(assert (= var3044!1 ""))
(assert true)
(define-const var764 String (append/672562846 var3044!1 "arbitrary replaceProperty attempted ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("arbitrary replaceProperty attempted ") 
(declare-const var3044!2 String)
(assert (= var3044!2 (str.++ var3044!1 "arbitrary replaceProperty attempted ")))
(assert true)
(define-const var1568 String (append/-388390247 var764 var1324)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z0) 
(declare-const var764!1 String)
(assert (str.prefixof var764 var764!1))
(assert true)
(define-const var956 String (append/672562846 var1568 " oldProperty=")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" oldProperty=") 
(declare-const var1568!1 String)
(assert (= var1568!1 (str.++ var1568 " oldProperty=")))
(assert true)
(define-const var2747 ClassObject (getClass/1258963082 (cast-from-var3742-to-var1280 var2132!1))) ; Statement: $r12 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var471 String (append/-1031950772 var956 (cast-from-ClassObject-to-var1280 var2747))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12) 
(declare-const var956!1 String)
(assert (str.prefixof var956 var956!1))
(assert true)
(define-const var2712 String (append/672562846 var471 " newProperty=")) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" newProperty=") 
(declare-const var471!1 String)
(assert (= var471!1 (str.++ var471 " newProperty=")))
(assert true)
(define-const var2990 ClassObject (getClass/1258963082 (cast-from-var3742-to-var1280 var1573!1))) ; Statement: $r15 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2280 String (append/-1031950772 var2712 (cast-from-ClassObject-to-var1280 var2990))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var2712!1 String)
(assert (str.prefixof var2712 var2712!1))
(assert true)
(define-const var1302 String (append/672562846 var2280 " [")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [") 
(declare-const var2280!1 String)
(assert (= var2280!1 (str.++ var2280 " [")))
(assert true)
(define-const var1980 ClassObject (getLocalType/757166644 var2132!1)) ; Statement: $r18 = virtualinvoke r1.<jdk.nashorn.internal.runtime.Property: java.lang.Class getLocalType()>() 
(assert true)
(define-const var2574 String (append/-1031950772 var1302 (cast-from-ClassObject-to-var1280 var1980))) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r18) 
(declare-const var1302!1 String)
(assert (str.prefixof var1302 var1302!1))
(assert true)
(define-const var3934 String (append/672562846 var2574 " => ")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" => ") 
(declare-const var2574!1 String)
(assert (= var2574!1 (str.++ var2574 " => ")))
(assert true)
(define-const var1762 ClassObject (getLocalType/757166644 var1573!1)) ; Statement: $r21 = virtualinvoke r2.<jdk.nashorn.internal.runtime.Property: java.lang.Class getLocalType()>() 
(assert true)
(define-const var1210 String (append/-1031950772 var3934 (cast-from-ClassObject-to-var1280 var1762))) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21) 
(declare-const var3934!1 String)
(assert (str.prefixof var3934 var3934!1))
(assert true)
(define-const var3819 String (append/672562846 var1210 "]")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1210!1 String)
(assert (= var1210!1 (str.++ var1210 "]")))
(assert true)
(define-const var2768 String (toString/-2075883882 var3819)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var2059 (cast-from-String-to-var1280 var2768))) ; Statement: specialinvoke $r8.<java.lang.AssertionError: void <init>(java.lang.Object)>($r25) 

(declare-const var2059!1 var3368)
(declare-const var2768!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyModified/2002480773=([jdk.nashorn.internal.runtime.PropertyMap, jdk.nashorn.internal.runtime.Property, jdk.nashorn.internal.runtime.Property, boolean], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3742-to-var1280=([jdk.nashorn.internal.runtime.Property], java.lang.Object), var3368-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1280=([java.lang.Class], java.lang.Object), getLocalType/757166644=([jdk.nashorn.internal.runtime.Property], java.lang.Class), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var1280=([java.lang.String], java.lang.Object)}
; {var3063=jdk.nashorn.internal.runtime.PropertyMap, var3903=r0, var3742=jdk.nashorn.internal.runtime.Property, var2132=r1, var1573=r2, var3271=1, var1280=java.lang.Object, var1282=$r4, var2283=$r3, var3779=$z6, var422=$z5, var1324=z0, var1164=$z1, var3330=$z2, var3368=java.lang.AssertionError, var2059=$r8, var3044=$r9, var764=$r10, var1568=$r11, var956=$r13, var2747=$r12, var471=$r14, var2712=$r16, var2990=$r15, var2280=$r17, var1302=$r19, var1980=$r18, var2574=$r20, var3934=$r22, var1762=$r21, var1210=$r23, var3819=$r24, var2768=$r25}
; {jdk.nashorn.internal.runtime.PropertyMap=var3063, r0=var3903, jdk.nashorn.internal.runtime.Property=var3742, r1=var2132, r2=var1573, 1=var3271, java.lang.Object=var1280, $r4=var1282, $r3=var2283, $z6=var3779, $z5=var422, z0=var1324, $z1=var1164, $z2=var3330, java.lang.AssertionError=var3368, $r8=var2059, $r9=var3044, $r10=var764, $r11=var1568, $r13=var956, $r12=var2747, $r14=var471, $r16=var2712, $r15=var2990, $r17=var2280, $r19=var1302, $r18=var1980, $r20=var2574, $r22=var3934, $r21=var1762, $r23=var1210, $r24=var3819, $r25=var2768}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.PropertyMap;	r1 := @parameter0: jdk.nashorn.internal.runtime.Property;	r2 := @parameter1: jdk.nashorn.internal.runtime.Property;	virtualinvoke r0.<jdk.nashorn.internal.runtime.PropertyMap: void propertyModified(jdk.nashorn.internal.runtime.Property,jdk.nashorn.internal.runtime.Property,boolean)>(r1, r2, 1);	$r4 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	if $r4 != $r3 goto $z6 = 0;	$z6 = 1;	$z5 = 1;	goto [?= z0 = $z6];	z0 = $z6;	$z1 = <jdk.nashorn.internal.runtime.PropertyMap: boolean $assertionsDisabled>;	if $z1 != 0 goto (branch);	if $z5 != 0 goto (branch);	$z2 = r1 instanceof jdk.nashorn.internal.runtime.AccessorProperty;	if $z2 == 0 goto $r8 = new java.lang.AssertionError;	$r8 = new java.lang.AssertionError;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("arbitrary replaceProperty attempted ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z0);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" oldProperty=");	$r12 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12);	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" newProperty=");	$r15 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [");	$r18 = virtualinvoke r1.<jdk.nashorn.internal.runtime.Property: java.lang.Class getLocalType()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r18);	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" => ");	$r21 = virtualinvoke r2.<jdk.nashorn.internal.runtime.Property: java.lang.Class getLocalType()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.AssertionError: void <init>(java.lang.Object)>($r25);	throw $r8
;block_num 6
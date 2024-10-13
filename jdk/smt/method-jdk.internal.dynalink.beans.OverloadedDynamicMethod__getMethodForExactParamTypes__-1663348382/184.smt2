(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2064 0)
(declare-sort var859 0)
(declare-sort var1035 0)
(declare-sort var3145 0)
(declare-sort var3368 0)
(declare-sort var3943 0)
(declare-sort var1456 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1035-init () var1035)
(declare-fun <init>/1281898776 (var1035) void)
(declare-fun methods/2014264644 (var2064) var1035)
(declare-fun iterator/396927710 (var3145) Iterator)
(declare-fun cast-from-var1035-to-var3145 (var1035) var3145)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun size/1804652082 (var1035) Int)
(declare-fun var3368-init () var3368)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3943) String)
(declare-fun cast-from-var1035-to-var3943 (var1035) var3943)
(declare-fun getName/191485936 (var1456) String)
(declare-fun cast-from-var2064-to-var1456 (var2064) var1456)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1100755667 (var3368 String) void)
(declare-const null-var2064 var2064)
(declare-const null-String String)
(declare-const var2571 var2064) ; Statement: r1 := @this: jdk.internal.dynalink.beans.OverloadedDynamicMethod 
(assert (not (= var2571 null-var2064)))
(declare-const var2224 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var2224 null-String)))
(define-const var3491 var1035 var1035-init) ; Statement: $r0 = new java.util.LinkedList 
(assert true)
;(assert (<init>/1281898776 var3491)) ; Statement: specialinvoke $r0.<java.util.LinkedList: void <init>()>() 

(declare-const var3491!1 var1035)
(define-const var1211 var1035 (methods/2014264644 var2571)) ; Statement: $r2 = r1.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.util.LinkedList methods> 
(assert true)
(define-const var542 Iterator (iterator/396927710 (cast-from-var1035-to-var3145 var1211))) ; Statement: r3 = virtualinvoke $r2.<java.util.LinkedList: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var735 Bool (Iterator_hasNext/-1669924200 var542)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke $r0.<java.util.LinkedList: int size()>() 
(assert (= (ite var735 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2382 Int (size/1804652082 var3491!1)) ; Statement: $i0 = virtualinvoke $r0.<java.util.LinkedList: int size()>() 
 ; Statement: lookupswitch($i0) {     case 0: goto return null;     case 1: goto $r4 = virtualinvoke $r0.<java.util.LinkedList: java.lang.Object getFirst()>();     default: goto $r6 = new java.lang.BootstrapMethodError; } 
(assert (and (not (= var2382 1)) (and (not (= var2382 0)) true))) ; Intersect: Negate: Cond: $i0 == 1   and Intersect: Negate: Cond: $i0 == 0   and Non Conditional  
(define-const var111 var3368 var3368-init) ; Statement: $r6 = new java.lang.BootstrapMethodError 
(define-const var1418 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1418)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1418!1 String)
(assert (= var1418!1 ""))
(assert true)
(define-const var2141 String (append/672562846 var1418!1 "Can\u0027t choose among ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t choose among ") 
(declare-const var1418!2 String)
(assert (= var1418!2 (str.++ var1418!1 "Can\u0027t choose among ")))
(assert true)
(define-const var752 String (append/-1031950772 var2141 (cast-from-var1035-to-var3943 var3491!1))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0) 
(declare-const var2141!1 String)
(assert (str.prefixof var2141 var2141!1))
(assert true)
(define-const var3756 String (append/672562846 var752 " for argument types ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for argument types ") 
(declare-const var752!1 String)
(assert (= var752!1 (str.++ var752 " for argument types ")))
(assert true)
(define-const var3160 String (append/672562846 var3756 var2224)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var3756!1 String)
(assert (= var3756!1 (str.++ var3756 var2224)))
(assert true)
(define-const var2621 String (append/672562846 var3160 " for method ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for method ") 
(declare-const var3160!1 String)
(assert (= var3160!1 (str.++ var3160 " for method ")))
(assert true)
(define-const var372 String (getName/191485936 (cast-from-var2064-to-var1456 var2571))) ; Statement: $r13 = virtualinvoke r1.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.lang.String getName()>() 
(assert true)
(define-const var949 String (append/672562846 var2621 var372)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2621!1 String)
(assert (= var2621!1 (str.++ var2621 var372)))
(assert true)
(define-const var1279 String (toString/-2075883882 var949)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1100755667 var111 var1279)) ; Statement: specialinvoke $r6.<java.lang.BootstrapMethodError: void <init>(java.lang.String)>($r16) 

(declare-const var111!1 var3368)
(declare-const var1279!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var1035-init=([], java.util.LinkedList), <init>/1281898776=([java.util.LinkedList], void), methods/2014264644=([jdk.internal.dynalink.beans.OverloadedDynamicMethod], java.util.LinkedList), iterator/396927710=([java.util.AbstractSequentialList], java.util.Iterator), cast-from-var1035-to-var3145=([java.util.LinkedList], java.util.AbstractSequentialList), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), size/1804652082=([java.util.LinkedList], int), var3368-init=([], java.lang.BootstrapMethodError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1035-to-var3943=([java.util.LinkedList], java.lang.Object), getName/191485936=([jdk.internal.dynalink.beans.DynamicMethod], java.lang.String), cast-from-var2064-to-var1456=([jdk.internal.dynalink.beans.OverloadedDynamicMethod], jdk.internal.dynalink.beans.DynamicMethod), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1100755667=([java.lang.BootstrapMethodError, java.lang.String], void)}
; {var2064=jdk.internal.dynalink.beans.OverloadedDynamicMethod, var2571=r1, var2224=r10, var859=null_type, var1035=java.util.LinkedList, var3491=$r0, var1211=$r2, var3145=java.util.AbstractSequentialList, var542=r3, var735=$z0, var2382=$i0, var3368=java.lang.BootstrapMethodError, var111=$r6, var1418=$r7, var2141=$r8, var3943=java.lang.Object, var752=$r9, var3756=$r11, var3160=$r12, var2621=$r14, var1456=jdk.internal.dynalink.beans.DynamicMethod, var372=$r13, var949=$r15, var1279=$r16}
; {jdk.internal.dynalink.beans.OverloadedDynamicMethod=var2064, r1=var2571, r10=var2224, null_type=var859, java.util.LinkedList=var1035, $r0=var3491, $r2=var1211, java.util.AbstractSequentialList=var3145, r3=var542, $z0=var735, $i0=var2382, java.lang.BootstrapMethodError=var3368, $r6=var111, $r7=var1418, $r8=var2141, java.lang.Object=var3943, $r9=var752, $r11=var3756, $r12=var3160, $r14=var2621, jdk.internal.dynalink.beans.DynamicMethod=var1456, $r13=var372, $r15=var949, $r16=var1279}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.internal.dynalink.beans.OverloadedDynamicMethod;	r10 := @parameter0: java.lang.String;	$r0 = new java.util.LinkedList;	specialinvoke $r0.<java.util.LinkedList: void <init>()>();	$r2 = r1.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.util.LinkedList methods>;	r3 = virtualinvoke $r2.<java.util.LinkedList: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $i0 = virtualinvoke $r0.<java.util.LinkedList: int size()>();	$i0 = virtualinvoke $r0.<java.util.LinkedList: int size()>();	lookupswitch($i0) {     case 0: goto return null;     case 1: goto $r4 = virtualinvoke $r0.<java.util.LinkedList: java.lang.Object getFirst()>();     default: goto $r6 = new java.lang.BootstrapMethodError; };	$r6 = new java.lang.BootstrapMethodError;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t choose among ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for argument types ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for method ");	$r13 = virtualinvoke r1.<jdk.internal.dynalink.beans.OverloadedDynamicMethod: java.lang.String getName()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.BootstrapMethodError: void <init>(java.lang.String)>($r16);	throw $r6
;block_num 4
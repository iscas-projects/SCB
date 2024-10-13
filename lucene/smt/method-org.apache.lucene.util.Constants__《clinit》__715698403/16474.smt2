(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1851 0)
(declare-sort var528 0)
(declare-sort var2284 0)
(declare-sort var3697 0)
(declare-sort var433 0)
(declare-sort var1467 0)
(declare-sort var1099 0)
(declare-sort var2373 0)
(declare-sort var2588 0)
(declare-sort var1672 0)
(declare-sort var2412 0)
(declare-sort var2668 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1851_getSysProp/1825134291 (String String) String)
(declare-fun var2284_version/-645661189 () var528)
(declare-fun toString/-497435464 (var528) String)
(declare-fun feature/-1694642822 (var528) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun var3697_getProperty/258823597 (String) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var433_get/-917974604 (String) var1467)
(declare-fun var2373_bootstrap$/1001252598 () var1099)
(declare-fun map/1305667865 (var1467 var1099) var1467)
(declare-fun var2588_valueOf/1602327315 (Bool) var2588)
(declare-fun orElse/-757175127 (var1467 var1672) var1672)
(declare-fun cast-from-var2588-to-var1672 (var2588) var1672)
(declare-fun cast-from-var1672-to-var2588 (var1672) var2588)
(declare-fun booleanValue/-1820462562 (var2588) Bool)
(declare-fun var1851_is64Bit/1594474571 () Bool)
(declare-fun var2412_bootstrap$/-23441323 () var1099)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1672 (Int) var1672)
(declare-fun cast-from-var1672-to-Int (var1672) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun var2668_bootstrap$/1197444210 () var1099)
(declare-fun var1851_hasFastVectorFMA/614066377 () Bool)
(declare-fun var1851_hasFastScalarFMA/-1430993742 () Bool)
(declare-const var1851-OS_NAME String)
(declare-const var433-IS_HOTSPOT_VM Bool)
(declare-const var1851-IS_CLIENT_VM Bool)
(define-const var3824 String (var1851_getSysProp/1825134291 "java.vm.vendor" "Unknown")) ; Statement: $r0 = staticinvoke <org.apache.lucene.util.Constants: java.lang.String getSysProp(java.lang.String,java.lang.String)>("java.vm.vendor", "Unknown") 
(define-const var3638 String var3824) ; Statement: <org.apache.lucene.util.Constants: java.lang.String JVM_VENDOR> = $r0 
(define-const var3546 String (var1851_getSysProp/1825134291 "java.vm.name" "Unknown")) ; Statement: $r1 = staticinvoke <org.apache.lucene.util.Constants: java.lang.String getSysProp(java.lang.String,java.lang.String)>("java.vm.name", "Unknown") 
(define-const var980 String var3546) ; Statement: <org.apache.lucene.util.Constants: java.lang.String JVM_NAME> = $r1 
(define-const var3404 var528 var2284_version/-645661189) ; Statement: $r2 = staticinvoke <java.lang.Runtime: java.lang.Runtime$Version version()>() 
(assert true)
(define-const var391 String (toString/-497435464 var3404)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Runtime$Version: java.lang.String toString()>() 
(define-const var1481 String var391) ; Statement: <org.apache.lucene.util.Constants: java.lang.String JVM_VERSION> = $r3 
(define-const var2548 var528 var2284_version/-645661189) ; Statement: $r4 = staticinvoke <java.lang.Runtime: java.lang.Runtime$Version version()>() 
(assert true)
(define-const var1167 Int (feature/-1694642822 var2548)) ; Statement: $i0 = virtualinvoke $r4.<java.lang.Runtime$Version: int feature()>() 
(define-const var2187 String (Int_toString/1350422511 var1167)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i0) 
(define-const var1823 String var2187) ; Statement: <org.apache.lucene.util.Constants: java.lang.String JVM_SPEC_VERSION> = $r5 
(define-const var3450 String (var3697_getProperty/258823597 "java.version")) ; Statement: $r6 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.version") 
(define-const var3712 String var3450) ; Statement: <org.apache.lucene.util.Constants: java.lang.String JAVA_VERSION> = $r6 
(define-const var3162 String (var1851_getSysProp/1825134291 "os.name" "Unknown")) ; Statement: $r7 = staticinvoke <org.apache.lucene.util.Constants: java.lang.String getSysProp(java.lang.String,java.lang.String)>("os.name", "Unknown") 
(define-const var548 String var3162) ; Statement: <org.apache.lucene.util.Constants: java.lang.String OS_NAME> = $r7 
(define-const var1277 String var1851-OS_NAME) ; Statement: $r8 = <org.apache.lucene.util.Constants: java.lang.String OS_NAME> 
(assert true)
(define-const var2056 Bool (startsWith/-1785782452 var1277 "Linux")) ; Statement: $z0 = virtualinvoke $r8.<java.lang.String: boolean startsWith(java.lang.String)>("Linux") 
(define-const var1634 Bool var2056) ; Statement: <org.apache.lucene.util.Constants: boolean LINUX> = $z0 
(define-const var3995 String var1851-OS_NAME) ; Statement: $r9 = <org.apache.lucene.util.Constants: java.lang.String OS_NAME> 
(assert true)
(define-const var3594 Bool (startsWith/-1785782452 var3995 "Windows")) ; Statement: $z1 = virtualinvoke $r9.<java.lang.String: boolean startsWith(java.lang.String)>("Windows") 
(define-const var3950 Bool var3594) ; Statement: <org.apache.lucene.util.Constants: boolean WINDOWS> = $z1 
(define-const var3886 String var1851-OS_NAME) ; Statement: $r10 = <org.apache.lucene.util.Constants: java.lang.String OS_NAME> 
(assert true)
(define-const var3675 Bool (startsWith/-1785782452 var3886 "SunOS")) ; Statement: $z2 = virtualinvoke $r10.<java.lang.String: boolean startsWith(java.lang.String)>("SunOS") 
(define-const var171 Bool var3675) ; Statement: <org.apache.lucene.util.Constants: boolean SUN_OS> = $z2 
(define-const var469 String var1851-OS_NAME) ; Statement: $r11 = <org.apache.lucene.util.Constants: java.lang.String OS_NAME> 
(assert true)
(define-const var3938 Bool (startsWith/-1785782452 var469 "Mac OS X")) ; Statement: $z3 = virtualinvoke $r11.<java.lang.String: boolean startsWith(java.lang.String)>("Mac OS X") 
(define-const var2802 Bool var3938) ; Statement: <org.apache.lucene.util.Constants: boolean MAC_OS_X> = $z3 
(define-const var1326 String var1851-OS_NAME) ; Statement: $r12 = <org.apache.lucene.util.Constants: java.lang.String OS_NAME> 
(assert true)
(define-const var992 Bool (startsWith/-1785782452 var1326 "FreeBSD")) ; Statement: $z4 = virtualinvoke $r12.<java.lang.String: boolean startsWith(java.lang.String)>("FreeBSD") 
(define-const var1885 Bool var992) ; Statement: <org.apache.lucene.util.Constants: boolean FREE_BSD> = $z4 
(define-const var2342 String (var1851_getSysProp/1825134291 "os.arch" "Unknown")) ; Statement: $r13 = staticinvoke <org.apache.lucene.util.Constants: java.lang.String getSysProp(java.lang.String,java.lang.String)>("os.arch", "Unknown") 
(define-const var443 String var2342) ; Statement: <org.apache.lucene.util.Constants: java.lang.String OS_ARCH> = $r13 
(define-const var1096 String (var1851_getSysProp/1825134291 "os.version" "Unknown")) ; Statement: $r14 = staticinvoke <org.apache.lucene.util.Constants: java.lang.String getSysProp(java.lang.String,java.lang.String)>("os.version", "Unknown") 
(define-const var3453 String var1096) ; Statement: <org.apache.lucene.util.Constants: java.lang.String OS_VERSION> = $r14 
(define-const var1972 String (var1851_getSysProp/1825134291 "java.vendor" "Unknown")) ; Statement: $r15 = staticinvoke <org.apache.lucene.util.Constants: java.lang.String getSysProp(java.lang.String,java.lang.String)>("java.vendor", "Unknown") 
(define-const var3924 String var1972) ; Statement: <org.apache.lucene.util.Constants: java.lang.String JAVA_VENDOR> = $r15 
(define-const var346 String (var1851_getSysProp/1825134291 "java.vm.info" "")) ; Statement: $r16 = staticinvoke <org.apache.lucene.util.Constants: java.lang.String getSysProp(java.lang.String,java.lang.String)>("java.vm.info", "") 
(assert true)
(define-const var2607 Bool (contains/1009244746 var346 (cast-from-String-to-String "emulated-client"))) ; Statement: $z5 = virtualinvoke $r16.<java.lang.String: boolean contains(java.lang.CharSequence)>("emulated-client") 
(define-const var409 Bool var2607) ; Statement: <org.apache.lucene.util.Constants: boolean IS_CLIENT_VM> = $z5 
(define-const var3823 Bool var433-IS_HOTSPOT_VM) ; Statement: $z6 = <org.apache.lucene.util.HotspotVMOptions: boolean IS_HOTSPOT_VM> 
(define-const var687 Bool var3823) ; Statement: <org.apache.lucene.util.Constants: boolean IS_HOTSPOT_VM> = $z6 
(define-const var3487 var1467 (var433_get/-917974604 "UseJVMCICompiler")) ; Statement: $r18 = staticinvoke <org.apache.lucene.util.HotspotVMOptions: java.util.Optional get(java.lang.String)>("UseJVMCICompiler") 
(define-const var3604 var1099 var2373_bootstrap$/1001252598) ; Statement: $r17 = staticinvoke <org.apache.lucene.util.Constants$valueOf__420: java.util.function.Function bootstrap$()>() 
(assert true)
(define-const var457 var1467 (map/1305667865 var3487 var3604)) ; Statement: $r20 = virtualinvoke $r18.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r17) 
(define-const var1372 var2588 (var2588_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r19 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(assert true)
(define-const var362 var1672 (orElse/-757175127 var457 (cast-from-var2588-to-var1672 var1372))) ; Statement: $r21 = virtualinvoke $r20.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>($r19) 
(define-const var2969 var2588 (cast-from-var1672-to-var2588 var362)) ; Statement: $r22 = (java.lang.Boolean) $r21 
(assert true)
(define-const var440 Bool (booleanValue/-1820462562 var2969)) ; Statement: $z7 = virtualinvoke $r22.<java.lang.Boolean: boolean booleanValue()>() 
(define-const var1048 Bool var440) ; Statement: <org.apache.lucene.util.Constants: boolean IS_JVMCI_VM> = $z7 
(define-const var3464 Bool var1851_is64Bit/1594474571) ; Statement: $z8 = staticinvoke <org.apache.lucene.util.Constants: boolean is64Bit()>() 
(define-const var974 Bool var3464) ; Statement: <org.apache.lucene.util.Constants: boolean JRE_IS_64BIT> = $z8 
(define-const var1363 Bool var1851-IS_CLIENT_VM) ; Statement: $z9 = <org.apache.lucene.util.Constants: boolean IS_CLIENT_VM> 
 ; Statement: if $z9 != 0 goto $z11 = 0 
(assert (not (= (ite var1363 1 0) 0))) ; Cond: $z9 != 0 
(define-const var1796 Bool (ite (= 1 0) true false)) ; Statement: $z11 = 0 
(assert true) ; Non Conditional
(define-const var2447 Bool var1796) ; Statement: <org.apache.lucene.util.Constants: boolean HAS_FMA> = $z11 
(define-const var3277 var1467 (var433_get/-917974604 "MaxVectorSize")) ; Statement: $r29 = staticinvoke <org.apache.lucene.util.HotspotVMOptions: java.util.Optional get(java.lang.String)>("MaxVectorSize") 
(define-const var3921 var1099 var2412_bootstrap$/-23441323) ; Statement: $r30 = staticinvoke <org.apache.lucene.util.Constants$valueOf__421: java.util.function.Function bootstrap$()>() 
(assert true)
(define-const var3309 var1467 (map/1305667865 var3277 var3921)) ; Statement: $r31 = virtualinvoke $r29.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r30) 
(define-const var716 Int (Int_valueOf/-1371140006 0)) ; Statement: $r32 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0) 
(assert true)
(define-const var3075 var1672 (orElse/-757175127 var3309 (cast-from-Int-to-var1672 var716))) ; Statement: $r33 = virtualinvoke $r31.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>($r32) 
(define-const var717 Int (cast-from-var1672-to-Int var3075)) ; Statement: $r34 = (java.lang.Integer) $r33 
(assert true)
(define-const var3484 Int (intValue/-1815674922 var717)) ; Statement: $i1 = virtualinvoke $r34.<java.lang.Integer: int intValue()>() 
(define-const var1183 Int var3484) ; Statement: <org.apache.lucene.util.Constants: int MAX_VECTOR_SIZE> = $i1 
(define-const var2265 var1467 (var433_get/-917974604 "UseXmmI2F")) ; Statement: $r35 = staticinvoke <org.apache.lucene.util.HotspotVMOptions: java.util.Optional get(java.lang.String)>("UseXmmI2F") 
(define-const var101 var1099 var2668_bootstrap$/1197444210) ; Statement: $r36 = staticinvoke <org.apache.lucene.util.Constants$valueOf__424: java.util.function.Function bootstrap$()>() 
(assert true)
(define-const var1014 var1467 (map/1305667865 var2265 var101)) ; Statement: $r37 = virtualinvoke $r35.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r36) 
(define-const var117 var2588 (var2588_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r38 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(assert true)
(define-const var2901 var1672 (orElse/-757175127 var1014 (cast-from-var2588-to-var1672 var117))) ; Statement: $r39 = virtualinvoke $r37.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>($r38) 
(define-const var2731 var2588 (cast-from-var1672-to-var2588 var2901)) ; Statement: $r40 = (java.lang.Boolean) $r39 
(assert true)
(define-const var1359 Bool (booleanValue/-1820462562 var2731)) ; Statement: $z12 = virtualinvoke $r40.<java.lang.Boolean: boolean booleanValue()>() 
(define-const var1528 Bool var1359) ; Statement: <org.apache.lucene.util.Constants: boolean HAS_SSE4A> = $z12 
(define-const var917 Bool var1851_hasFastVectorFMA/614066377) ; Statement: $z13 = staticinvoke <org.apache.lucene.util.Constants: boolean hasFastVectorFMA()>() 
(define-const var593 Bool var917) ; Statement: <org.apache.lucene.util.Constants: boolean HAS_FAST_VECTOR_FMA> = $z13 
(define-const var3755 Bool var1851_hasFastScalarFMA/-1430993742) ; Statement: $z14 = staticinvoke <org.apache.lucene.util.Constants: boolean hasFastScalarFMA()>() 
(define-const var3725 Bool var3755) ; Statement: <org.apache.lucene.util.Constants: boolean HAS_FAST_SCALAR_FMA> = $z14 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1851_getSysProp/1825134291=([java.lang.String, java.lang.String], java.lang.String), var2284_version/-645661189=([], java.lang.Runtime$Version), toString/-497435464=([java.lang.Runtime$Version], java.lang.String), feature/-1694642822=([java.lang.Runtime$Version], int), Int_toString/1350422511=([int], java.lang.String), var3697_getProperty/258823597=([java.lang.String], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var433_get/-917974604=([java.lang.String], java.util.Optional), var2373_bootstrap$/1001252598=([], java.util.function.Function), map/1305667865=([java.util.Optional, java.util.function.Function], java.util.Optional), var2588_valueOf/1602327315=([boolean], java.lang.Boolean), orElse/-757175127=([java.util.Optional, java.lang.Object], java.lang.Object), cast-from-var2588-to-var1672=([java.lang.Boolean], java.lang.Object), cast-from-var1672-to-var2588=([java.lang.Object], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), var1851_is64Bit/1594474571=([], boolean), var2412_bootstrap$/-23441323=([], java.util.function.Function), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1672=([java.lang.Integer], java.lang.Object), cast-from-var1672-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), var2668_bootstrap$/1197444210=([], java.util.function.Function), var1851_hasFastVectorFMA/614066377=([], boolean), var1851_hasFastScalarFMA/-1430993742=([], boolean)}
; {var1851=org.apache.lucene.util.Constants, var3824=$r0, var3638=<org.apache.lucene.util.Constants: java.lang.String JVM_VENDOR>, var3546=$r1, var980=<org.apache.lucene.util.Constants: java.lang.String JVM_NAME>, var528=java.lang.Runtime$Version, var2284=java.lang.Runtime, var3404=$r2, var391=$r3, var1481=<org.apache.lucene.util.Constants: java.lang.String JVM_VERSION>, var2548=$r4, var1167=$i0, var2187=$r5, var1823=<org.apache.lucene.util.Constants: java.lang.String JVM_SPEC_VERSION>, var3697=java.lang.System, var3450=$r6, var3712=<org.apache.lucene.util.Constants: java.lang.String JAVA_VERSION>, var3162=$r7, var548=<org.apache.lucene.util.Constants: java.lang.String OS_NAME>, var1277=$r8, var2056=$z0, var1634=<org.apache.lucene.util.Constants: boolean LINUX>, var3995=$r9, var3594=$z1, var3950=<org.apache.lucene.util.Constants: boolean WINDOWS>, var3886=$r10, var3675=$z2, var171=<org.apache.lucene.util.Constants: boolean SUN_OS>, var469=$r11, var3938=$z3, var2802=<org.apache.lucene.util.Constants: boolean MAC_OS_X>, var1326=$r12, var992=$z4, var1885=<org.apache.lucene.util.Constants: boolean FREE_BSD>, var2342=$r13, var443=<org.apache.lucene.util.Constants: java.lang.String OS_ARCH>, var1096=$r14, var3453=<org.apache.lucene.util.Constants: java.lang.String OS_VERSION>, var1972=$r15, var3924=<org.apache.lucene.util.Constants: java.lang.String JAVA_VENDOR>, var346=$r16, var2607=$z5, var409=<org.apache.lucene.util.Constants: boolean IS_CLIENT_VM>, var433=org.apache.lucene.util.HotspotVMOptions, var3823=$z6, var687=<org.apache.lucene.util.Constants: boolean IS_HOTSPOT_VM>, var1467=java.util.Optional, var3487=$r18, var1099=java.util.function.Function, var2373=org.apache.lucene.util.Constants$valueOf__420, var3604=$r17, var457=$r20, var2588=java.lang.Boolean, var1372=$r19, var1672=java.lang.Object, var362=$r21, var2969=$r22, var440=$z7, var1048=<org.apache.lucene.util.Constants: boolean IS_JVMCI_VM>, var3464=$z8, var974=<org.apache.lucene.util.Constants: boolean JRE_IS_64BIT>, var1363=$z9, var1796=$z11, var2447=<org.apache.lucene.util.Constants: boolean HAS_FMA>, var3277=$r29, var2412=org.apache.lucene.util.Constants$valueOf__421, var3921=$r30, var3309=$r31, var716=$r32, var3075=$r33, var717=$r34, var3484=$i1, var1183=<org.apache.lucene.util.Constants: int MAX_VECTOR_SIZE>, var2265=$r35, var2668=org.apache.lucene.util.Constants$valueOf__424, var101=$r36, var1014=$r37, var117=$r38, var2901=$r39, var2731=$r40, var1359=$z12, var1528=<org.apache.lucene.util.Constants: boolean HAS_SSE4A>, var917=$z13, var593=<org.apache.lucene.util.Constants: boolean HAS_FAST_VECTOR_FMA>, var3755=$z14, var3725=<org.apache.lucene.util.Constants: boolean HAS_FAST_SCALAR_FMA>}
; {org.apache.lucene.util.Constants=var1851, $r0=var3824, <org.apache.lucene.util.Constants: java.lang.String JVM_VENDOR>=var3638, $r1=var3546, <org.apache.lucene.util.Constants: java.lang.String JVM_NAME>=var980, java.lang.Runtime$Version=var528, java.lang.Runtime=var2284, $r2=var3404, $r3=var391, <org.apache.lucene.util.Constants: java.lang.String JVM_VERSION>=var1481, $r4=var2548, $i0=var1167, $r5=var2187, <org.apache.lucene.util.Constants: java.lang.String JVM_SPEC_VERSION>=var1823, java.lang.System=var3697, $r6=var3450, <org.apache.lucene.util.Constants: java.lang.String JAVA_VERSION>=var3712, $r7=var3162, <org.apache.lucene.util.Constants: java.lang.String OS_NAME>=var548, $r8=var1277, $z0=var2056, <org.apache.lucene.util.Constants: boolean LINUX>=var1634, $r9=var3995, $z1=var3594, <org.apache.lucene.util.Constants: boolean WINDOWS>=var3950, $r10=var3886, $z2=var3675, <org.apache.lucene.util.Constants: boolean SUN_OS>=var171, $r11=var469, $z3=var3938, <org.apache.lucene.util.Constants: boolean MAC_OS_X>=var2802, $r12=var1326, $z4=var992, <org.apache.lucene.util.Constants: boolean FREE_BSD>=var1885, $r13=var2342, <org.apache.lucene.util.Constants: java.lang.String OS_ARCH>=var443, $r14=var1096, <org.apache.lucene.util.Constants: java.lang.String OS_VERSION>=var3453, $r15=var1972, <org.apache.lucene.util.Constants: java.lang.String JAVA_VENDOR>=var3924, $r16=var346, $z5=var2607, <org.apache.lucene.util.Constants: boolean IS_CLIENT_VM>=var409, org.apache.lucene.util.HotspotVMOptions=var433, $z6=var3823, <org.apache.lucene.util.Constants: boolean IS_HOTSPOT_VM>=var687, java.util.Optional=var1467, $r18=var3487, java.util.function.Function=var1099, org.apache.lucene.util.Constants$valueOf__420=var2373, $r17=var3604, $r20=var457, java.lang.Boolean=var2588, $r19=var1372, java.lang.Object=var1672, $r21=var362, $r22=var2969, $z7=var440, <org.apache.lucene.util.Constants: boolean IS_JVMCI_VM>=var1048, $z8=var3464, <org.apache.lucene.util.Constants: boolean JRE_IS_64BIT>=var974, $z9=var1363, $z11=var1796, <org.apache.lucene.util.Constants: boolean HAS_FMA>=var2447, $r29=var3277, org.apache.lucene.util.Constants$valueOf__421=var2412, $r30=var3921, $r31=var3309, $r32=var716, $r33=var3075, $r34=var717, $i1=var3484, <org.apache.lucene.util.Constants: int MAX_VECTOR_SIZE>=var1183, $r35=var2265, org.apache.lucene.util.Constants$valueOf__424=var2668, $r36=var101, $r37=var1014, $r38=var117, $r39=var2901, $r40=var2731, $z12=var1359, <org.apache.lucene.util.Constants: boolean HAS_SSE4A>=var1528, $z13=var917, <org.apache.lucene.util.Constants: boolean HAS_FAST_VECTOR_FMA>=var593, $z14=var3755, <org.apache.lucene.util.Constants: boolean HAS_FAST_SCALAR_FMA>=var3725}
;seq <java.lang.Runtime$Version: java.lang.String toString()>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 5,"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts $r0 = staticinvoke <org.apache.lucene.util.Constants: java.lang.String getSysProp(java.lang.String,java.lang.String)>("java.vm.vendor", "Unknown");	<org.apache.lucene.util.Constants: java.lang.String JVM_VENDOR> = $r0;	$r1 = staticinvoke <org.apache.lucene.util.Constants: java.lang.String getSysProp(java.lang.String,java.lang.String)>("java.vm.name", "Unknown");	<org.apache.lucene.util.Constants: java.lang.String JVM_NAME> = $r1;	$r2 = staticinvoke <java.lang.Runtime: java.lang.Runtime$Version version()>();	$r3 = virtualinvoke $r2.<java.lang.Runtime$Version: java.lang.String toString()>();	<org.apache.lucene.util.Constants: java.lang.String JVM_VERSION> = $r3;	$r4 = staticinvoke <java.lang.Runtime: java.lang.Runtime$Version version()>();	$i0 = virtualinvoke $r4.<java.lang.Runtime$Version: int feature()>();	$r5 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i0);	<org.apache.lucene.util.Constants: java.lang.String JVM_SPEC_VERSION> = $r5;	$r6 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.version");	<org.apache.lucene.util.Constants: java.lang.String JAVA_VERSION> = $r6;	$r7 = staticinvoke <org.apache.lucene.util.Constants: java.lang.String getSysProp(java.lang.String,java.lang.String)>("os.name", "Unknown");	<org.apache.lucene.util.Constants: java.lang.String OS_NAME> = $r7;	$r8 = <org.apache.lucene.util.Constants: java.lang.String OS_NAME>;	$z0 = virtualinvoke $r8.<java.lang.String: boolean startsWith(java.lang.String)>("Linux");	<org.apache.lucene.util.Constants: boolean LINUX> = $z0;	$r9 = <org.apache.lucene.util.Constants: java.lang.String OS_NAME>;	$z1 = virtualinvoke $r9.<java.lang.String: boolean startsWith(java.lang.String)>("Windows");	<org.apache.lucene.util.Constants: boolean WINDOWS> = $z1;	$r10 = <org.apache.lucene.util.Constants: java.lang.String OS_NAME>;	$z2 = virtualinvoke $r10.<java.lang.String: boolean startsWith(java.lang.String)>("SunOS");	<org.apache.lucene.util.Constants: boolean SUN_OS> = $z2;	$r11 = <org.apache.lucene.util.Constants: java.lang.String OS_NAME>;	$z3 = virtualinvoke $r11.<java.lang.String: boolean startsWith(java.lang.String)>("Mac OS X");	<org.apache.lucene.util.Constants: boolean MAC_OS_X> = $z3;	$r12 = <org.apache.lucene.util.Constants: java.lang.String OS_NAME>;	$z4 = virtualinvoke $r12.<java.lang.String: boolean startsWith(java.lang.String)>("FreeBSD");	<org.apache.lucene.util.Constants: boolean FREE_BSD> = $z4;	$r13 = staticinvoke <org.apache.lucene.util.Constants: java.lang.String getSysProp(java.lang.String,java.lang.String)>("os.arch", "Unknown");	<org.apache.lucene.util.Constants: java.lang.String OS_ARCH> = $r13;	$r14 = staticinvoke <org.apache.lucene.util.Constants: java.lang.String getSysProp(java.lang.String,java.lang.String)>("os.version", "Unknown");	<org.apache.lucene.util.Constants: java.lang.String OS_VERSION> = $r14;	$r15 = staticinvoke <org.apache.lucene.util.Constants: java.lang.String getSysProp(java.lang.String,java.lang.String)>("java.vendor", "Unknown");	<org.apache.lucene.util.Constants: java.lang.String JAVA_VENDOR> = $r15;	$r16 = staticinvoke <org.apache.lucene.util.Constants: java.lang.String getSysProp(java.lang.String,java.lang.String)>("java.vm.info", "");	$z5 = virtualinvoke $r16.<java.lang.String: boolean contains(java.lang.CharSequence)>("emulated-client");	<org.apache.lucene.util.Constants: boolean IS_CLIENT_VM> = $z5;	$z6 = <org.apache.lucene.util.HotspotVMOptions: boolean IS_HOTSPOT_VM>;	<org.apache.lucene.util.Constants: boolean IS_HOTSPOT_VM> = $z6;	$r18 = staticinvoke <org.apache.lucene.util.HotspotVMOptions: java.util.Optional get(java.lang.String)>("UseJVMCICompiler");	$r17 = staticinvoke <org.apache.lucene.util.Constants$valueOf__420: java.util.function.Function bootstrap$()>();	$r20 = virtualinvoke $r18.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r17);	$r19 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r21 = virtualinvoke $r20.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>($r19);	$r22 = (java.lang.Boolean) $r21;	$z7 = virtualinvoke $r22.<java.lang.Boolean: boolean booleanValue()>();	<org.apache.lucene.util.Constants: boolean IS_JVMCI_VM> = $z7;	$z8 = staticinvoke <org.apache.lucene.util.Constants: boolean is64Bit()>();	<org.apache.lucene.util.Constants: boolean JRE_IS_64BIT> = $z8;	$z9 = <org.apache.lucene.util.Constants: boolean IS_CLIENT_VM>;	if $z9 != 0 goto $z11 = 0;	$z11 = 0;	<org.apache.lucene.util.Constants: boolean HAS_FMA> = $z11;	$r29 = staticinvoke <org.apache.lucene.util.HotspotVMOptions: java.util.Optional get(java.lang.String)>("MaxVectorSize");	$r30 = staticinvoke <org.apache.lucene.util.Constants$valueOf__421: java.util.function.Function bootstrap$()>();	$r31 = virtualinvoke $r29.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r30);	$r32 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0);	$r33 = virtualinvoke $r31.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>($r32);	$r34 = (java.lang.Integer) $r33;	$i1 = virtualinvoke $r34.<java.lang.Integer: int intValue()>();	<org.apache.lucene.util.Constants: int MAX_VECTOR_SIZE> = $i1;	$r35 = staticinvoke <org.apache.lucene.util.HotspotVMOptions: java.util.Optional get(java.lang.String)>("UseXmmI2F");	$r36 = staticinvoke <org.apache.lucene.util.Constants$valueOf__424: java.util.function.Function bootstrap$()>();	$r37 = virtualinvoke $r35.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r36);	$r38 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r39 = virtualinvoke $r37.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>($r38);	$r40 = (java.lang.Boolean) $r39;	$z12 = virtualinvoke $r40.<java.lang.Boolean: boolean booleanValue()>();	<org.apache.lucene.util.Constants: boolean HAS_SSE4A> = $z12;	$z13 = staticinvoke <org.apache.lucene.util.Constants: boolean hasFastVectorFMA()>();	<org.apache.lucene.util.Constants: boolean HAS_FAST_VECTOR_FMA> = $z13;	$z14 = staticinvoke <org.apache.lucene.util.Constants: boolean hasFastScalarFMA()>();	<org.apache.lucene.util.Constants: boolean HAS_FAST_SCALAR_FMA> = $z14;	return
;block_num 3
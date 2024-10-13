(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1480 0)
(declare-sort var1940 0)
(declare-sort var1096 0)
(declare-sort var3436 0)
(declare-sort var1377 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1940_id/-2071121520 (var1096) String)
(declare-fun cast-from-var1480-to-var1096 (var1480) var1096)
(declare-fun getArray/660649269 (var1377) var3436)
(declare-fun cast-from-var1480-to-var1377 (var1480) var1377)
(declare-fun getClass/1258963082 (var1096) ClassObject)
(declare-fun cast-from-var3436-to-var1096 (var3436) var1096)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1480 var1480)
(declare-const var1094 var1480) ; Statement: r1 := @this: jdk.nashorn.internal.objects.NativeArray 
(assert (not (= var1094 null-var1480)))
(define-const var2491 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2491)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2491!1 String)
(assert (= var2491!1 ""))
(assert true)
(define-const var3335 String (append/672562846 var2491!1 "NativeArray@")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NativeArray@") 
(declare-const var2491!2 String)
(assert (= var2491!2 (str.++ var2491!1 "NativeArray@")))
(define-const var1244 String (var1940_id/-2071121520 (cast-from-var1480-to-var1096 var1094))) ; Statement: $r2 = staticinvoke <jdk.nashorn.internal.runtime.Debug: java.lang.String id(java.lang.Object)>(r1) 
(assert true)
(define-const var3906 String (append/672562846 var3335 var1244)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3335!1 String)
(assert (= var3335!1 (str.++ var3335 var1244)))
(assert true)
(define-const var2104 String (append/672562846 var3906 " [")) ; Statement: $r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [") 
(declare-const var3906!1 String)
(assert (= var3906!1 (str.++ var3906 " [")))
(assert true)
(define-const var2172 var3436 (getArray/660649269 (cast-from-var1480-to-var1377 var1094))) ; Statement: $r5 = virtualinvoke r1.<jdk.nashorn.internal.objects.NativeArray: jdk.nashorn.internal.runtime.arrays.ArrayData getArray()>() 
(assert true)
(define-const var2834 ClassObject (getClass/1258963082 (cast-from-var3436-to-var1096 var2172))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3847 String (getSimpleName/-390194377 var2834)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var1948 String (append/672562846 var2104 var3847)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2104!1 String)
(assert (= var2104!1 (str.++ var2104 var3847)))
(assert true)
(define-const var512 String (append/-1166366385 var1948 93)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var1948!1 String)
(assert (str.prefixof var1948 var1948!1))
(assert true)
(define-const var3825 String (toString/-2075883882 var512)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1940_id/-2071121520=([java.lang.Object], java.lang.String), cast-from-var1480-to-var1096=([jdk.nashorn.internal.objects.NativeArray], java.lang.Object), getArray/660649269=([jdk.nashorn.internal.runtime.ScriptObject], jdk.nashorn.internal.runtime.arrays.ArrayData), cast-from-var1480-to-var1377=([jdk.nashorn.internal.objects.NativeArray], jdk.nashorn.internal.runtime.ScriptObject), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3436-to-var1096=([jdk.nashorn.internal.runtime.arrays.ArrayData], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1480=jdk.nashorn.internal.objects.NativeArray, var1094=r1, var2491=$r0, var3335=$r3, var1940=jdk.nashorn.internal.runtime.Debug, var1096=java.lang.Object, var1244=$r2, var3906=$r4, var2104=$r8, var3436=jdk.nashorn.internal.runtime.arrays.ArrayData, var1377=jdk.nashorn.internal.runtime.ScriptObject, var2172=$r5, var2834=$r6, var3847=$r7, var1948=$r9, var512=$r10, var3825=$r11}
; {jdk.nashorn.internal.objects.NativeArray=var1480, r1=var1094, $r0=var2491, $r3=var3335, jdk.nashorn.internal.runtime.Debug=var1940, java.lang.Object=var1096, $r2=var1244, $r4=var3906, $r8=var2104, jdk.nashorn.internal.runtime.arrays.ArrayData=var3436, jdk.nashorn.internal.runtime.ScriptObject=var1377, $r5=var2172, $r6=var2834, $r7=var3847, $r9=var1948, $r10=var512, $r11=var3825}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.objects.NativeArray;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NativeArray@");	$r2 = staticinvoke <jdk.nashorn.internal.runtime.Debug: java.lang.String id(java.lang.Object)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [");	$r5 = virtualinvoke r1.<jdk.nashorn.internal.objects.NativeArray: jdk.nashorn.internal.runtime.arrays.ArrayData getArray()>();	$r6 = virtualinvoke $r5.<java.lang.Object: java.lang.Class getClass()>();	$r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getSimpleName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1
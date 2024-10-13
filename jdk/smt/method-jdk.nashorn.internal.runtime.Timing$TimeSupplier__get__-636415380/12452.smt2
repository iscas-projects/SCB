(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var575 0)
(declare-sort var3287 0)
(declare-sort var898 0)
(declare-sort var372 0)
(declare-sort var3930 0)
(declare-sort var2020 0)
(declare-sort var739 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3287_nanoTime/-1409780067 () Int)
(declare-fun timings/96026580 (var575) var898)
(declare-fun var898_entrySet/1101202697 (var898) var372)
(declare-fun var372_iterator/1911472585 (var372) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun orderedTimingNames/96026580 (var575) var3930)
(declare-fun iterator/1389191467 (var3930) Iterator)
(declare-fun this$0/96026580 (var575) var2020)
(declare-fun var2020_access$300/-719344486 (var2020) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var2020_toMillisPrint/-25268587 (Int) String)
(declare-fun cast-from-Int-to-Float64 (Int) Float64)
(declare-fun cast-from-Float64-to-Int (Float64) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun var739_getEmittedUnitCount/496782258 () Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var575 var575)
(declare-const var2874 var575) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.Timing$TimeSupplier 
(assert (not (= var2874 null-var575)))
(define-const var3185 Int var3287_nanoTime/-1409780067) ; Statement: l0 = staticinvoke <java.lang.System: long nanoTime()>() 
(define-const var1588 Int 0) ; Statement: l11 = 0L 
(define-const var2829 Int 0) ; Statement: i12 = 0 
(define-const var3783 Int 0) ; Statement: i13 = 0 
(define-const var3325 var898 (timings/96026580 var2874)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.Timing$TimeSupplier: java.util.Map timings> 
(define-const var1752 var372 (var898_entrySet/1101202697 var3325)) ; Statement: $r2 = interfaceinvoke $r1.<java.util.Map: java.util.Set entrySet()>() 
(define-const var2893 Iterator (var372_iterator/1911472585 var1752)) ; Statement: r29 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2536 Bool (Iterator_hasNext/-1669924200 var2893)) ; Statement: $z0 = interfaceinvoke r29.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto i14 = i12 + 1 
(assert (= (ite var2536 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1865 Int (+ var2829 1)) ; Statement: i14 = i12 + 1 
(define-const var611 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var611)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var611!1 String)
(assert (= var611!1 ""))
(assert true)
;(assert (append/672562846 var611!1 "Accumulated compilation phase timings:\n\n")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Accumulated compilation phase timings:\n\n") 
(declare-const var611!2 String)
(assert (= var611!2 (str.++ var611!1 "Accumulated compilation phase timings:\n\n")))
(define-const var509 var3930 (orderedTimingNames/96026580 var2874)) ; Statement: $r4 = r0.<jdk.nashorn.internal.runtime.Timing$TimeSupplier: java.util.concurrent.LinkedBlockingQueue orderedTimingNames> 
(assert true)
(define-const var1746 Iterator (iterator/1389191467 var509)) ; Statement: r31 = virtualinvoke $r4.<java.util.concurrent.LinkedBlockingQueue: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2889 Bool (Iterator_hasNext/-1669924200 var1746)) ; Statement: $z1 = interfaceinvoke r31.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r5 = r0.<jdk.nashorn.internal.runtime.Timing$TimeSupplier: jdk.nashorn.internal.runtime.Timing this$0> 
(assert (= (ite var2889 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3838 var2020 (this$0/96026580 var2874)) ; Statement: $r5 = r0.<jdk.nashorn.internal.runtime.Timing$TimeSupplier: jdk.nashorn.internal.runtime.Timing this$0> 
(define-const var1609 Int (var2020_access$300/-719344486 var3838)) ; Statement: $l1 = staticinvoke <jdk.nashorn.internal.runtime.Timing: long access$300(jdk.nashorn.internal.runtime.Timing)>($r5) 
(define-const var1207 Int (- var3185 var1609)) ; Statement: l19 = l0 - $l1 
(assert true)
;(assert (append/-1166366385 var611!2 10)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var611!3 String)
(assert (str.prefixof var611!2 var611!3))
(assert true)
(define-const var3014 String (append/672562846 var611!3 "Total runtime: ")) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Total runtime: ") 
(declare-const var611!4 String)
(assert (= var611!4 (str.++ var611!3 "Total runtime: ")))
(define-const var2913 String (var2020_toMillisPrint/-25268587 var1207)) ; Statement: $r6 = staticinvoke <jdk.nashorn.internal.runtime.Timing: java.lang.String toMillisPrint(long)>(l19) 
(assert true)
(define-const var563 String (append/672562846 var3014 var2913)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3014!1 String)
(assert (= var3014!1 (str.++ var3014 var2913)))
(assert true)
(define-const var176 String (append/672562846 var563 " ms (Non-runtime: ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ms (Non-runtime: ") 
(declare-const var563!1 String)
(assert (= var563!1 (str.++ var563 " ms (Non-runtime: ")))
(define-const var3538 String (var2020_toMillisPrint/-25268587 var1588)) ; Statement: $r9 = staticinvoke <jdk.nashorn.internal.runtime.Timing: java.lang.String toMillisPrint(long)>(l11) 
(assert true)
(define-const var651 String (append/672562846 var176 var3538)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var176!1 String)
(assert (= var176!1 (str.++ var176 var3538)))
(assert true)
(define-const var470 String (append/672562846 var651 " ms [")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ms [") 
(declare-const var651!1 String)
(assert (= var651!1 (str.++ var651 " ms [")))
(define-const var2119 Float64 (cast-from-Int-to-Float64 var1588)) ; Statement: $d0 = (double) l11 
(define-const var2636 Float64 (fp.mul roundNearestTiesToEven var2119 ((_ to_fp 11 53) #x4059000000000000))) ; Statement: $d2 = $d0 * 100.0 
(define-const var1159 Float64 (cast-from-Int-to-Float64 var1207)) ; Statement: $d1 = (double) l19 
(define-const var126 Float64 (fp.div roundNearestTiesToEven var2636 var1159)) ; Statement: $d3 = $d2 / $d1 
(define-const var1104 Int (cast-from-Float64-to-Int var126)) ; Statement: $i2 = (int) $d3 
(assert true)
(define-const var883 String (append/-1001720160 var470 var1104)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var470!1 String)
(assert (str.prefixof var470 var470!1))
(assert true)
;(assert (append/672562846 var883 "%])")) ; Statement: virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("%])") 
(declare-const var883!1 String)
(assert (= var883!1 (str.++ var883 "%])")))
(assert true)
(define-const var670 String (append/672562846 var611!4 "\n\nEmitted compile units: ")) ; Statement: $r14 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n\nEmitted compile units: ") 
(declare-const var611!5 String)
(assert (= var611!5 (str.++ var611!4 "\n\nEmitted compile units: ")))
(define-const var1793 Int var739_getEmittedUnitCount/496782258) ; Statement: $i3 = staticinvoke <jdk.nashorn.internal.codegen.CompileUnit: int getEmittedUnitCount()>() 
(assert true)
;(assert (append/-1001720160 var670 var1793)) ; Statement: virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var670!1 String)
(assert (str.prefixof var670 var670!1))
(assert true)
(define-const var3951 String (toString/-2075883882 var611!5)) ; Statement: $r15 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var3287_nanoTime/-1409780067=([], long), timings/96026580=([jdk.nashorn.internal.runtime.Timing$TimeSupplier], java.util.Map), var898_entrySet/1101202697=([java.util.Map], java.util.Set), var372_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), orderedTimingNames/96026580=([jdk.nashorn.internal.runtime.Timing$TimeSupplier], java.util.concurrent.LinkedBlockingQueue), iterator/1389191467=([java.util.concurrent.LinkedBlockingQueue], java.util.Iterator), this$0/96026580=([jdk.nashorn.internal.runtime.Timing$TimeSupplier], jdk.nashorn.internal.runtime.Timing), var2020_access$300/-719344486=([jdk.nashorn.internal.runtime.Timing], long), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var2020_toMillisPrint/-25268587=([long], java.lang.String), cast-from-Int-to-Float64=([long], double), cast-from-Float64-to-Int=([double], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), var739_getEmittedUnitCount/496782258=([], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var575=jdk.nashorn.internal.runtime.Timing$TimeSupplier, var2874=r0, var3287=java.lang.System, var3185=l0, var1588=l11, var2829=i12, var3783=i13, var898=java.util.Map, var3325=$r1, var372=java.util.Set, var1752=$r2, var2893=r29, var2536=$z0, var1865=i14, var611=$r3, var3930=java.util.concurrent.LinkedBlockingQueue, var509=$r4, var1746=r31, var2889=$z1, var2020=jdk.nashorn.internal.runtime.Timing, var3838=$r5, var1609=$l1, var1207=l19, var3014=$r7, var2913=$r6, var563=$r8, var176=$r10, var3538=$r9, var651=$r11, var470=$r12, var2119=$d0, var2636=$d2, var1159=$d1, var126=$d3, var1104=$i2, var883=$r13, var670=$r14, var739=jdk.nashorn.internal.codegen.CompileUnit, var1793=$i3, var3951=$r15}
; {jdk.nashorn.internal.runtime.Timing$TimeSupplier=var575, r0=var2874, java.lang.System=var3287, l0=var3185, l11=var1588, i12=var2829, i13=var3783, java.util.Map=var898, $r1=var3325, java.util.Set=var372, $r2=var1752, r29=var2893, $z0=var2536, i14=var1865, $r3=var611, java.util.concurrent.LinkedBlockingQueue=var3930, $r4=var509, r31=var1746, $z1=var2889, jdk.nashorn.internal.runtime.Timing=var2020, $r5=var3838, $l1=var1609, l19=var1207, $r7=var3014, $r6=var2913, $r8=var563, $r10=var176, $r9=var3538, $r11=var651, $r12=var470, $d0=var2119, $d2=var2636, $d1=var1159, $d3=var126, $i2=var1104, $r13=var883, $r14=var670, jdk.nashorn.internal.codegen.CompileUnit=var739, $i3=var1793, $r15=var3951}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.Timing$TimeSupplier;	l0 = staticinvoke <java.lang.System: long nanoTime()>();	l11 = 0L;	i12 = 0;	i13 = 0;	$r1 = r0.<jdk.nashorn.internal.runtime.Timing$TimeSupplier: java.util.Map timings>;	$r2 = interfaceinvoke $r1.<java.util.Map: java.util.Set entrySet()>();	r29 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r29.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto i14 = i12 + 1;	i14 = i12 + 1;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Accumulated compilation phase timings:\n\n");	$r4 = r0.<jdk.nashorn.internal.runtime.Timing$TimeSupplier: java.util.concurrent.LinkedBlockingQueue orderedTimingNames>;	r31 = virtualinvoke $r4.<java.util.concurrent.LinkedBlockingQueue: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r31.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r5 = r0.<jdk.nashorn.internal.runtime.Timing$TimeSupplier: jdk.nashorn.internal.runtime.Timing this$0>;	$r5 = r0.<jdk.nashorn.internal.runtime.Timing$TimeSupplier: jdk.nashorn.internal.runtime.Timing this$0>;	$l1 = staticinvoke <jdk.nashorn.internal.runtime.Timing: long access$300(jdk.nashorn.internal.runtime.Timing)>($r5);	l19 = l0 - $l1;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Total runtime: ");	$r6 = staticinvoke <jdk.nashorn.internal.runtime.Timing: java.lang.String toMillisPrint(long)>(l19);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ms (Non-runtime: ");	$r9 = staticinvoke <jdk.nashorn.internal.runtime.Timing: java.lang.String toMillisPrint(long)>(l11);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ms [");	$d0 = (double) l11;	$d2 = $d0 * 100.0;	$d1 = (double) l19;	$d3 = $d2 / $d1;	$i2 = (int) $d3;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("%])");	$r14 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n\nEmitted compile units: ");	$i3 = staticinvoke <jdk.nashorn.internal.codegen.CompileUnit: int getEmittedUnitCount()>();	virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r15 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 5
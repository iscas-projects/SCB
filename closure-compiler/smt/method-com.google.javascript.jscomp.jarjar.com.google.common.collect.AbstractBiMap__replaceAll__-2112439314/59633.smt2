(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2779 0)
(declare-sort var3803 0)
(declare-sort var2461 0)
(declare-sort var3242 0)
(declare-sort var2640 0)
(declare-sort var3108 0)
(declare-sort var1994 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun delegate/1917347715 (var2779) var2461)
(declare-fun var2461_replaceAll/-1214686731 (var2461 var3803) void)
(declare-fun inverse/1917347715 (var2779) var2779)
(declare-fun var2461_clear/2125668534 (var2461) void)
(declare-fun var2461_entrySet/1101202697 (var2461) var2640)
(declare-fun var2640_iterator/1911472585 (var2640) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var3108-init () var3108)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3242_getValue/381491177 (var3242) var1994)
(declare-fun append/-1031950772 (String var1994) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3108 String) void)
(declare-const null-var2779 var2779)
(declare-const null-var3803 var3803)
(declare-const null-var3242 var3242)
(declare-const var2013 var2779) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap 
(assert (not (= var2013 null-var2779)))
(declare-const var434 var3803) ; Statement: r1 := @parameter0: java.util.function.BiFunction 
(assert (not (= var434 null-var3803)))
(define-const var2824 var2461 (delegate/1917347715 var2013)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap: java.util.Map delegate> 
;(assert (var2461_replaceAll/-1214686731 var2824 var434)) ; Statement: interfaceinvoke $r2.<java.util.Map: void replaceAll(java.util.function.BiFunction)>(r1) 

(declare-const var2824!1 var2461)
(declare-const var434!1 var3803)
(define-const var2417 var2779 (inverse/1917347715 var2013)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap inverse> 
(define-const var152 var2461 (delegate/1917347715 var2417)) ; Statement: $r4 = $r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap: java.util.Map delegate> 
;(assert (var2461_clear/2125668534 var152)) ; Statement: interfaceinvoke $r4.<java.util.Map: void clear()>() 

(declare-const var152!1 var2461)
(define-const var1672 var3242 null-var3242) ; Statement: r21 = null 
(define-const var2757 var2461 (delegate/1917347715 var2013)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap: java.util.Map delegate> 
(define-const var2939 var2640 (var2461_entrySet/1101202697 var2757)) ; Statement: $r6 = interfaceinvoke $r5.<java.util.Map: java.util.Set entrySet()>() 
(define-const var1739 Iterator (var2640_iterator/1911472585 var2939)) ; Statement: r7 = interfaceinvoke $r6.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var777 Bool (Iterator_hasNext/-1669924200 var1739)) ; Statement: $z0 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var777 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r21 == null goto return 
(assert (not (= var1672 null-var3242))) ; Negate: Cond: r21 == null  
(define-const var998 var3108 var3108-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(define-const var3137 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3137)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3137!1 String)
(assert (= var3137!1 ""))
(assert true)
(define-const var2128 String (append/672562846 var3137!1 "value already present: ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("value already present: ") 
(declare-const var3137!2 String)
(assert (= var3137!2 (str.++ var3137!1 "value already present: ")))
(define-const var1336 var1994 (var3242_getValue/381491177 var1672)) ; Statement: $r10 = interfaceinvoke r21.<java.util.Map$Entry: java.lang.Object getValue()>() 
(assert true)
(define-const var829 String (append/-1031950772 var2128 var1336)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var2128!1 String)
(assert (str.prefixof var2128 var2128!1))
(assert true)
(define-const var1792 String (toString/-2075883882 var829)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var998 var1792)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13) 

(declare-const var998!1 var3108)
(declare-const var1792!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {delegate/1917347715=([com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap], java.util.Map), var2461_replaceAll/-1214686731=([java.util.Map, java.util.function.BiFunction], void), inverse/1917347715=([com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap], com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap), var2461_clear/2125668534=([java.util.Map], void), var2461_entrySet/1101202697=([java.util.Map], java.util.Set), var2640_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var3108-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3242_getValue/381491177=([java.util.Map$Entry], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2779=com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap, var2013=r0, var3803=java.util.function.BiFunction, var434=r1, var2461=java.util.Map, var2824=$r2, var2417=$r3, var152=$r4, var3242=java.util.Map$Entry, var1672=r21, var2757=$r5, var2640=java.util.Set, var2939=$r6, var1739=r7, var777=$z0, var3108=java.lang.IllegalArgumentException, var998=$r8, var3137=$r9, var2128=$r11, var1994=java.lang.Object, var1336=$r10, var829=$r12, var1792=$r13}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap=var2779, r0=var2013, java.util.function.BiFunction=var3803, r1=var434, java.util.Map=var2461, $r2=var2824, $r3=var2417, $r4=var152, java.util.Map$Entry=var3242, r21=var1672, $r5=var2757, java.util.Set=var2640, $r6=var2939, r7=var1739, $z0=var777, java.lang.IllegalArgumentException=var3108, $r8=var998, $r9=var3137, $r11=var2128, java.lang.Object=var1994, $r10=var1336, $r12=var829, $r13=var1792}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap;	r1 := @parameter0: java.util.function.BiFunction;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap: java.util.Map delegate>;	interfaceinvoke $r2.<java.util.Map: void replaceAll(java.util.function.BiFunction)>(r1);	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap inverse>;	$r4 = $r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap: java.util.Map delegate>;	interfaceinvoke $r4.<java.util.Map: void clear()>();	r21 = null;	$r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap: java.util.Map delegate>;	$r6 = interfaceinvoke $r5.<java.util.Map: java.util.Set entrySet()>();	r7 = interfaceinvoke $r6.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto (branch);	if r21 == null goto return;	$r8 = new java.lang.IllegalArgumentException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("value already present: ");	$r10 = interfaceinvoke r21.<java.util.Map$Entry: java.lang.Object getValue()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13);	throw $r8
;block_num 4
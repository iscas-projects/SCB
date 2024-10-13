(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2492 0)
(declare-sort var3489 0)
(declare-sort var256 0)
(declare-sort var500 0)
(declare-sort var2782 0)
(declare-sort var2447 0)
(declare-sort var1585 0)
(declare-sort var765 0)
(declare-sort var3748 0)
(declare-sort var2779 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var500) ClassObject)
(declare-fun var765_getDefaultObjectReaderProvider/-2075755087 () var1585)
(declare-fun getTypeConvert/1735566455 (var1585 ClassObject ClassObject) var3748)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun var2779-init () var2779)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var500) String)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2779 String) void)
(declare-const null-var2492 var2492)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var256 var256)
(declare-const null-var500 var500)
(declare-const null-var2782 var2782)
(declare-const null-var2447 var2447)
(declare-const null-var3748 var3748)
(declare-const var2823 var2492) ; Statement: r100 := @this: com.alibaba.fastjson2.reader.ObjectReaderCreator 
(assert (not (= var2823 null-var2492)))
(declare-const var1483 ClassObject) ; Statement: r13 := @parameter0: java.lang.Class 
(assert (not (= var1483 null-ClassObject)))
(declare-const var407 ClassObject) ; Statement: r12 := @parameter1: java.lang.reflect.Type 
(assert (not (= var407 null-ClassObject)))
(declare-const var317 String) ; Statement: r16 := @parameter2: java.lang.String 
(assert (not (= var317 null-String)))
(declare-const var1472 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var1472 null-Int)))
(declare-const var2540 Int) ; Statement: l0 := @parameter4: long 
(assert (not (= var2540 null-Int)))
(declare-const var65 String) ; Statement: r17 := @parameter5: java.lang.String 
(assert (not (= var65 null-String)))
(declare-const var361 var256) ; Statement: r18 := @parameter6: java.util.Locale 
(assert (not (= var361 null-var256)))
(declare-const var1714 var500) ; Statement: r101 := @parameter7: java.lang.Object 
(assert (not (= var1714 null-var500)))
(declare-const var2104 String) ; Statement: r1 := @parameter8: java.lang.String 
(assert (not (= var2104 null-String)))
(declare-const var1517 ClassObject) ; Statement: r3 := @parameter9: java.lang.reflect.Type 
(assert (not (= var1517 null-ClassObject)))
(declare-const var2093 ClassObject) ; Statement: r11 := @parameter10: java.lang.Class 
(assert (not (= var2093 null-ClassObject)))
(declare-const var3179 var2782) ; Statement: r0 := @parameter11: java.lang.reflect.Method 
(assert (not (= var3179 null-var2782)))
(declare-const var3645 var2447) ; Statement: r2 := @parameter12: com.alibaba.fastjson2.reader.ObjectReader 
(assert (not (= var3645 null-var2447)))
 ; Statement: if r0 == null goto $z0 = r101 instanceof java.lang.String 
(assert (= var3179 null-var2782)) ; Cond: r0 == null 
(define-const var637 Bool false) ; Statement: $z0 = r101 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var637 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r101 == null goto r103 = null 
(assert (not (= var1714 null-var500))) ; Negate: Cond: r101 == null  
(assert true)
(define-const var3099 ClassObject (getClass/1258963082 var1714)) ; Statement: $r87 = virtualinvoke r101.<java.lang.Object: java.lang.Class getClass()>() 
 ; Statement: if $r87 == r11 goto r103 = null 
(assert (not (= var3099 var2093))) ; Negate: Cond: $r87 == r11  
(define-const var2335 var1585 var765_getDefaultObjectReaderProvider/-2075755087) ; Statement: $r89 = staticinvoke <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.reader.ObjectReaderProvider getDefaultObjectReaderProvider()>() 
(assert true)
(define-const var60 ClassObject (getClass/1258963082 var1714)) ; Statement: $r88 = virtualinvoke r101.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var813 var3748 (getTypeConvert/1735566455 var2335 (cast-from-ClassObject-to-ClassObject var60) var1517)) ; Statement: r102 = virtualinvoke $r89.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.function.Function getTypeConvert(java.lang.reflect.Type,java.lang.reflect.Type)>($r88, r3) 
 ; Statement: if r102 == null goto $r90 = new com.alibaba.fastjson2.JSONException 
(assert (= var813 null-var3748)) ; Cond: r102 == null 
(define-const var1146 var2779 var2779-init) ; Statement: $r90 = new com.alibaba.fastjson2.JSONException 
(define-const var2399 String String-init) ; Statement: $r91 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2399)) ; Statement: specialinvoke $r91.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2399!1 String)
(assert (= var2399!1 ""))
(assert true)
(define-const var906 String (append/672562846 var2399!1 "illegal defaultValue : ")) ; Statement: $r92 = virtualinvoke $r91.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal defaultValue : ") 
(declare-const var2399!2 String)
(assert (= var2399!2 (str.++ var2399!1 "illegal defaultValue : ")))
(assert true)
(define-const var3565 String (append/-1031950772 var906 var1714)) ; Statement: $r93 = virtualinvoke $r92.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r101) 
(declare-const var906!1 String)
(assert (str.prefixof var906 var906!1))
(assert true)
(define-const var1947 String (append/672562846 var3565 ", class ")) ; Statement: $r95 = virtualinvoke $r93.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", class ") 
(declare-const var3565!1 String)
(assert (= var3565!1 (str.++ var3565 ", class ")))
(assert true)
(define-const var3401 String (getName/-1958580599 var2093)) ; Statement: $r94 = virtualinvoke r11.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var847 String (append/672562846 var1947 var3401)) ; Statement: $r96 = virtualinvoke $r95.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r94) 
(declare-const var1947!1 String)
(assert (= var1947!1 (str.++ var1947 var3401)))
(assert true)
(define-const var2069 String (toString/-2075883882 var847)) ; Statement: $r97 = virtualinvoke $r96.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1146 var2069)) ; Statement: specialinvoke $r90.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r97) 

(declare-const var1146!1 var2779)
(declare-const var2069!1 String)
 ; Statement: throw $r90 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), var765_getDefaultObjectReaderProvider/-2075755087=([], com.alibaba.fastjson2.reader.ObjectReaderProvider), getTypeConvert/1735566455=([com.alibaba.fastjson2.reader.ObjectReaderProvider, java.lang.reflect.Type, java.lang.reflect.Type], java.util.function.Function), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), var2779-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2492=com.alibaba.fastjson2.reader.ObjectReaderCreator, var2823=r100, var1483=r13, var407=r12, var317=r16, var3489=null_type, var1472=i3, var2540=l0, var65=r17, var256=java.util.Locale, var361=r18, var500=java.lang.Object, var1714=r101, var2104=r1, var1517=r3, var2093=r11, var2782=java.lang.reflect.Method, var3179=r0, var2447=com.alibaba.fastjson2.reader.ObjectReader, var3645=r2, var637=$z0, var3099=$r87, var1585=com.alibaba.fastjson2.reader.ObjectReaderProvider, var765=com.alibaba.fastjson2.JSONFactory, var2335=$r89, var60=$r88, var3748=java.util.function.Function, var813=r102, var2779=com.alibaba.fastjson2.JSONException, var1146=$r90, var2399=$r91, var906=$r92, var3565=$r93, var1947=$r95, var3401=$r94, var847=$r96, var2069=$r97}
; {com.alibaba.fastjson2.reader.ObjectReaderCreator=var2492, r100=var2823, r13=var1483, r12=var407, r16=var317, null_type=var3489, i3=var1472, l0=var2540, r17=var65, java.util.Locale=var256, r18=var361, java.lang.Object=var500, r101=var1714, r1=var2104, r3=var1517, r11=var2093, java.lang.reflect.Method=var2782, r0=var3179, com.alibaba.fastjson2.reader.ObjectReader=var2447, r2=var3645, $z0=var637, $r87=var3099, com.alibaba.fastjson2.reader.ObjectReaderProvider=var1585, com.alibaba.fastjson2.JSONFactory=var765, $r89=var2335, $r88=var60, java.util.function.Function=var3748, r102=var813, com.alibaba.fastjson2.JSONException=var2779, $r90=var1146, $r91=var2399, $r92=var906, $r93=var3565, $r95=var1947, $r94=var3401, $r96=var847, $r97=var2069}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r100 := @this: com.alibaba.fastjson2.reader.ObjectReaderCreator;	r13 := @parameter0: java.lang.Class;	r12 := @parameter1: java.lang.reflect.Type;	r16 := @parameter2: java.lang.String;	i3 := @parameter3: int;	l0 := @parameter4: long;	r17 := @parameter5: java.lang.String;	r18 := @parameter6: java.util.Locale;	r101 := @parameter7: java.lang.Object;	r1 := @parameter8: java.lang.String;	r3 := @parameter9: java.lang.reflect.Type;	r11 := @parameter10: java.lang.Class;	r0 := @parameter11: java.lang.reflect.Method;	r2 := @parameter12: com.alibaba.fastjson2.reader.ObjectReader;	if r0 == null goto $z0 = r101 instanceof java.lang.String;	$z0 = r101 instanceof java.lang.String;	if $z0 == 0 goto (branch);	if r101 == null goto r103 = null;	$r87 = virtualinvoke r101.<java.lang.Object: java.lang.Class getClass()>();	if $r87 == r11 goto r103 = null;	$r89 = staticinvoke <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.reader.ObjectReaderProvider getDefaultObjectReaderProvider()>();	$r88 = virtualinvoke r101.<java.lang.Object: java.lang.Class getClass()>();	r102 = virtualinvoke $r89.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.function.Function getTypeConvert(java.lang.reflect.Type,java.lang.reflect.Type)>($r88, r3);	if r102 == null goto $r90 = new com.alibaba.fastjson2.JSONException;	$r90 = new com.alibaba.fastjson2.JSONException;	$r91 = new java.lang.StringBuilder;	specialinvoke $r91.<java.lang.StringBuilder: void <init>()>();	$r92 = virtualinvoke $r91.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal defaultValue : ");	$r93 = virtualinvoke $r92.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r101);	$r95 = virtualinvoke $r93.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", class ");	$r94 = virtualinvoke r11.<java.lang.Class: java.lang.String getName()>();	$r96 = virtualinvoke $r95.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r94);	$r97 = virtualinvoke $r96.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r90.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r97);	throw $r90
;block_num 6
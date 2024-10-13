(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var221 0)
(declare-sort var2460 0)
(declare-sort var2354 0)
(declare-sort var1856 0)
(declare-sort var1565 0)
(declare-sort var3163 0)
(declare-sort var464 0)
(declare-sort var1753 0)
(declare-sort var2008 0)
(declare-sort var1708 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var1856) ClassObject)
(declare-fun var1753_getDefaultObjectReaderProvider/-2075755087 () var464)
(declare-fun getTypeConvert/1735566455 (var464 ClassObject ClassObject) var2008)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun var1708-init () var1708)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1856) String)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1708 String) void)
(declare-const null-var221 var221)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2354 var2354)
(declare-const null-var1856 var1856)
(declare-const null-var1565 var1565)
(declare-const null-var3163 var3163)
(declare-const null-var2008 var2008)
(declare-const var3676 var221) ; Statement: r99 := @this: com.alibaba.fastjson2.reader.ObjectReaderCreator 
(assert (not (= var3676 null-var221)))
(declare-const var2575 ClassObject) ; Statement: r44 := @parameter0: java.lang.Class 
(assert (not (= var2575 null-ClassObject)))
(declare-const var833 ClassObject) ; Statement: r43 := @parameter1: java.lang.reflect.Type 
(assert (not (= var833 null-ClassObject)))
(declare-const var3593 String) ; Statement: r16 := @parameter2: java.lang.String 
(assert (not (= var3593 null-String)))
(declare-const var1693 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1693 null-Int)))
(declare-const var3615 Int) ; Statement: l2 := @parameter4: long 
(assert (not (= var3615 null-Int)))
(declare-const var3915 String) ; Statement: r17 := @parameter5: java.lang.String 
(assert (not (= var3915 null-String)))
(declare-const var2848 var2354) ; Statement: r18 := @parameter6: java.util.Locale 
(assert (not (= var2848 null-var2354)))
(declare-const var3371 var1856) ; Statement: r100 := @parameter7: java.lang.Object 
(assert (not (= var3371 null-var1856)))
(declare-const var1043 String) ; Statement: r0 := @parameter8: java.lang.String 
(assert (not (= var1043 null-String)))
(declare-const var3324 ClassObject) ; Statement: r12 := @parameter9: java.lang.reflect.Type 
(assert (not (= var3324 null-ClassObject)))
(declare-const var2371 ClassObject) ; Statement: r3 := @parameter10: java.lang.Class 
(assert (not (= var2371 null-ClassObject)))
(declare-const var2889 var1565) ; Statement: r1 := @parameter11: java.lang.reflect.Field 
(assert (not (= var2889 null-var1565)))
(declare-const var1940 var3163) ; Statement: r2 := @parameter12: com.alibaba.fastjson2.reader.ObjectReader 
(assert (not (= var1940 null-var3163)))
(define-const var2362 Bool false) ; Statement: $z0 = r100 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var2362 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r100 == null goto r103 = null 
(assert (not (= var3371 null-var1856))) ; Negate: Cond: r100 == null  
(assert true)
(define-const var201 ClassObject (getClass/1258963082 var3371)) ; Statement: $r88 = virtualinvoke r100.<java.lang.Object: java.lang.Class getClass()>() 
 ; Statement: if $r88 == r3 goto r103 = null 
(assert (not (= var201 var2371))) ; Negate: Cond: $r88 == r3  
(define-const var534 var464 var1753_getDefaultObjectReaderProvider/-2075755087) ; Statement: r101 = staticinvoke <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.reader.ObjectReaderProvider getDefaultObjectReaderProvider()>() 
(assert true)
(define-const var3997 ClassObject (getClass/1258963082 var3371)) ; Statement: $r89 = virtualinvoke r100.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1100 var2008 (getTypeConvert/1735566455 var534 (cast-from-ClassObject-to-ClassObject var3997) var3324)) ; Statement: r102 = virtualinvoke r101.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.function.Function getTypeConvert(java.lang.reflect.Type,java.lang.reflect.Type)>($r89, r12) 
 ; Statement: if r102 == null goto $r90 = new com.alibaba.fastjson2.JSONException 
(assert (= var1100 null-var2008)) ; Cond: r102 == null 
(define-const var3943 var1708 var1708-init) ; Statement: $r90 = new com.alibaba.fastjson2.JSONException 
(define-const var2636 String String-init) ; Statement: $r91 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2636)) ; Statement: specialinvoke $r91.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2636!1 String)
(assert (= var2636!1 ""))
(assert true)
(define-const var2970 String (append/672562846 var2636!1 "illegal defaultValue : ")) ; Statement: $r92 = virtualinvoke $r91.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal defaultValue : ") 
(declare-const var2636!2 String)
(assert (= var2636!2 (str.++ var2636!1 "illegal defaultValue : ")))
(assert true)
(define-const var3253 String (append/-1031950772 var2970 var3371)) ; Statement: $r93 = virtualinvoke $r92.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r100) 
(declare-const var2970!1 String)
(assert (str.prefixof var2970 var2970!1))
(assert true)
(define-const var2640 String (append/672562846 var3253 ", class ")) ; Statement: $r95 = virtualinvoke $r93.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", class ") 
(declare-const var3253!1 String)
(assert (= var3253!1 (str.++ var3253 ", class ")))
(assert true)
(define-const var2021 String (getName/-1958580599 var2371)) ; Statement: $r94 = virtualinvoke r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1311 String (append/672562846 var2640 var2021)) ; Statement: $r96 = virtualinvoke $r95.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r94) 
(declare-const var2640!1 String)
(assert (= var2640!1 (str.++ var2640 var2021)))
(assert true)
(define-const var1022 String (toString/-2075883882 var1311)) ; Statement: $r97 = virtualinvoke $r96.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3943 var1022)) ; Statement: specialinvoke $r90.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r97) 

(declare-const var3943!1 var1708)
(declare-const var1022!1 String)
 ; Statement: throw $r90 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), var1753_getDefaultObjectReaderProvider/-2075755087=([], com.alibaba.fastjson2.reader.ObjectReaderProvider), getTypeConvert/1735566455=([com.alibaba.fastjson2.reader.ObjectReaderProvider, java.lang.reflect.Type, java.lang.reflect.Type], java.util.function.Function), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), var1708-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var221=com.alibaba.fastjson2.reader.ObjectReaderCreator, var3676=r99, var2575=r44, var833=r43, var3593=r16, var2460=null_type, var1693=i1, var3615=l2, var3915=r17, var2354=java.util.Locale, var2848=r18, var1856=java.lang.Object, var3371=r100, var1043=r0, var3324=r12, var2371=r3, var1565=java.lang.reflect.Field, var2889=r1, var3163=com.alibaba.fastjson2.reader.ObjectReader, var1940=r2, var2362=$z0, var201=$r88, var464=com.alibaba.fastjson2.reader.ObjectReaderProvider, var1753=com.alibaba.fastjson2.JSONFactory, var534=r101, var3997=$r89, var2008=java.util.function.Function, var1100=r102, var1708=com.alibaba.fastjson2.JSONException, var3943=$r90, var2636=$r91, var2970=$r92, var3253=$r93, var2640=$r95, var2021=$r94, var1311=$r96, var1022=$r97}
; {com.alibaba.fastjson2.reader.ObjectReaderCreator=var221, r99=var3676, r44=var2575, r43=var833, r16=var3593, null_type=var2460, i1=var1693, l2=var3615, r17=var3915, java.util.Locale=var2354, r18=var2848, java.lang.Object=var1856, r100=var3371, r0=var1043, r12=var3324, r3=var2371, java.lang.reflect.Field=var1565, r1=var2889, com.alibaba.fastjson2.reader.ObjectReader=var3163, r2=var1940, $z0=var2362, $r88=var201, com.alibaba.fastjson2.reader.ObjectReaderProvider=var464, com.alibaba.fastjson2.JSONFactory=var1753, r101=var534, $r89=var3997, java.util.function.Function=var2008, r102=var1100, com.alibaba.fastjson2.JSONException=var1708, $r90=var3943, $r91=var2636, $r92=var2970, $r93=var3253, $r95=var2640, $r94=var2021, $r96=var1311, $r97=var1022}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r99 := @this: com.alibaba.fastjson2.reader.ObjectReaderCreator;	r44 := @parameter0: java.lang.Class;	r43 := @parameter1: java.lang.reflect.Type;	r16 := @parameter2: java.lang.String;	i1 := @parameter3: int;	l2 := @parameter4: long;	r17 := @parameter5: java.lang.String;	r18 := @parameter6: java.util.Locale;	r100 := @parameter7: java.lang.Object;	r0 := @parameter8: java.lang.String;	r12 := @parameter9: java.lang.reflect.Type;	r3 := @parameter10: java.lang.Class;	r1 := @parameter11: java.lang.reflect.Field;	r2 := @parameter12: com.alibaba.fastjson2.reader.ObjectReader;	$z0 = r100 instanceof java.lang.String;	if $z0 == 0 goto (branch);	if r100 == null goto r103 = null;	$r88 = virtualinvoke r100.<java.lang.Object: java.lang.Class getClass()>();	if $r88 == r3 goto r103 = null;	r101 = staticinvoke <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.reader.ObjectReaderProvider getDefaultObjectReaderProvider()>();	$r89 = virtualinvoke r100.<java.lang.Object: java.lang.Class getClass()>();	r102 = virtualinvoke r101.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.function.Function getTypeConvert(java.lang.reflect.Type,java.lang.reflect.Type)>($r89, r12);	if r102 == null goto $r90 = new com.alibaba.fastjson2.JSONException;	$r90 = new com.alibaba.fastjson2.JSONException;	$r91 = new java.lang.StringBuilder;	specialinvoke $r91.<java.lang.StringBuilder: void <init>()>();	$r92 = virtualinvoke $r91.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal defaultValue : ");	$r93 = virtualinvoke $r92.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r100);	$r95 = virtualinvoke $r93.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", class ");	$r94 = virtualinvoke r3.<java.lang.Class: java.lang.String getName()>();	$r96 = virtualinvoke $r95.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r94);	$r97 = virtualinvoke $r96.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r90.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r97);	throw $r90
;block_num 5
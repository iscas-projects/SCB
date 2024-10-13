(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var866 0)
(declare-sort var3949 0)
(declare-sort var3464 0)
(declare-sort var3695 0)
(declare-sort var1475 0)
(declare-sort var2710 0)
(declare-sort var3286 0)
(declare-sort var3525 0)
(declare-sort var1272 0)
(declare-sort var646 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var3695) ClassObject)
(declare-fun var3525_getDefaultObjectReaderProvider/-2075755087 () var3286)
(declare-fun getTypeConvert/1735566455 (var3286 ClassObject ClassObject) var1272)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun var646-init () var646)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3695) String)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var646 String) void)
(declare-const null-var866 var866)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3464 var3464)
(declare-const null-var3695 var3695)
(declare-const null-var1475 var1475)
(declare-const null-var2710 var2710)
(declare-const null-var1272 var1272)
(declare-const var3912 var866) ; Statement: r11 := @this: com.alibaba.fastjson2.reader.ObjectReaderCreator 
(assert (not (= var3912 null-var866)))
(declare-const var3968 ClassObject) ; Statement: r12 := @parameter0: java.lang.Class 
(assert (not (= var3968 null-ClassObject)))
(declare-const var195 ClassObject) ; Statement: r16 := @parameter1: java.lang.reflect.Type 
(assert (not (= var195 null-ClassObject)))
(declare-const var351 String) ; Statement: r17 := @parameter2: java.lang.String 
(assert (not (= var351 null-String)))
(declare-const var3779 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var3779 null-Int)))
(declare-const var2832 Int) ; Statement: l1 := @parameter4: long 
(assert (not (= var2832 null-Int)))
(declare-const var2129 String) ; Statement: r18 := @parameter5: java.lang.String 
(assert (not (= var2129 null-String)))
(declare-const var2074 var3464) ; Statement: r19 := @parameter6: java.util.Locale 
(assert (not (= var2074 null-var3464)))
(declare-const var608 var3695) ; Statement: r56 := @parameter7: java.lang.Object 
(assert (not (= var608 null-var3695)))
(declare-const var1834 String) ; Statement: r0 := @parameter8: java.lang.String 
(assert (not (= var1834 null-String)))
(declare-const var3967 ClassObject) ; Statement: r2 := @parameter9: java.lang.reflect.Type 
(assert (not (= var3967 null-ClassObject)))
(declare-const var2660 ClassObject) ; Statement: r13 := @parameter10: java.lang.Class 
(assert (not (= var2660 null-ClassObject)))
(declare-const var2178 var1475) ; Statement: r14 := @parameter11: java.lang.reflect.Method 
(assert (not (= var2178 null-var1475)))
(declare-const var764 var2710) ; Statement: r1 := @parameter12: com.alibaba.fastjson2.reader.ObjectReader 
(assert (not (= var764 null-var2710)))
 ; Statement: if r56 == null goto r58 = null 
(assert (not (= var608 null-var3695))) ; Negate: Cond: r56 == null  
(assert true)
(define-const var479 ClassObject (getClass/1258963082 var608)) ; Statement: $r45 = virtualinvoke r56.<java.lang.Object: java.lang.Class getClass()>() 
 ; Statement: if $r45 == r13 goto r58 = null 
(assert (not (= var479 var2660))) ; Negate: Cond: $r45 == r13  
(define-const var208 var3286 var3525_getDefaultObjectReaderProvider/-2075755087) ; Statement: $r47 = staticinvoke <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.reader.ObjectReaderProvider getDefaultObjectReaderProvider()>() 
(assert true)
(define-const var2289 ClassObject (getClass/1258963082 var608)) ; Statement: $r46 = virtualinvoke r56.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3658 var1272 (getTypeConvert/1735566455 var208 (cast-from-ClassObject-to-ClassObject var2289) var3967)) ; Statement: r57 = virtualinvoke $r47.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.function.Function getTypeConvert(java.lang.reflect.Type,java.lang.reflect.Type)>($r46, r2) 
 ; Statement: if r57 == null goto $r48 = new com.alibaba.fastjson2.JSONException 
(assert (= var3658 null-var1272)) ; Cond: r57 == null 
(define-const var2043 var646 var646-init) ; Statement: $r48 = new com.alibaba.fastjson2.JSONException 
(define-const var1118 String String-init) ; Statement: $r49 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1118)) ; Statement: specialinvoke $r49.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1118!1 String)
(assert (= var1118!1 ""))
(assert true)
(define-const var939 String (append/672562846 var1118!1 "illegal defaultValue : ")) ; Statement: $r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal defaultValue : ") 
(declare-const var1118!2 String)
(assert (= var1118!2 (str.++ var1118!1 "illegal defaultValue : ")))
(assert true)
(define-const var642 String (append/-1031950772 var939 var608)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r56) 
(declare-const var939!1 String)
(assert (str.prefixof var939 var939!1))
(assert true)
(define-const var1841 String (append/672562846 var642 ", class ")) ; Statement: $r53 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", class ") 
(declare-const var642!1 String)
(assert (= var642!1 (str.++ var642 ", class ")))
(assert true)
(define-const var3268 String (getName/-1958580599 var2660)) ; Statement: $r52 = virtualinvoke r13.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1856 String (append/672562846 var1841 var3268)) ; Statement: $r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r52) 
(declare-const var1841!1 String)
(assert (= var1841!1 (str.++ var1841 var3268)))
(assert true)
(define-const var1797 String (toString/-2075883882 var1856)) ; Statement: $r55 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2043 var1797)) ; Statement: specialinvoke $r48.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r55) 

(declare-const var2043!1 var646)
(declare-const var1797!1 String)
 ; Statement: throw $r48 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), var3525_getDefaultObjectReaderProvider/-2075755087=([], com.alibaba.fastjson2.reader.ObjectReaderProvider), getTypeConvert/1735566455=([com.alibaba.fastjson2.reader.ObjectReaderProvider, java.lang.reflect.Type, java.lang.reflect.Type], java.util.function.Function), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), var646-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var866=com.alibaba.fastjson2.reader.ObjectReaderCreator, var3912=r11, var3968=r12, var195=r16, var351=r17, var3949=null_type, var3779=i0, var2832=l1, var2129=r18, var3464=java.util.Locale, var2074=r19, var3695=java.lang.Object, var608=r56, var1834=r0, var3967=r2, var2660=r13, var1475=java.lang.reflect.Method, var2178=r14, var2710=com.alibaba.fastjson2.reader.ObjectReader, var764=r1, var479=$r45, var3286=com.alibaba.fastjson2.reader.ObjectReaderProvider, var3525=com.alibaba.fastjson2.JSONFactory, var208=$r47, var2289=$r46, var1272=java.util.function.Function, var3658=r57, var646=com.alibaba.fastjson2.JSONException, var2043=$r48, var1118=$r49, var939=$r50, var642=$r51, var1841=$r53, var3268=$r52, var1856=$r54, var1797=$r55}
; {com.alibaba.fastjson2.reader.ObjectReaderCreator=var866, r11=var3912, r12=var3968, r16=var195, r17=var351, null_type=var3949, i0=var3779, l1=var2832, r18=var2129, java.util.Locale=var3464, r19=var2074, java.lang.Object=var3695, r56=var608, r0=var1834, r2=var3967, r13=var2660, java.lang.reflect.Method=var1475, r14=var2178, com.alibaba.fastjson2.reader.ObjectReader=var2710, r1=var764, $r45=var479, com.alibaba.fastjson2.reader.ObjectReaderProvider=var3286, com.alibaba.fastjson2.JSONFactory=var3525, $r47=var208, $r46=var2289, java.util.function.Function=var1272, r57=var3658, com.alibaba.fastjson2.JSONException=var646, $r48=var2043, $r49=var1118, $r50=var939, $r51=var642, $r53=var1841, $r52=var3268, $r54=var1856, $r55=var1797}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: com.alibaba.fastjson2.reader.ObjectReaderCreator;	r12 := @parameter0: java.lang.Class;	r16 := @parameter1: java.lang.reflect.Type;	r17 := @parameter2: java.lang.String;	i0 := @parameter3: int;	l1 := @parameter4: long;	r18 := @parameter5: java.lang.String;	r19 := @parameter6: java.util.Locale;	r56 := @parameter7: java.lang.Object;	r0 := @parameter8: java.lang.String;	r2 := @parameter9: java.lang.reflect.Type;	r13 := @parameter10: java.lang.Class;	r14 := @parameter11: java.lang.reflect.Method;	r1 := @parameter12: com.alibaba.fastjson2.reader.ObjectReader;	if r56 == null goto r58 = null;	$r45 = virtualinvoke r56.<java.lang.Object: java.lang.Class getClass()>();	if $r45 == r13 goto r58 = null;	$r47 = staticinvoke <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.reader.ObjectReaderProvider getDefaultObjectReaderProvider()>();	$r46 = virtualinvoke r56.<java.lang.Object: java.lang.Class getClass()>();	r57 = virtualinvoke $r47.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.function.Function getTypeConvert(java.lang.reflect.Type,java.lang.reflect.Type)>($r46, r2);	if r57 == null goto $r48 = new com.alibaba.fastjson2.JSONException;	$r48 = new com.alibaba.fastjson2.JSONException;	$r49 = new java.lang.StringBuilder;	specialinvoke $r49.<java.lang.StringBuilder: void <init>()>();	$r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal defaultValue : ");	$r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r56);	$r53 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", class ");	$r52 = virtualinvoke r13.<java.lang.Class: java.lang.String getName()>();	$r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r52);	$r55 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r48.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r55);	throw $r48
;block_num 4
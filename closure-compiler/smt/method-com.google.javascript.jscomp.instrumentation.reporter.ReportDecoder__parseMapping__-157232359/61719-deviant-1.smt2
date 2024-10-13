(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1869 0)
(declare-sort var2600 0)
(declare-sort var1047 0)
(declare-sort var413 0)
(declare-sort var3520 0)
(declare-sort var193 0)
(declare-sort var1700 0)
(declare-sort var2801 0)
(declare-sort var1392 0)
(declare-sort var1153 0)
(declare-sort var3823 0)
(declare-sort var2789 0)
(declare-sort var2809 0)
(declare-sort var3369 0)
(declare-sort var2008 0)
(declare-sort var1834 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2600-init () var2600)
(declare-fun <init>/-1461814690 (var2600) void)
(declare-fun var1047_on/1427090730 (Int) var1047)
(declare-fun omitEmptyStrings/1427909429 (var1047) var1047)
(declare-fun splitToList/739613109 (var1047 String) var413)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var413_size/-959786421 (var413) Int)
(declare-fun var3520_checkState/1095365836 (Bool String var193) void)
(declare-fun cast-from-var413-to-var193 (var413) var193)
(declare-fun var413_get/-1216255739 (var413 Int) var193)
(declare-fun cast-from-var193-to-String (var193) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var3520_checkState/1431124798 (Bool) void)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var1700-init () var1700)
(declare-fun <init>/1196464854 (var1700) void)
(declare-fun getType/-733762398 (var2801) ClassObject)
(declare-fun cast-from-var1700-to-var2801 (var1700) var2801)
(declare-fun var1392-init () var1392)
(declare-fun <init>/-1728377939 (var1392) void)
(declare-fun disableHtmlEscaping/-1001101450 (var1392) var1392)
(declare-fun create/-1678241402 (var1392) var1153)
(declare-fun fromJson/-750099079 (var1153 String ClassObject) var193)
(declare-fun cast-from-var193-to-var413 (var193) var413)
(declare-fun var2789_stream/-1288525013 (var2789) var3823)
(declare-fun cast-from-var413-to-var2789 (var413) var2789)
(declare-fun var3369_bootstrap$/-188630264 () var2809)
(declare-fun var3823_map/130902797 (var3823 var2809) var3823)
(declare-fun var1834_toList/714215649 () var2008)
(declare-fun var3823_collect/-2050842585 (var3823 var2008) var193)
(declare-const null-String String)
(declare-const var472 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var472 null-String)))
(define-const var746 var2600 var2600-init) ; Statement: $r0 = new java.util.LinkedHashMap 
(assert true)
;(assert (<init>/-1461814690 var746)) ; Statement: specialinvoke $r0.<java.util.LinkedHashMap: void <init>()>() 

(declare-const var746!1 var2600)
(define-const var2870 var1047 (var1047_on/1427090730 10)) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter on(char)>(10) 
(assert true)
(define-const var1385 var1047 (omitEmptyStrings/1427909429 var2870)) ; Statement: $r3 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter omitEmptyStrings()>() 
(assert true)
(define-const var233 var413 (splitToList/739613109 var1385 (cast-from-String-to-String var472))) ; Statement: r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.util.List splitToList(java.lang.CharSequence)>(r2) 
(define-const var2156 Int (var413_size/-959786421 var233)) ; Statement: $i0 = interfaceinvoke r4.<java.util.List: int size()>() 
 ; Statement: if $i0 < 3 goto $z3 = 0 
(assert (< var2156 3)) ; Cond: $i0 < 3 
(define-const var3149 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
;(assert (var3520_checkState/1095365836 var3149 "Malformed report %s" (cast-from-var413-to-var193 var233))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z3, "Malformed report %s", r4) 

(declare-const var3149!1 Bool)
(declare-const var3486 String)
(declare-const var233!1 var413)
(define-const var3770 var193 (var413_get/-1216255739 var233!1 0)) ; Statement: $r5 = interfaceinvoke r4.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var2644 String (cast-from-var193-to-String var3770)) ; Statement: $r6 = (java.lang.String) $r5 
(assert true)
(define-const var1154 String (trim/-847153721 var2644)) ; Statement: $r40 = virtualinvoke $r6.<java.lang.String: java.lang.String trim()>() 
(define-const var3219 var193 (var413_get/-1216255739 var233!1 1)) ; Statement: $r7 = interfaceinvoke r4.<java.util.List: java.lang.Object get(int)>(1) 
(define-const var1231 String (cast-from-var193-to-String var3219)) ; Statement: $r8 = (java.lang.String) $r7 
(assert true)
(define-const var323 String (trim/-847153721 var1231)) ; Statement: $r41 = virtualinvoke $r8.<java.lang.String: java.lang.String trim()>() 
(define-const var1945 var193 (var413_get/-1216255739 var233!1 2)) ; Statement: $r9 = interfaceinvoke r4.<java.util.List: java.lang.Object get(int)>(2) 
(define-const var1035 String (cast-from-var193-to-String var1945)) ; Statement: $r10 = (java.lang.String) $r9 
(assert true)
(define-const var1639 String (trim/-847153721 var1035)) ; Statement: $r42 = virtualinvoke $r10.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3182 Bool (startsWith/-1785782452 var1154 "FileNames:")) ; Statement: $z0 = virtualinvoke $r40.<java.lang.String: boolean startsWith(java.lang.String)>("FileNames:") 
;(assert (var3520_checkState/1431124798 var3182)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0) 

(declare-const var3182!1 Bool)
(assert true)
(define-const var454 Bool (startsWith/-1785782452 var323 "FunctionNames:")) ; Statement: $z1 = virtualinvoke $r41.<java.lang.String: boolean startsWith(java.lang.String)>("FunctionNames:") 
;(assert (var3520_checkState/1431124798 var454)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var454!1 Bool)
(assert true)
(define-const var3276 Bool (startsWith/-1785782452 var1639 "Types:")) ; Statement: $z2 = virtualinvoke $r42.<java.lang.String: boolean startsWith(java.lang.String)>("Types:") 
;(assert (var3520_checkState/1431124798 var3276)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2) 

(declare-const var3276!1 Bool)
(assert true)
(define-const var3330 Int (indexOf/-1209756239 var1154 ":")) ; Statement: $i1 = virtualinvoke $r40.<java.lang.String: int indexOf(java.lang.String)>(":") 
(define-const var3024 Int (+ var3330 1)) ; Statement: $i2 = $i1 + 1 
(assert (and true (and (>= var3024 0) (>= (str.len var1154) var3024))))
(define-const var598 String (substring/850833817 var1154 var3024)) ; Statement: $r43 = virtualinvoke $r40.<java.lang.String: java.lang.String substring(int)>($i2) 
(assert true)
(define-const var1613 Int (indexOf/-1209756239 var323 ":")) ; Statement: $i3 = virtualinvoke $r41.<java.lang.String: int indexOf(java.lang.String)>(":") 
(define-const var3802 Int (+ var1613 1)) ; Statement: $i4 = $i3 + 1 
(assert (not (and true (and (>= var3802 0) (>= (str.len var323) var3802)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var2600-init=([], java.util.LinkedHashMap), <init>/-1461814690=([java.util.LinkedHashMap], void), var1047_on/1427090730=([char], com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter), omitEmptyStrings/1427909429=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter], com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter), splitToList/739613109=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, java.lang.CharSequence], java.util.List), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var413_size/-959786421=([java.util.List], int), var3520_checkState/1095365836=([boolean, java.lang.String, java.lang.Object], void), cast-from-var413-to-var193=([java.util.List], java.lang.Object), var413_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var193-to-String=([java.lang.Object], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var3520_checkState/1431124798=([boolean], void), indexOf/-1209756239=([java.lang.String, java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), var1700-init=([], com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$1), <init>/1196464854=([com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$1], void), getType/-733762398=([com.google.javascript.jscomp.jarjar.com.google.gson.reflect.TypeToken], java.lang.reflect.Type), cast-from-var1700-to-var2801=([com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$1], com.google.javascript.jscomp.jarjar.com.google.gson.reflect.TypeToken), var1392-init=([], com.google.javascript.jscomp.jarjar.com.google.gson.GsonBuilder), <init>/-1728377939=([com.google.javascript.jscomp.jarjar.com.google.gson.GsonBuilder], void), disableHtmlEscaping/-1001101450=([com.google.javascript.jscomp.jarjar.com.google.gson.GsonBuilder], com.google.javascript.jscomp.jarjar.com.google.gson.GsonBuilder), create/-1678241402=([com.google.javascript.jscomp.jarjar.com.google.gson.GsonBuilder], com.google.javascript.jscomp.jarjar.com.google.gson.Gson), fromJson/-750099079=([com.google.javascript.jscomp.jarjar.com.google.gson.Gson, java.lang.String, java.lang.reflect.Type], java.lang.Object), cast-from-var193-to-var413=([java.lang.Object], java.util.List), var2789_stream/-1288525013=([java.util.Collection], java.util.stream.Stream), cast-from-var413-to-var2789=([java.util.List], java.util.Collection), var3369_bootstrap$/-188630264=([], java.util.function.Function), var3823_map/130902797=([java.util.stream.Stream, java.util.function.Function], java.util.stream.Stream), var1834_toList/714215649=([], java.util.stream.Collector), var3823_collect/-2050842585=([java.util.stream.Stream, java.util.stream.Collector], java.lang.Object)}
; {var472=r2, var1869=null_type, var2600=java.util.LinkedHashMap, var746=$r0, var1047=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, var2870=$r1, var1385=$r3, var413=java.util.List, var233=r4, var2156=$i0, var3149=$z3, var3520=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var193=java.lang.Object, var3486="Malformed report %s", var3770=$r5, var2644=$r6, var1154=$r40, var3219=$r7, var1231=$r8, var323=$r41, var1945=$r9, var1035=$r10, var1639=$r42, var3182=$z0, var454=$z1, var3276=$z2, var3330=$i1, var3024=$i2, var598=$r43, var1613=$i3, var3802=$i4, var3902=$r44, var2206=$i5, var3168=$i6, var3548=$r45, var1700=com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$1, var99=$r11, var2801=com.google.javascript.jscomp.jarjar.com.google.gson.reflect.TypeToken, var348=$r46, var1392=com.google.javascript.jscomp.jarjar.com.google.gson.GsonBuilder, var710=$r12, var3949=$r13, var1153=com.google.javascript.jscomp.jarjar.com.google.gson.Gson, var2872=$r47, var2741=$r14, var3228=$r48, var2452=$r15, var3164=$r49, var2631=$r16, var3958=$r50, var3823=java.util.stream.Stream, var2789=java.util.Collection, var17=$r18, var2809=java.util.function.Function, var3369=com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$valueOf__1011, var3229=$r17, var940=$r20, var2008=java.util.stream.Collector, var1834=java.util.stream.Collectors, var645=$r19, var3142=$r21, var795=$r51, var2391=i15, var2427=$i16}
; {r2=var472, null_type=var1869, java.util.LinkedHashMap=var2600, $r0=var746, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter=var1047, $r1=var2870, $r3=var1385, java.util.List=var413, r4=var233, $i0=var2156, $z3=var3149, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3520, java.lang.Object=var193, "Malformed report %s"=var3486, $r5=var3770, $r6=var2644, $r40=var1154, $r7=var3219, $r8=var1231, $r41=var323, $r9=var1945, $r10=var1035, $r42=var1639, $z0=var3182, $z1=var454, $z2=var3276, $i1=var3330, $i2=var3024, $r43=var598, $i3=var1613, $i4=var3802, $r44=var3902, $i5=var2206, $i6=var3168, $r45=var3548, com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$1=var1700, $r11=var99, com.google.javascript.jscomp.jarjar.com.google.gson.reflect.TypeToken=var2801, $r46=var348, com.google.javascript.jscomp.jarjar.com.google.gson.GsonBuilder=var1392, $r12=var710, $r13=var3949, com.google.javascript.jscomp.jarjar.com.google.gson.Gson=var1153, $r47=var2872, $r14=var2741, $r48=var3228, $r15=var2452, $r49=var3164, $r16=var2631, $r50=var3958, java.util.stream.Stream=var3823, java.util.Collection=var2789, $r18=var17, java.util.function.Function=var2809, com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$valueOf__1011=var3369, $r17=var3229, $r20=var940, java.util.stream.Collector=var2008, java.util.stream.Collectors=var1834, $r19=var645, $r21=var3142, $r51=var795, i15=var2391, $i16=var2427}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String trim()>": 3,"<java.lang.String: boolean startsWith(java.lang.String)>": 3,"<java.lang.String: int indexOf(java.lang.String)>": 3,"<java.lang.String: java.lang.String substring(int)>": 3}
;stmts r2 := @parameter0: java.lang.String;	$r0 = new java.util.LinkedHashMap;	specialinvoke $r0.<java.util.LinkedHashMap: void <init>()>();	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter on(char)>(10);	$r3 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter omitEmptyStrings()>();	r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.util.List splitToList(java.lang.CharSequence)>(r2);	$i0 = interfaceinvoke r4.<java.util.List: int size()>();	if $i0 < 3 goto $z3 = 0;	$z3 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z3, "Malformed report %s", r4);	$r5 = interfaceinvoke r4.<java.util.List: java.lang.Object get(int)>(0);	$r6 = (java.lang.String) $r5;	$r40 = virtualinvoke $r6.<java.lang.String: java.lang.String trim()>();	$r7 = interfaceinvoke r4.<java.util.List: java.lang.Object get(int)>(1);	$r8 = (java.lang.String) $r7;	$r41 = virtualinvoke $r8.<java.lang.String: java.lang.String trim()>();	$r9 = interfaceinvoke r4.<java.util.List: java.lang.Object get(int)>(2);	$r10 = (java.lang.String) $r9;	$r42 = virtualinvoke $r10.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke $r40.<java.lang.String: boolean startsWith(java.lang.String)>("FileNames:");	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0);	$z1 = virtualinvoke $r41.<java.lang.String: boolean startsWith(java.lang.String)>("FunctionNames:");	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	$z2 = virtualinvoke $r42.<java.lang.String: boolean startsWith(java.lang.String)>("Types:");	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2);	$i1 = virtualinvoke $r40.<java.lang.String: int indexOf(java.lang.String)>(":");	$i2 = $i1 + 1;	$r43 = virtualinvoke $r40.<java.lang.String: java.lang.String substring(int)>($i2);	$i3 = virtualinvoke $r41.<java.lang.String: int indexOf(java.lang.String)>(":");	$i4 = $i3 + 1;	$r44 = virtualinvoke $r41.<java.lang.String: java.lang.String substring(int)>($i4);	$i5 = virtualinvoke $r42.<java.lang.String: int indexOf(java.lang.String)>(":");	$i6 = $i5 + 1;	$r45 = virtualinvoke $r42.<java.lang.String: java.lang.String substring(int)>($i6);	$r11 = new com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$1;	specialinvoke $r11.<com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$1: void <init>()>();	$r46 = virtualinvoke $r11.<com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$1: java.lang.reflect.Type getType()>();	$r12 = new com.google.javascript.jscomp.jarjar.com.google.gson.GsonBuilder;	specialinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.gson.GsonBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.gson.GsonBuilder: com.google.javascript.jscomp.jarjar.com.google.gson.GsonBuilder disableHtmlEscaping()>();	$r47 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.gson.GsonBuilder: com.google.javascript.jscomp.jarjar.com.google.gson.Gson create()>();	$r14 = virtualinvoke $r47.<com.google.javascript.jscomp.jarjar.com.google.gson.Gson: java.lang.Object fromJson(java.lang.String,java.lang.reflect.Type)>($r43, $r46);	$r48 = (java.util.List) $r14;	$r15 = virtualinvoke $r47.<com.google.javascript.jscomp.jarjar.com.google.gson.Gson: java.lang.Object fromJson(java.lang.String,java.lang.reflect.Type)>($r44, $r46);	$r49 = (java.util.List) $r15;	$r16 = virtualinvoke $r47.<com.google.javascript.jscomp.jarjar.com.google.gson.Gson: java.lang.Object fromJson(java.lang.String,java.lang.reflect.Type)>($r45, $r46);	$r50 = (java.util.List) $r16;	$r18 = interfaceinvoke $r50.<java.util.List: java.util.stream.Stream stream()>();	$r17 = staticinvoke <com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$valueOf__1011: java.util.function.Function bootstrap$()>();	$r20 = interfaceinvoke $r18.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r17);	$r19 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector toList()>();	$r21 = interfaceinvoke $r20.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r19);	$r51 = (java.util.List) $r21;	i15 = 3;	$i16 = interfaceinvoke r4.<java.util.List: int size()>();	if i15 >= $i16 goto return $r0;	return $r0
;block_num 5
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2923 0)
(declare-sort var682 0)
(declare-sort var2924 0)
(declare-sort var47 0)
(declare-sort var3321 0)
(declare-sort var3793 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun prepMappings/-717784276 (var2923) Int)
(declare-fun var682_append/1177541664 (var682 String) var682)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2923_appendFirstField/-1361673207 (var682 String String) void)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun var2923_appendField/1424361641 (var682 String String) void)
(declare-fun sourceRootPath/-1058964508 (var2923) String)
(declare-fun var2923_appendFieldStart/-943047082 (var682 String) void)
(declare-fun var47-init () var47)
(declare-fun <init>/-936884023 (var47 var2923 var682 Int) void)
(declare-fun appendLineMappings/3853013 (var47) void)
(declare-fun var2923_appendFieldEnd/-189209524 (var682) void)
(declare-fun addSourceNameMap/524030514 (var2923 var682) void)
(declare-fun addSourcesContentMap/-1918988979 (var2923 var682) void)
(declare-fun addSymbolNameMap/1373251311 (var2923 var682) void)
(declare-fun extensions/-1058964508 (var2923) var3321)
(declare-fun keySet/-2041715811 (var3321) var3793)
(declare-fun var3793_iterator/1911472585 (var3793) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var2923 var2923)
(declare-const null-var682 var682)
(declare-const null-String String)
(declare-const var742 var2923) ; Statement: r0 := @this: com.google.debugging.sourcemap.SourceMapGeneratorV3 
(assert (not (= var742 null-var2923)))
(declare-const var2169 var682) ; Statement: r1 := @parameter0: java.lang.Appendable 
(assert (not (= var2169 null-var682)))
(declare-const var2534 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2534 null-String)))
(assert true)
(define-const var3448 Int (prepMappings/-717784276 var742)) ; Statement: $i0 = virtualinvoke r0.<com.google.debugging.sourcemap.SourceMapGeneratorV3: int prepMappings()>() 
(define-const var2730 Int (+ var3448 1)) ; Statement: i1 = $i0 + 1 
;(assert (var682_append/1177541664 var2169 (cast-from-String-to-String "{\n"))) ; Statement: interfaceinvoke r1.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>("{\n") 

(declare-const var2169!1 var682)
(declare-const var3948 String)
;(assert (var2923_appendFirstField/-1361673207 var2169!1 "version" (cast-from-String-to-String "3"))) ; Statement: staticinvoke <com.google.debugging.sourcemap.SourceMapGeneratorV3: void appendFirstField(java.lang.Appendable,java.lang.String,java.lang.CharSequence)>(r1, "version", "3") 

(declare-const var2169!2 var682)
(declare-const var2461 String)
(declare-const var3243 String)
 ; Statement: if r2 == null goto $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i1) 
(assert (= var2534 null-String)) ; Cond: r2 == null 
(define-const var3019 String (String_valueOf/1240665136 var2730)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i1) 
;(assert (var2923_appendField/1424361641 var2169!2 "lineCount" (cast-from-String-to-String var3019))) ; Statement: staticinvoke <com.google.debugging.sourcemap.SourceMapGeneratorV3: void appendField(java.lang.Appendable,java.lang.String,java.lang.CharSequence)>(r1, "lineCount", $r3) 

(declare-const var2169!3 var682)
(declare-const var2522 String)
(declare-const var3019!1 String)
(define-const var3057 String (sourceRootPath/-1058964508 var742)) ; Statement: $r4 = r0.<com.google.debugging.sourcemap.SourceMapGeneratorV3: java.lang.String sourceRootPath> 
 ; Statement: if $r4 == null goto staticinvoke <com.google.debugging.sourcemap.SourceMapGeneratorV3: void appendFieldStart(java.lang.Appendable,java.lang.String)>(r1, "mappings") 
(assert (= var3057 null-String)) ; Cond: $r4 == null 
;(assert (var2923_appendFieldStart/-943047082 var2169!3 "mappings")) ; Statement: staticinvoke <com.google.debugging.sourcemap.SourceMapGeneratorV3: void appendFieldStart(java.lang.Appendable,java.lang.String)>(r1, "mappings") 

(declare-const var2169!4 var682)
(declare-const var2293 String)
(define-const var963 var47 var47-init) ; Statement: $r14 = new com.google.debugging.sourcemap.SourceMapGeneratorV3$LineMapper 
(assert true)
;(assert (<init>/-936884023 var963 var742 var2169!4 var2730)) ; Statement: specialinvoke $r14.<com.google.debugging.sourcemap.SourceMapGeneratorV3$LineMapper: void <init>(com.google.debugging.sourcemap.SourceMapGeneratorV3,java.lang.Appendable,int)>(r0, r1, i1) 

(declare-const var963!1 var47)
(declare-const var742!1 var2923)
(declare-const var2169!5 var682)
(declare-const var2730!1 Int)
(assert true)
;(assert (appendLineMappings/3853013 var963!1)) ; Statement: virtualinvoke $r14.<com.google.debugging.sourcemap.SourceMapGeneratorV3$LineMapper: void appendLineMappings()>() 

(declare-const var963!2 var47)
;(assert (var2923_appendFieldEnd/-189209524 var2169!5)) ; Statement: staticinvoke <com.google.debugging.sourcemap.SourceMapGeneratorV3: void appendFieldEnd(java.lang.Appendable)>(r1) 

(declare-const var2169!6 var682)
;(assert (var2923_appendFieldStart/-943047082 var2169!6 "sources")) ; Statement: staticinvoke <com.google.debugging.sourcemap.SourceMapGeneratorV3: void appendFieldStart(java.lang.Appendable,java.lang.String)>(r1, "sources") 

(declare-const var2169!7 var682)
(declare-const var3764 String)
;(assert (var682_append/1177541664 var2169!7 (cast-from-String-to-String "["))) ; Statement: interfaceinvoke r1.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>("[") 

(declare-const var2169!8 var682)
(declare-const var2321 String)
(assert true)
;(assert (addSourceNameMap/524030514 var742!1 var2169!8)) ; Statement: virtualinvoke r0.<com.google.debugging.sourcemap.SourceMapGeneratorV3: void addSourceNameMap(java.lang.Appendable)>(r1) 

(declare-const var742!2 var2923)
(declare-const var2169!9 var682)
;(assert (var682_append/1177541664 var2169!9 (cast-from-String-to-String "]"))) ; Statement: interfaceinvoke r1.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>("]") 

(declare-const var2169!10 var682)
(declare-const var866 String)
;(assert (var2923_appendFieldEnd/-189209524 var2169!10)) ; Statement: staticinvoke <com.google.debugging.sourcemap.SourceMapGeneratorV3: void appendFieldEnd(java.lang.Appendable)>(r1) 

(declare-const var2169!11 var682)
(assert true)
;(assert (addSourcesContentMap/-1918988979 var742!2 var2169!11)) ; Statement: virtualinvoke r0.<com.google.debugging.sourcemap.SourceMapGeneratorV3: void addSourcesContentMap(java.lang.Appendable)>(r1) 

(declare-const var742!3 var2923)
(declare-const var2169!12 var682)
;(assert (var2923_appendFieldStart/-943047082 var2169!12 "names")) ; Statement: staticinvoke <com.google.debugging.sourcemap.SourceMapGeneratorV3: void appendFieldStart(java.lang.Appendable,java.lang.String)>(r1, "names") 

(declare-const var2169!13 var682)
(declare-const var596 String)
;(assert (var682_append/1177541664 var2169!13 (cast-from-String-to-String "["))) ; Statement: interfaceinvoke r1.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>("[") 

(declare-const var2169!14 var682)
(declare-const var2321!1 String)
(assert true)
;(assert (addSymbolNameMap/1373251311 var742!3 var2169!14)) ; Statement: virtualinvoke r0.<com.google.debugging.sourcemap.SourceMapGeneratorV3: void addSymbolNameMap(java.lang.Appendable)>(r1) 

(declare-const var742!4 var2923)
(declare-const var2169!15 var682)
;(assert (var682_append/1177541664 var2169!15 (cast-from-String-to-String "]"))) ; Statement: interfaceinvoke r1.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>("]") 

(declare-const var2169!16 var682)
(declare-const var866!1 String)
;(assert (var2923_appendFieldEnd/-189209524 var2169!16)) ; Statement: staticinvoke <com.google.debugging.sourcemap.SourceMapGeneratorV3: void appendFieldEnd(java.lang.Appendable)>(r1) 

(declare-const var2169!17 var682)
(define-const var1494 var3321 (extensions/-1058964508 var742!4)) ; Statement: $r15 = r0.<com.google.debugging.sourcemap.SourceMapGeneratorV3: java.util.LinkedHashMap extensions> 
(assert true)
(define-const var1896 var3793 (keySet/-2041715811 var1494)) ; Statement: $r16 = virtualinvoke $r15.<java.util.LinkedHashMap: java.util.Set keySet()>() 
(define-const var477 Iterator (var3793_iterator/1911472585 var1896)) ; Statement: $r17 = interfaceinvoke $r16.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3864 Bool (Iterator_hasNext/-1669924200 var477)) ; Statement: $z2 = interfaceinvoke $r17.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto interfaceinvoke r1.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>("\n}\n") 
(assert (= (ite var3864 1 0) 0)) ; Cond: $z2 == 0 
;(assert (var682_append/1177541664 var2169!17 (cast-from-String-to-String "\n}\n"))) ; Statement: interfaceinvoke r1.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>("\n}\n") 

(declare-const var2169!18 var682)
(declare-const var3979 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {prepMappings/-717784276=([com.google.debugging.sourcemap.SourceMapGeneratorV3], int), var682_append/1177541664=([java.lang.Appendable, java.lang.CharSequence], java.lang.Appendable), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2923_appendFirstField/-1361673207=([java.lang.Appendable, java.lang.String, java.lang.CharSequence], void), String_valueOf/1240665136=([int], java.lang.String), var2923_appendField/1424361641=([java.lang.Appendable, java.lang.String, java.lang.CharSequence], void), sourceRootPath/-1058964508=([com.google.debugging.sourcemap.SourceMapGeneratorV3], java.lang.String), var2923_appendFieldStart/-943047082=([java.lang.Appendable, java.lang.String], void), var47-init=([], com.google.debugging.sourcemap.SourceMapGeneratorV3$LineMapper), <init>/-936884023=([com.google.debugging.sourcemap.SourceMapGeneratorV3$LineMapper, com.google.debugging.sourcemap.SourceMapGeneratorV3, java.lang.Appendable, int], void), appendLineMappings/3853013=([com.google.debugging.sourcemap.SourceMapGeneratorV3$LineMapper], void), var2923_appendFieldEnd/-189209524=([java.lang.Appendable], void), addSourceNameMap/524030514=([com.google.debugging.sourcemap.SourceMapGeneratorV3, java.lang.Appendable], void), addSourcesContentMap/-1918988979=([com.google.debugging.sourcemap.SourceMapGeneratorV3, java.lang.Appendable], void), addSymbolNameMap/1373251311=([com.google.debugging.sourcemap.SourceMapGeneratorV3, java.lang.Appendable], void), extensions/-1058964508=([com.google.debugging.sourcemap.SourceMapGeneratorV3], java.util.LinkedHashMap), keySet/-2041715811=([java.util.LinkedHashMap], java.util.Set), var3793_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var2923=com.google.debugging.sourcemap.SourceMapGeneratorV3, var742=r0, var682=java.lang.Appendable, var2169=r1, var2534=r2, var2924=null_type, var3448=$i0, var2730=i1, var3948="{\n", var2461="version", var3243="3", var3019=$r3, var2522="lineCount", var3057=$r4, var2293="mappings", var47=com.google.debugging.sourcemap.SourceMapGeneratorV3$LineMapper, var963=$r14, var3764="sources", var2321="[", var866="]", var596="names", var3321=java.util.LinkedHashMap, var1494=$r15, var3793=java.util.Set, var1896=$r16, var477=$r17, var3864=$z2, var3979="\n}\n"}
; {com.google.debugging.sourcemap.SourceMapGeneratorV3=var2923, r0=var742, java.lang.Appendable=var682, r1=var2169, r2=var2534, null_type=var2924, $i0=var3448, i1=var2730, "{\n"=var3948, "version"=var2461, "3"=var3243, $r3=var3019, "lineCount"=var2522, $r4=var3057, "mappings"=var2293, com.google.debugging.sourcemap.SourceMapGeneratorV3$LineMapper=var47, $r14=var963, "sources"=var3764, "["=var2321, "]"=var866, "names"=var596, java.util.LinkedHashMap=var3321, $r15=var1494, java.util.Set=var3793, $r16=var1896, $r17=var477, $z2=var3864, "\n}\n"=var3979}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: com.google.debugging.sourcemap.SourceMapGeneratorV3;	r1 := @parameter0: java.lang.Appendable;	r2 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<com.google.debugging.sourcemap.SourceMapGeneratorV3: int prepMappings()>();	i1 = $i0 + 1;	interfaceinvoke r1.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>("{\n");	staticinvoke <com.google.debugging.sourcemap.SourceMapGeneratorV3: void appendFirstField(java.lang.Appendable,java.lang.String,java.lang.CharSequence)>(r1, "version", "3");	if r2 == null goto $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i1);	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i1);	staticinvoke <com.google.debugging.sourcemap.SourceMapGeneratorV3: void appendField(java.lang.Appendable,java.lang.String,java.lang.CharSequence)>(r1, "lineCount", $r3);	$r4 = r0.<com.google.debugging.sourcemap.SourceMapGeneratorV3: java.lang.String sourceRootPath>;	if $r4 == null goto staticinvoke <com.google.debugging.sourcemap.SourceMapGeneratorV3: void appendFieldStart(java.lang.Appendable,java.lang.String)>(r1, "mappings");	staticinvoke <com.google.debugging.sourcemap.SourceMapGeneratorV3: void appendFieldStart(java.lang.Appendable,java.lang.String)>(r1, "mappings");	$r14 = new com.google.debugging.sourcemap.SourceMapGeneratorV3$LineMapper;	specialinvoke $r14.<com.google.debugging.sourcemap.SourceMapGeneratorV3$LineMapper: void <init>(com.google.debugging.sourcemap.SourceMapGeneratorV3,java.lang.Appendable,int)>(r0, r1, i1);	virtualinvoke $r14.<com.google.debugging.sourcemap.SourceMapGeneratorV3$LineMapper: void appendLineMappings()>();	staticinvoke <com.google.debugging.sourcemap.SourceMapGeneratorV3: void appendFieldEnd(java.lang.Appendable)>(r1);	staticinvoke <com.google.debugging.sourcemap.SourceMapGeneratorV3: void appendFieldStart(java.lang.Appendable,java.lang.String)>(r1, "sources");	interfaceinvoke r1.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>("[");	virtualinvoke r0.<com.google.debugging.sourcemap.SourceMapGeneratorV3: void addSourceNameMap(java.lang.Appendable)>(r1);	interfaceinvoke r1.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>("]");	staticinvoke <com.google.debugging.sourcemap.SourceMapGeneratorV3: void appendFieldEnd(java.lang.Appendable)>(r1);	virtualinvoke r0.<com.google.debugging.sourcemap.SourceMapGeneratorV3: void addSourcesContentMap(java.lang.Appendable)>(r1);	staticinvoke <com.google.debugging.sourcemap.SourceMapGeneratorV3: void appendFieldStart(java.lang.Appendable,java.lang.String)>(r1, "names");	interfaceinvoke r1.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>("[");	virtualinvoke r0.<com.google.debugging.sourcemap.SourceMapGeneratorV3: void addSymbolNameMap(java.lang.Appendable)>(r1);	interfaceinvoke r1.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>("]");	staticinvoke <com.google.debugging.sourcemap.SourceMapGeneratorV3: void appendFieldEnd(java.lang.Appendable)>(r1);	$r15 = r0.<com.google.debugging.sourcemap.SourceMapGeneratorV3: java.util.LinkedHashMap extensions>;	$r16 = virtualinvoke $r15.<java.util.LinkedHashMap: java.util.Set keySet()>();	$r17 = interfaceinvoke $r16.<java.util.Set: java.util.Iterator iterator()>();	$z2 = interfaceinvoke $r17.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto interfaceinvoke r1.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>("\n}\n");	interfaceinvoke r1.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>("\n}\n");	return
;block_num 5
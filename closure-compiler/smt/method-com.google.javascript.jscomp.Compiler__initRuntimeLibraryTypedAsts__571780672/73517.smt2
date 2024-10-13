(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2619 0)
(declare-sort var2997 0)
(declare-sort var2579 0)
(declare-sort var1179 0)
(declare-sort var3737 0)
(declare-sort var1195 0)
(declare-sort var2681 0)
(declare-sort var1777 0)
(declare-sort var3252 0)
(declare-sort var49 0)
(declare-sort var50 0)
(declare-sort var316 0)
(declare-sort var2957 0)
(declare-sort var3241 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2619!class ClassObject)
(declare-fun runtimeLibraryTypedAsts/-1807643844 (var2619) var2579)
(declare-fun var1179_checkState/1431124798 (Bool) void)
(declare-fun arr-String-init () (Array Int String))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(declare-fun SYNTHETIC_EXTERNS_FILE/-1807643844 (var2619) var3737)
(declare-fun getResourceAsStream/2018191724 (ClassObject String) var1195)
(declare-fun getOptions/1174813757 (var2619) var2681)
(declare-fun resolveSourceMapAnnotations/92387266 (var2681) Bool)
(declare-fun parseInlineSourceMaps/92387266 (var2681) Bool)
(declare-fun var3252_deserializeRuntimeLibraries/-1827436063 (var49 var3737 var2997 var1195 Bool Bool) var1777)
(declare-fun cast-from-var2619-to-var49 (var2619) var49)
(declare-fun var50-init () var50)
(declare-fun <init>/-1461814690 (var50) void)
(declare-fun getFilesystem/1002357509 (var1777) var316)
(declare-fun var3241_entrySet/1101202697 (var3241) var2957)
(declare-fun cast-from-var316-to-var3241 (var316) var3241)
(declare-fun var2957_iterator/1911472585 (var2957) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var2579_copyOf/-655497921 (var3241) var2579)
(declare-fun cast-from-var50-to-var3241 (var50) var3241)
(declare-const null-var2619 var2619)
(declare-const null-var2997 var2997)
(declare-const null-var2579 var2579)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3205 var2619) ; Statement: r0 := @this: com.google.javascript.jscomp.Compiler 
(assert (not (= var3205 null-var2619)))
(declare-const var1048 var2997) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional 
(assert (not (= var1048 null-var2997)))
(define-const var2996 var2579 (runtimeLibraryTypedAsts/-1807643844 var3205)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap runtimeLibraryTypedAsts> 
 ; Statement: if $r1 != null goto $z2 = 0 
(assert (not (= var2996 null-var2579))) ; Cond: $r1 != null 
(define-const var1647 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
;(assert (var1179_checkState/1431124798 var1647)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2) 

(declare-const var1647!1 Bool)
(define-const var2790 (Array Int String) arr-String-init) ; Statement: $r2 = newarray (java.lang.CharSequence)[1] 
(declare-const var2790!1 (Array Int String))
(assert (not (= var2790!1 null-__Array__Int__String__)))
(assert (= (select var2790!1 0) (cast-from-String-to-String "/runtime_libs.typedast"))) ; Statement: $r2[0] = "/runtime_libs.typedast" 
(define-const var532 String (String_join/-1520935655 (cast-from-String-to-String "") var2790!1)) ; Statement: $r19 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>("", $r2) 
(define-const var3397 var3737 (SYNTHETIC_EXTERNS_FILE/-1807643844 var3205)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.SourceFile SYNTHETIC_EXTERNS_FILE> 
(define-const var949 ClassObject var2619!class) ; Statement: $r4 = class "Lcom/google/javascript/jscomp/Compiler;" 
(assert true)
(define-const var157 var1195 (getResourceAsStream/2018191724 var949 var532)) ; Statement: $r8 = virtualinvoke $r4.<java.lang.Class: java.io.InputStream getResourceAsStream(java.lang.String)>($r19) 
(assert true)
(define-const var1025 var2681 (getOptions/1174813757 var3205)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CompilerOptions getOptions()>() 
(define-const var1509 Bool (resolveSourceMapAnnotations/92387266 var1025)) ; Statement: $z0 = $r6.<com.google.javascript.jscomp.CompilerOptions: boolean resolveSourceMapAnnotations> 
(assert true)
(define-const var2454 var2681 (getOptions/1174813757 var3205)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CompilerOptions getOptions()>() 
(define-const var1621 Bool (parseInlineSourceMaps/92387266 var2454)) ; Statement: $z1 = $r7.<com.google.javascript.jscomp.CompilerOptions: boolean parseInlineSourceMaps> 
(define-const var2890 var1777 (var3252_deserializeRuntimeLibraries/-1827436063 (cast-from-var2619-to-var49 var3205) var3397 var1048 var157 var1509 var1621)) ; Statement: $r20 = staticinvoke <com.google.javascript.jscomp.serialization.TypedAstDeserializer: com.google.javascript.jscomp.serialization.TypedAstDeserializer$DeserializedAst deserializeRuntimeLibraries(com.google.javascript.jscomp.AbstractCompiler,com.google.javascript.jscomp.SourceFile,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,java.io.InputStream,boolean,boolean)>(r0, $r5, r3, $r8, $z0, $z1) 
(define-const var353 var50 var50-init) ; Statement: $r9 = new java.util.LinkedHashMap 
(assert true)
;(assert (<init>/-1461814690 var353)) ; Statement: specialinvoke $r9.<java.util.LinkedHashMap: void <init>()>() 

(declare-const var353!1 var50)
(assert true)
(define-const var219 var316 (getFilesystem/1002357509 var2890)) ; Statement: $r10 = virtualinvoke $r20.<com.google.javascript.jscomp.serialization.TypedAstDeserializer$DeserializedAst: java.util.concurrent.ConcurrentMap getFilesystem()>() 
(define-const var2158 var2957 (var3241_entrySet/1101202697 (cast-from-var316-to-var3241 var219))) ; Statement: $r11 = interfaceinvoke $r10.<java.util.concurrent.ConcurrentMap: java.util.Set entrySet()>() 
(define-const var2243 Iterator (var2957_iterator/1911472585 var2158)) ; Statement: $r21 = interfaceinvoke $r11.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3610 Bool (Iterator_hasNext/-1669924200 var2243)) ; Statement: $z3 = interfaceinvoke $r21.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z3 == 0 goto $r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap copyOf(java.util.Map)>($r9) 
(assert (= (ite var3610 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3477 var2579 (var2579_copyOf/-655497921 (cast-from-var50-to-var3241 var353!1))) ; Statement: $r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap copyOf(java.util.Map)>($r9) 
(declare-const var3205!1 var2619)
(assert (not (= var3205!1 null-var2619)))
(assert (= (runtimeLibraryTypedAsts/-1807643844 var3205!1) var3477)) ; Statement: r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap runtimeLibraryTypedAsts> = $r12 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {runtimeLibraryTypedAsts/-1807643844=([com.google.javascript.jscomp.Compiler], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), var1179_checkState/1431124798=([boolean], void), arr-String-init=([], java.lang.CharSequence[]), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), SYNTHETIC_EXTERNS_FILE/-1807643844=([com.google.javascript.jscomp.Compiler], com.google.javascript.jscomp.SourceFile), getResourceAsStream/2018191724=([java.lang.Class, java.lang.String], java.io.InputStream), getOptions/1174813757=([com.google.javascript.jscomp.Compiler], com.google.javascript.jscomp.CompilerOptions), resolveSourceMapAnnotations/92387266=([com.google.javascript.jscomp.CompilerOptions], boolean), parseInlineSourceMaps/92387266=([com.google.javascript.jscomp.CompilerOptions], boolean), var3252_deserializeRuntimeLibraries/-1827436063=([com.google.javascript.jscomp.AbstractCompiler, com.google.javascript.jscomp.SourceFile, com.google.javascript.jscomp.jarjar.com.google.common.base.Optional, java.io.InputStream, boolean, boolean], com.google.javascript.jscomp.serialization.TypedAstDeserializer$DeserializedAst), cast-from-var2619-to-var49=([com.google.javascript.jscomp.Compiler], com.google.javascript.jscomp.AbstractCompiler), var50-init=([], java.util.LinkedHashMap), <init>/-1461814690=([java.util.LinkedHashMap], void), getFilesystem/1002357509=([com.google.javascript.jscomp.serialization.TypedAstDeserializer$DeserializedAst], java.util.concurrent.ConcurrentMap), var3241_entrySet/1101202697=([java.util.Map], java.util.Set), cast-from-var316-to-var3241=([java.util.concurrent.ConcurrentMap], java.util.Map), var2957_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var2579_copyOf/-655497921=([java.util.Map], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), cast-from-var50-to-var3241=([java.util.LinkedHashMap], java.util.Map)}
; {var2619=com.google.javascript.jscomp.Compiler, var3205=r0, var2997=com.google.javascript.jscomp.jarjar.com.google.common.base.Optional, var1048=r3, var2579=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2996=$r1, var1647=$z2, var1179=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2790=$r2, var532=$r19, var3737=com.google.javascript.jscomp.SourceFile, var3397=$r5, var949=$r4, var1195=java.io.InputStream, var157=$r8, var2681=com.google.javascript.jscomp.CompilerOptions, var1025=$r6, var1509=$z0, var2454=$r7, var1621=$z1, var1777=com.google.javascript.jscomp.serialization.TypedAstDeserializer$DeserializedAst, var3252=com.google.javascript.jscomp.serialization.TypedAstDeserializer, var49=com.google.javascript.jscomp.AbstractCompiler, var2890=$r20, var50=java.util.LinkedHashMap, var353=$r9, var316=java.util.concurrent.ConcurrentMap, var219=$r10, var2957=java.util.Set, var3241=java.util.Map, var2158=$r11, var2243=$r21, var3610=$z3, var3477=$r12}
; {com.google.javascript.jscomp.Compiler=var2619, r0=var3205, com.google.javascript.jscomp.jarjar.com.google.common.base.Optional=var2997, r3=var1048, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2579, $r1=var2996, $z2=var1647, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1179, $r2=var2790, $r19=var532, com.google.javascript.jscomp.SourceFile=var3737, $r5=var3397, $r4=var949, java.io.InputStream=var1195, $r8=var157, com.google.javascript.jscomp.CompilerOptions=var2681, $r6=var1025, $z0=var1509, $r7=var2454, $z1=var1621, com.google.javascript.jscomp.serialization.TypedAstDeserializer$DeserializedAst=var1777, com.google.javascript.jscomp.serialization.TypedAstDeserializer=var3252, com.google.javascript.jscomp.AbstractCompiler=var49, $r20=var2890, java.util.LinkedHashMap=var50, $r9=var353, java.util.concurrent.ConcurrentMap=var316, $r10=var219, java.util.Set=var2957, java.util.Map=var3241, $r11=var2158, $r21=var2243, $z3=var3610, $r12=var3477}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.Compiler;	r3 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional;	$r1 = r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap runtimeLibraryTypedAsts>;	if $r1 != null goto $z2 = 0;	$z2 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2);	$r2 = newarray (java.lang.CharSequence)[1];	$r2[0] = "/runtime_libs.typedast";	$r19 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>("", $r2);	$r5 = r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.SourceFile SYNTHETIC_EXTERNS_FILE>;	$r4 = class "Lcom/google/javascript/jscomp/Compiler;";	$r8 = virtualinvoke $r4.<java.lang.Class: java.io.InputStream getResourceAsStream(java.lang.String)>($r19);	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CompilerOptions getOptions()>();	$z0 = $r6.<com.google.javascript.jscomp.CompilerOptions: boolean resolveSourceMapAnnotations>;	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CompilerOptions getOptions()>();	$z1 = $r7.<com.google.javascript.jscomp.CompilerOptions: boolean parseInlineSourceMaps>;	$r20 = staticinvoke <com.google.javascript.jscomp.serialization.TypedAstDeserializer: com.google.javascript.jscomp.serialization.TypedAstDeserializer$DeserializedAst deserializeRuntimeLibraries(com.google.javascript.jscomp.AbstractCompiler,com.google.javascript.jscomp.SourceFile,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,java.io.InputStream,boolean,boolean)>(r0, $r5, r3, $r8, $z0, $z1);	$r9 = new java.util.LinkedHashMap;	specialinvoke $r9.<java.util.LinkedHashMap: void <init>()>();	$r10 = virtualinvoke $r20.<com.google.javascript.jscomp.serialization.TypedAstDeserializer$DeserializedAst: java.util.concurrent.ConcurrentMap getFilesystem()>();	$r11 = interfaceinvoke $r10.<java.util.concurrent.ConcurrentMap: java.util.Set entrySet()>();	$r21 = interfaceinvoke $r11.<java.util.Set: java.util.Iterator iterator()>();	$z3 = interfaceinvoke $r21.<java.util.Iterator: boolean hasNext()>();	if $z3 == 0 goto $r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap copyOf(java.util.Map)>($r9);	$r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap copyOf(java.util.Map)>($r9);	r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap runtimeLibraryTypedAsts> = $r12;	return
;block_num 5
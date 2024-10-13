(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3845 0)
(declare-sort var3881 0)
(declare-sort var3219 0)
(declare-sort var3412 0)
(declare-sort var2888 0)
(declare-sort var405 0)
(declare-sort var3188 0)
(declare-sort var1217 0)
(declare-sort var1242 0)
(declare-sort var1742 0)
(declare-sort var3891 0)
(declare-sort var3293 0)
(declare-sort var3652 0)
(declare-sort var179 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3845!class ClassObject)
(declare-fun runtimeLibraryTypedAsts/-1807643844 (var3845) var3219)
(declare-fun var3412_checkState/1431124798 (Bool) void)
(declare-fun arr-String-init () (Array Int String))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(declare-fun SYNTHETIC_EXTERNS_FILE/-1807643844 (var3845) var2888)
(declare-fun getResourceAsStream/2018191724 (ClassObject String) var405)
(declare-fun getOptions/1174813757 (var3845) var3188)
(declare-fun resolveSourceMapAnnotations/92387266 (var3188) Bool)
(declare-fun parseInlineSourceMaps/92387266 (var3188) Bool)
(declare-fun var1242_deserializeRuntimeLibraries/-1827436063 (var1742 var2888 var3881 var405 Bool Bool) var1217)
(declare-fun cast-from-var3845-to-var1742 (var3845) var1742)
(declare-fun var3891-init () var3891)
(declare-fun <init>/-1461814690 (var3891) void)
(declare-fun getFilesystem/1002357509 (var1217) var3293)
(declare-fun var179_entrySet/1101202697 (var179) var3652)
(declare-fun cast-from-var3293-to-var179 (var3293) var179)
(declare-fun var3652_iterator/1911472585 (var3652) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var3219_copyOf/-655497921 (var179) var3219)
(declare-fun cast-from-var3891-to-var179 (var3891) var179)
(declare-const null-var3845 var3845)
(declare-const null-var3881 var3881)
(declare-const null-var3219 var3219)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1704 var3845) ; Statement: r0 := @this: com.google.javascript.jscomp.Compiler 
(assert (not (= var1704 null-var3845)))
(declare-const var2500 var3881) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional 
(assert (not (= var2500 null-var3881)))
(define-const var1001 var3219 (runtimeLibraryTypedAsts/-1807643844 var1704)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap runtimeLibraryTypedAsts> 
 ; Statement: if $r1 != null goto $z2 = 0 
(assert (not (not (= var1001 null-var3219)))) ; Negate: Cond: $r1 != null  
(define-const var231 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2)] 
(assert true) ; Non Conditional
;(assert (var3412_checkState/1431124798 var231)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2) 

(declare-const var231!1 Bool)
(define-const var3085 (Array Int String) arr-String-init) ; Statement: $r2 = newarray (java.lang.CharSequence)[1] 
(declare-const var3085!1 (Array Int String))
(assert (not (= var3085!1 null-__Array__Int__String__)))
(assert (= (select var3085!1 0) (cast-from-String-to-String "/runtime_libs.typedast"))) ; Statement: $r2[0] = "/runtime_libs.typedast" 
(define-const var2180 String (String_join/-1520935655 (cast-from-String-to-String "") var3085!1)) ; Statement: $r19 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>("", $r2) 
(define-const var425 var2888 (SYNTHETIC_EXTERNS_FILE/-1807643844 var1704)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.SourceFile SYNTHETIC_EXTERNS_FILE> 
(define-const var2088 ClassObject var3845!class) ; Statement: $r4 = class "Lcom/google/javascript/jscomp/Compiler;" 
(assert true)
(define-const var380 var405 (getResourceAsStream/2018191724 var2088 var2180)) ; Statement: $r8 = virtualinvoke $r4.<java.lang.Class: java.io.InputStream getResourceAsStream(java.lang.String)>($r19) 
(assert true)
(define-const var1462 var3188 (getOptions/1174813757 var1704)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CompilerOptions getOptions()>() 
(define-const var253 Bool (resolveSourceMapAnnotations/92387266 var1462)) ; Statement: $z0 = $r6.<com.google.javascript.jscomp.CompilerOptions: boolean resolveSourceMapAnnotations> 
(assert true)
(define-const var1080 var3188 (getOptions/1174813757 var1704)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CompilerOptions getOptions()>() 
(define-const var401 Bool (parseInlineSourceMaps/92387266 var1080)) ; Statement: $z1 = $r7.<com.google.javascript.jscomp.CompilerOptions: boolean parseInlineSourceMaps> 
(define-const var2909 var1217 (var1242_deserializeRuntimeLibraries/-1827436063 (cast-from-var3845-to-var1742 var1704) var425 var2500 var380 var253 var401)) ; Statement: $r20 = staticinvoke <com.google.javascript.jscomp.serialization.TypedAstDeserializer: com.google.javascript.jscomp.serialization.TypedAstDeserializer$DeserializedAst deserializeRuntimeLibraries(com.google.javascript.jscomp.AbstractCompiler,com.google.javascript.jscomp.SourceFile,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,java.io.InputStream,boolean,boolean)>(r0, $r5, r3, $r8, $z0, $z1) 
(define-const var2778 var3891 var3891-init) ; Statement: $r9 = new java.util.LinkedHashMap 
(assert true)
;(assert (<init>/-1461814690 var2778)) ; Statement: specialinvoke $r9.<java.util.LinkedHashMap: void <init>()>() 

(declare-const var2778!1 var3891)
(assert true)
(define-const var1225 var3293 (getFilesystem/1002357509 var2909)) ; Statement: $r10 = virtualinvoke $r20.<com.google.javascript.jscomp.serialization.TypedAstDeserializer$DeserializedAst: java.util.concurrent.ConcurrentMap getFilesystem()>() 
(define-const var2508 var3652 (var179_entrySet/1101202697 (cast-from-var3293-to-var179 var1225))) ; Statement: $r11 = interfaceinvoke $r10.<java.util.concurrent.ConcurrentMap: java.util.Set entrySet()>() 
(define-const var38 Iterator (var3652_iterator/1911472585 var2508)) ; Statement: $r21 = interfaceinvoke $r11.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var474 Bool (Iterator_hasNext/-1669924200 var38)) ; Statement: $z3 = interfaceinvoke $r21.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z3 == 0 goto $r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap copyOf(java.util.Map)>($r9) 
(assert (= (ite var474 1 0) 0)) ; Cond: $z3 == 0 
(define-const var2713 var3219 (var3219_copyOf/-655497921 (cast-from-var3891-to-var179 var2778!1))) ; Statement: $r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap copyOf(java.util.Map)>($r9) 
(declare-const var1704!1 var3845)
(assert (not (= var1704!1 null-var3845)))
(assert (= (runtimeLibraryTypedAsts/-1807643844 var1704!1) var2713)) ; Statement: r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap runtimeLibraryTypedAsts> = $r12 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {runtimeLibraryTypedAsts/-1807643844=([com.google.javascript.jscomp.Compiler], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), var3412_checkState/1431124798=([boolean], void), arr-String-init=([], java.lang.CharSequence[]), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), SYNTHETIC_EXTERNS_FILE/-1807643844=([com.google.javascript.jscomp.Compiler], com.google.javascript.jscomp.SourceFile), getResourceAsStream/2018191724=([java.lang.Class, java.lang.String], java.io.InputStream), getOptions/1174813757=([com.google.javascript.jscomp.Compiler], com.google.javascript.jscomp.CompilerOptions), resolveSourceMapAnnotations/92387266=([com.google.javascript.jscomp.CompilerOptions], boolean), parseInlineSourceMaps/92387266=([com.google.javascript.jscomp.CompilerOptions], boolean), var1242_deserializeRuntimeLibraries/-1827436063=([com.google.javascript.jscomp.AbstractCompiler, com.google.javascript.jscomp.SourceFile, com.google.javascript.jscomp.jarjar.com.google.common.base.Optional, java.io.InputStream, boolean, boolean], com.google.javascript.jscomp.serialization.TypedAstDeserializer$DeserializedAst), cast-from-var3845-to-var1742=([com.google.javascript.jscomp.Compiler], com.google.javascript.jscomp.AbstractCompiler), var3891-init=([], java.util.LinkedHashMap), <init>/-1461814690=([java.util.LinkedHashMap], void), getFilesystem/1002357509=([com.google.javascript.jscomp.serialization.TypedAstDeserializer$DeserializedAst], java.util.concurrent.ConcurrentMap), var179_entrySet/1101202697=([java.util.Map], java.util.Set), cast-from-var3293-to-var179=([java.util.concurrent.ConcurrentMap], java.util.Map), var3652_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var3219_copyOf/-655497921=([java.util.Map], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), cast-from-var3891-to-var179=([java.util.LinkedHashMap], java.util.Map)}
; {var3845=com.google.javascript.jscomp.Compiler, var1704=r0, var3881=com.google.javascript.jscomp.jarjar.com.google.common.base.Optional, var2500=r3, var3219=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1001=$r1, var231=$z2, var3412=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3085=$r2, var2180=$r19, var2888=com.google.javascript.jscomp.SourceFile, var425=$r5, var2088=$r4, var405=java.io.InputStream, var380=$r8, var3188=com.google.javascript.jscomp.CompilerOptions, var1462=$r6, var253=$z0, var1080=$r7, var401=$z1, var1217=com.google.javascript.jscomp.serialization.TypedAstDeserializer$DeserializedAst, var1242=com.google.javascript.jscomp.serialization.TypedAstDeserializer, var1742=com.google.javascript.jscomp.AbstractCompiler, var2909=$r20, var3891=java.util.LinkedHashMap, var2778=$r9, var3293=java.util.concurrent.ConcurrentMap, var1225=$r10, var3652=java.util.Set, var179=java.util.Map, var2508=$r11, var38=$r21, var474=$z3, var2713=$r12}
; {com.google.javascript.jscomp.Compiler=var3845, r0=var1704, com.google.javascript.jscomp.jarjar.com.google.common.base.Optional=var3881, r3=var2500, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3219, $r1=var1001, $z2=var231, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3412, $r2=var3085, $r19=var2180, com.google.javascript.jscomp.SourceFile=var2888, $r5=var425, $r4=var2088, java.io.InputStream=var405, $r8=var380, com.google.javascript.jscomp.CompilerOptions=var3188, $r6=var1462, $z0=var253, $r7=var1080, $z1=var401, com.google.javascript.jscomp.serialization.TypedAstDeserializer$DeserializedAst=var1217, com.google.javascript.jscomp.serialization.TypedAstDeserializer=var1242, com.google.javascript.jscomp.AbstractCompiler=var1742, $r20=var2909, java.util.LinkedHashMap=var3891, $r9=var2778, java.util.concurrent.ConcurrentMap=var3293, $r10=var1225, java.util.Set=var3652, java.util.Map=var179, $r11=var2508, $r21=var38, $z3=var474, $r12=var2713}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.Compiler;	r3 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional;	$r1 = r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap runtimeLibraryTypedAsts>;	if $r1 != null goto $z2 = 0;	$z2 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2);	$r2 = newarray (java.lang.CharSequence)[1];	$r2[0] = "/runtime_libs.typedast";	$r19 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>("", $r2);	$r5 = r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.SourceFile SYNTHETIC_EXTERNS_FILE>;	$r4 = class "Lcom/google/javascript/jscomp/Compiler;";	$r8 = virtualinvoke $r4.<java.lang.Class: java.io.InputStream getResourceAsStream(java.lang.String)>($r19);	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CompilerOptions getOptions()>();	$z0 = $r6.<com.google.javascript.jscomp.CompilerOptions: boolean resolveSourceMapAnnotations>;	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CompilerOptions getOptions()>();	$z1 = $r7.<com.google.javascript.jscomp.CompilerOptions: boolean parseInlineSourceMaps>;	$r20 = staticinvoke <com.google.javascript.jscomp.serialization.TypedAstDeserializer: com.google.javascript.jscomp.serialization.TypedAstDeserializer$DeserializedAst deserializeRuntimeLibraries(com.google.javascript.jscomp.AbstractCompiler,com.google.javascript.jscomp.SourceFile,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,java.io.InputStream,boolean,boolean)>(r0, $r5, r3, $r8, $z0, $z1);	$r9 = new java.util.LinkedHashMap;	specialinvoke $r9.<java.util.LinkedHashMap: void <init>()>();	$r10 = virtualinvoke $r20.<com.google.javascript.jscomp.serialization.TypedAstDeserializer$DeserializedAst: java.util.concurrent.ConcurrentMap getFilesystem()>();	$r11 = interfaceinvoke $r10.<java.util.concurrent.ConcurrentMap: java.util.Set entrySet()>();	$r21 = interfaceinvoke $r11.<java.util.Set: java.util.Iterator iterator()>();	$z3 = interfaceinvoke $r21.<java.util.Iterator: boolean hasNext()>();	if $z3 == 0 goto $r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap copyOf(java.util.Map)>($r9);	$r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap copyOf(java.util.Map)>($r9);	r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap runtimeLibraryTypedAsts> = $r12;	return
;block_num 5
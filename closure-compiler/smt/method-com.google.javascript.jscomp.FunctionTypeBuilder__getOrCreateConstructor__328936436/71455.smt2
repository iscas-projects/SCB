(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1108 0)
(declare-sort var1101 0)
(declare-sort var1727 0)
(declare-sort var1173 0)
(declare-sort var2928 0)
(declare-sort var3173 0)
(declare-sort var3189 0)
(declare-sort var2417 0)
(declare-sort var3050 0)
(declare-sort var1353 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun createDefaultBuilder/-334215302 (var1108) var1101)
(declare-fun forConstructor/1007004194 (var1101) var1101)
(declare-fun parameters/300494156 (var1108) var1727)
(declare-fun withParameters/-1632085951 (var1101 var1173) var1101)
(declare-fun cast-from-var1727-to-var1173 (var1727) var1173)
(declare-fun returnType/300494156 (var1108) var2928)
(declare-fun withReturnType/-1344772158 (var1101 var2928) var1101)
(declare-fun constructorTemplateTypeNames/300494156 (var1108) var1727)
(declare-fun withConstructorTemplateKeys/1355943243 (var1101 var3173) var1101)
(declare-fun cast-from-var1727-to-var3173 (var1727) var3173)
(declare-fun isAbstract/300494156 (var1108) Bool)
(declare-fun withIsAbstract/1487471089 (var1101 Bool) var1101)
(declare-fun build/2062636944 (var1101) var3189)
(declare-fun makesStructs/300494156 (var1108) Bool)
(declare-fun setStruct/995517950 (var3189) void)
(declare-fun typeRegistry/300494156 (var1108) var2417)
(declare-fun declarationScope/300494156 (var1108) var3050)
(declare-fun fnName/300494156 (var1108) String)
(declare-fun getType/1148151378 (var2417 var1353 String) var2928)
(declare-fun cast-from-var3050-to-var1353 (var3050) var1353)
(declare-fun maybeSetBaseType/-1091042470 (var1108 var3189) void)
(declare-fun syntacticFnName/300494156 (var1108) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var1108 var1108)
(declare-const null-var2928 var2928)
(declare-const var3267 var1108) ; Statement: r0 := @this: com.google.javascript.jscomp.FunctionTypeBuilder 
(assert (not (= var3267 null-var1108)))
(assert true)
(define-const var3429 var1101 (createDefaultBuilder/-334215302 var3267)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.FunctionTypeBuilder: com.google.javascript.rhino.jstype.FunctionType$Builder createDefaultBuilder()>() 
(assert true)
(define-const var2055 var1101 (forConstructor/1007004194 var3429)) ; Statement: $r3 = virtualinvoke $r1.<com.google.javascript.rhino.jstype.FunctionType$Builder: com.google.javascript.rhino.jstype.FunctionType$Builder forConstructor()>() 
(define-const var992 var1727 (parameters/300494156 var3267)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parameters> 
(assert true)
(define-const var504 var1101 (withParameters/-1632085951 var2055 (cast-from-var1727-to-var1173 var992))) ; Statement: $r5 = virtualinvoke $r3.<com.google.javascript.rhino.jstype.FunctionType$Builder: com.google.javascript.rhino.jstype.FunctionType$Builder withParameters(java.util.List)>($r2) 
(define-const var2058 var2928 (returnType/300494156 var3267)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: com.google.javascript.rhino.jstype.JSType returnType> 
(assert true)
(define-const var2643 var1101 (withReturnType/-1344772158 var504 var2058)) ; Statement: $r7 = virtualinvoke $r5.<com.google.javascript.rhino.jstype.FunctionType$Builder: com.google.javascript.rhino.jstype.FunctionType$Builder withReturnType(com.google.javascript.rhino.jstype.JSType)>($r4) 
(define-const var1176 var1727 (constructorTemplateTypeNames/300494156 var3267)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList constructorTemplateTypeNames> 
(assert true)
(define-const var2984 var1101 (withConstructorTemplateKeys/1355943243 var2643 (cast-from-var1727-to-var3173 var1176))) ; Statement: $r8 = virtualinvoke $r7.<com.google.javascript.rhino.jstype.FunctionType$Builder: com.google.javascript.rhino.jstype.FunctionType$Builder withConstructorTemplateKeys(java.lang.Iterable)>($r6) 
(define-const var2833 Bool (isAbstract/300494156 var3267)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: boolean isAbstract> 
(assert true)
(define-const var1963 var1101 (withIsAbstract/1487471089 var2984 var2833)) ; Statement: $r9 = virtualinvoke $r8.<com.google.javascript.rhino.jstype.FunctionType$Builder: com.google.javascript.rhino.jstype.FunctionType$Builder withIsAbstract(boolean)>($z0) 
(assert true)
(define-const var1749 var3189 (build/2062636944 var1963)) ; Statement: r10 = virtualinvoke $r9.<com.google.javascript.rhino.jstype.FunctionType$Builder: com.google.javascript.rhino.jstype.FunctionType build()>() 
(define-const var3742 Bool (makesStructs/300494156 var3267)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: boolean makesStructs> 
 ; Statement: if $z1 == 0 goto $z2 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: boolean makesDicts> 
(assert (not (= (ite var3742 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (setStruct/995517950 var1749)) ; Statement: virtualinvoke r10.<com.google.javascript.rhino.jstype.FunctionType: void setStruct()>() 

(declare-const var1749!1 var3189)
 ; Statement: goto [?= $r30 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: com.google.javascript.rhino.jstype.JSTypeRegistry typeRegistry>] 
(assert true) ; Non Conditional
(define-const var2726 var2417 (typeRegistry/300494156 var3267)) ; Statement: $r30 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: com.google.javascript.rhino.jstype.JSTypeRegistry typeRegistry> 
(define-const var165 var3050 (declarationScope/300494156 var3267)) ; Statement: $r31 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: com.google.javascript.jscomp.TypedScope declarationScope> 
(define-const var2749 String (fnName/300494156 var3267)) ; Statement: $r32 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: java.lang.String fnName> 
(assert true)
(define-const var1755 var2928 (getType/1148151378 var2726 (cast-from-var3050-to-var1353 var165) var2749)) ; Statement: $r33 = virtualinvoke $r30.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getType(com.google.javascript.rhino.StaticScope,java.lang.String)>($r31, $r32) 
 ; Statement: if $r33 == null goto virtualinvoke r0.<com.google.javascript.jscomp.FunctionTypeBuilder: void maybeSetBaseType(com.google.javascript.rhino.jstype.FunctionType)>(r10) 
(assert (= var1755 null-var2928)) ; Cond: $r33 == null 
(assert true)
;(assert (maybeSetBaseType/-1091042470 var3267 var1749!1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.FunctionTypeBuilder: void maybeSetBaseType(com.google.javascript.rhino.jstype.FunctionType)>(r10) 

(declare-const var3267!1 var1108)
(declare-const var1749!2 var3189)
(define-const var2804 String (syntacticFnName/300494156 var3267!1)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: java.lang.String syntacticFnName> 
(assert true)
(define-const var1423 Bool (isEmpty/-1285796103 var2804)) ; Statement: $z4 = virtualinvoke $r11.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z4 != 0 goto return r10 
(assert (not (= (ite var1423 1 0) 0))) ; Cond: $z4 != 0 
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {createDefaultBuilder/-334215302=([com.google.javascript.jscomp.FunctionTypeBuilder], com.google.javascript.rhino.jstype.FunctionType$Builder), forConstructor/1007004194=([com.google.javascript.rhino.jstype.FunctionType$Builder], com.google.javascript.rhino.jstype.FunctionType$Builder), parameters/300494156=([com.google.javascript.jscomp.FunctionTypeBuilder], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), withParameters/-1632085951=([com.google.javascript.rhino.jstype.FunctionType$Builder, java.util.List], com.google.javascript.rhino.jstype.FunctionType$Builder), cast-from-var1727-to-var1173=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], java.util.List), returnType/300494156=([com.google.javascript.jscomp.FunctionTypeBuilder], com.google.javascript.rhino.jstype.JSType), withReturnType/-1344772158=([com.google.javascript.rhino.jstype.FunctionType$Builder, com.google.javascript.rhino.jstype.JSType], com.google.javascript.rhino.jstype.FunctionType$Builder), constructorTemplateTypeNames/300494156=([com.google.javascript.jscomp.FunctionTypeBuilder], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), withConstructorTemplateKeys/1355943243=([com.google.javascript.rhino.jstype.FunctionType$Builder, java.lang.Iterable], com.google.javascript.rhino.jstype.FunctionType$Builder), cast-from-var1727-to-var3173=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], java.lang.Iterable), isAbstract/300494156=([com.google.javascript.jscomp.FunctionTypeBuilder], boolean), withIsAbstract/1487471089=([com.google.javascript.rhino.jstype.FunctionType$Builder, boolean], com.google.javascript.rhino.jstype.FunctionType$Builder), build/2062636944=([com.google.javascript.rhino.jstype.FunctionType$Builder], com.google.javascript.rhino.jstype.FunctionType), makesStructs/300494156=([com.google.javascript.jscomp.FunctionTypeBuilder], boolean), setStruct/995517950=([com.google.javascript.rhino.jstype.FunctionType], void), typeRegistry/300494156=([com.google.javascript.jscomp.FunctionTypeBuilder], com.google.javascript.rhino.jstype.JSTypeRegistry), declarationScope/300494156=([com.google.javascript.jscomp.FunctionTypeBuilder], com.google.javascript.jscomp.TypedScope), fnName/300494156=([com.google.javascript.jscomp.FunctionTypeBuilder], java.lang.String), getType/1148151378=([com.google.javascript.rhino.jstype.JSTypeRegistry, com.google.javascript.rhino.StaticScope, java.lang.String], com.google.javascript.rhino.jstype.JSType), cast-from-var3050-to-var1353=([com.google.javascript.jscomp.TypedScope], com.google.javascript.rhino.StaticScope), maybeSetBaseType/-1091042470=([com.google.javascript.jscomp.FunctionTypeBuilder, com.google.javascript.rhino.jstype.FunctionType], void), syntacticFnName/300494156=([com.google.javascript.jscomp.FunctionTypeBuilder], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1108=com.google.javascript.jscomp.FunctionTypeBuilder, var3267=r0, var1101=com.google.javascript.rhino.jstype.FunctionType$Builder, var3429=$r1, var2055=$r3, var1727=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var992=$r2, var1173=java.util.List, var504=$r5, var2928=com.google.javascript.rhino.jstype.JSType, var2058=$r4, var2643=$r7, var1176=$r6, var3173=java.lang.Iterable, var2984=$r8, var2833=$z0, var1963=$r9, var3189=com.google.javascript.rhino.jstype.FunctionType, var1749=r10, var3742=$z1, var2417=com.google.javascript.rhino.jstype.JSTypeRegistry, var2726=$r30, var3050=com.google.javascript.jscomp.TypedScope, var165=$r31, var2749=$r32, var1353=com.google.javascript.rhino.StaticScope, var1755=$r33, var2804=$r11, var1423=$z4}
; {com.google.javascript.jscomp.FunctionTypeBuilder=var1108, r0=var3267, com.google.javascript.rhino.jstype.FunctionType$Builder=var1101, $r1=var3429, $r3=var2055, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1727, $r2=var992, java.util.List=var1173, $r5=var504, com.google.javascript.rhino.jstype.JSType=var2928, $r4=var2058, $r7=var2643, $r6=var1176, java.lang.Iterable=var3173, $r8=var2984, $z0=var2833, $r9=var1963, com.google.javascript.rhino.jstype.FunctionType=var3189, r10=var1749, $z1=var3742, com.google.javascript.rhino.jstype.JSTypeRegistry=var2417, $r30=var2726, com.google.javascript.jscomp.TypedScope=var3050, $r31=var165, $r32=var2749, com.google.javascript.rhino.StaticScope=var1353, $r33=var1755, $r11=var2804, $z4=var1423}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.FunctionTypeBuilder;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.FunctionTypeBuilder: com.google.javascript.rhino.jstype.FunctionType$Builder createDefaultBuilder()>();	$r3 = virtualinvoke $r1.<com.google.javascript.rhino.jstype.FunctionType$Builder: com.google.javascript.rhino.jstype.FunctionType$Builder forConstructor()>();	$r2 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parameters>;	$r5 = virtualinvoke $r3.<com.google.javascript.rhino.jstype.FunctionType$Builder: com.google.javascript.rhino.jstype.FunctionType$Builder withParameters(java.util.List)>($r2);	$r4 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: com.google.javascript.rhino.jstype.JSType returnType>;	$r7 = virtualinvoke $r5.<com.google.javascript.rhino.jstype.FunctionType$Builder: com.google.javascript.rhino.jstype.FunctionType$Builder withReturnType(com.google.javascript.rhino.jstype.JSType)>($r4);	$r6 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList constructorTemplateTypeNames>;	$r8 = virtualinvoke $r7.<com.google.javascript.rhino.jstype.FunctionType$Builder: com.google.javascript.rhino.jstype.FunctionType$Builder withConstructorTemplateKeys(java.lang.Iterable)>($r6);	$z0 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: boolean isAbstract>;	$r9 = virtualinvoke $r8.<com.google.javascript.rhino.jstype.FunctionType$Builder: com.google.javascript.rhino.jstype.FunctionType$Builder withIsAbstract(boolean)>($z0);	r10 = virtualinvoke $r9.<com.google.javascript.rhino.jstype.FunctionType$Builder: com.google.javascript.rhino.jstype.FunctionType build()>();	$z1 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: boolean makesStructs>;	if $z1 == 0 goto $z2 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: boolean makesDicts>;	virtualinvoke r10.<com.google.javascript.rhino.jstype.FunctionType: void setStruct()>();	goto [?= $r30 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: com.google.javascript.rhino.jstype.JSTypeRegistry typeRegistry>];	$r30 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: com.google.javascript.rhino.jstype.JSTypeRegistry typeRegistry>;	$r31 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: com.google.javascript.jscomp.TypedScope declarationScope>;	$r32 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: java.lang.String fnName>;	$r33 = virtualinvoke $r30.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getType(com.google.javascript.rhino.StaticScope,java.lang.String)>($r31, $r32);	if $r33 == null goto virtualinvoke r0.<com.google.javascript.jscomp.FunctionTypeBuilder: void maybeSetBaseType(com.google.javascript.rhino.jstype.FunctionType)>(r10);	virtualinvoke r0.<com.google.javascript.jscomp.FunctionTypeBuilder: void maybeSetBaseType(com.google.javascript.rhino.jstype.FunctionType)>(r10);	$r11 = r0.<com.google.javascript.jscomp.FunctionTypeBuilder: java.lang.String syntacticFnName>;	$z4 = virtualinvoke $r11.<java.lang.String: boolean isEmpty()>();	if $z4 != 0 goto return r10;	return r10
;block_num 5
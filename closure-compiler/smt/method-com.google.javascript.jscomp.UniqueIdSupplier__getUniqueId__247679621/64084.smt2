(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2614 0)
(declare-sort var3090 0)
(declare-sort var1360 0)
(declare-sort var1660 0)
(declare-sort var47 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceFile/-782247188 (var3090) var1360)
(declare-fun getName/-2142232167 (var1360) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun counter/-1408931755 (var2614) var1660)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var1660_add/-2011586882 (var1660 var47 Int) Int)
(declare-fun cast-from-Int-to-var47 (Int) var47)
(declare-fun cast-from-Int-to-String (Int) String)
(declare-const null-var2614 var2614)
(declare-const null-var3090 var3090)
(declare-const var2749 var2614) ; Statement: r3 := @this: com.google.javascript.jscomp.UniqueIdSupplier 
(assert (not (= var2749 null-var2614)))
(declare-const var2248 var3090) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.CompilerInput 
(assert (not (= var2248 null-var3090)))
(assert true)
(define-const var2338 var1360 (getSourceFile/-782247188 var2248)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.CompilerInput: com.google.javascript.jscomp.SourceFile getSourceFile()>() 
(assert true)
(define-const var3475 String (getName/-2142232167 var2338)) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.jscomp.SourceFile: java.lang.String getName()>() 
(assert true)
(define-const var3473 Int (hashCode/-467973558 var3475)) ; Statement: i0 = virtualinvoke r2.<java.lang.String: int hashCode()>() 
(define-const var2170 var1660 (counter/-1408931755 var2749)) ; Statement: $r4 = r3.<com.google.javascript.jscomp.UniqueIdSupplier: com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset counter> 
(define-const var2627 Int (Int_valueOf/-1371140006 var3473)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var2910 Int (var1660_add/-2011586882 var2170 (cast-from-Int-to-var47 var2627) 1)) ; Statement: i1 = interfaceinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset: int add(java.lang.Object,int)>($r5, 1) 
 ; Statement: if i0 >= 0 goto $r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (int)>(i0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001") 
(assert (>= var3473 0)) ; Cond: i0 >= 0 
(define-const var741 String (str.++ "\u0001" (cast-from-Int-to-String var3473))) ; Statement: $r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (int)>(i0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001") 
(assert true) ; Non Conditional
(define-const var1873 String (str.++ "\u0001$\u0001" var741 (cast-from-Int-to-String var2910))) ; Statement: $r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,int)>($r7, i1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001$\u0001") 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceFile/-782247188=([com.google.javascript.jscomp.CompilerInput], com.google.javascript.jscomp.SourceFile), getName/-2142232167=([com.google.javascript.jscomp.SourceFile], java.lang.String), hashCode/-467973558=([java.lang.String], int), counter/-1408931755=([com.google.javascript.jscomp.UniqueIdSupplier], com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset), Int_valueOf/-1371140006=([int], java.lang.Integer), var1660_add/-2011586882=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset, java.lang.Object, int], int), cast-from-Int-to-var47=([java.lang.Integer], java.lang.Object), cast-from-Int-to-String=([int], java.lang.String)}
; {var2614=com.google.javascript.jscomp.UniqueIdSupplier, var2749=r3, var3090=com.google.javascript.jscomp.CompilerInput, var2248=r0, var1360=com.google.javascript.jscomp.SourceFile, var2338=$r1, var3475=r2, var3473=i0, var1660=com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset, var2170=$r4, var2627=$r5, var47=java.lang.Object, var2910=i1, var741=$r7, var1873=$r6}
; {com.google.javascript.jscomp.UniqueIdSupplier=var2614, r3=var2749, com.google.javascript.jscomp.CompilerInput=var3090, r0=var2248, com.google.javascript.jscomp.SourceFile=var1360, $r1=var2338, r2=var3475, i0=var3473, com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset=var1660, $r4=var2170, $r5=var2627, java.lang.Object=var47, i1=var2910, $r7=var741, $r6=var1873}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.UniqueIdSupplier;	r0 := @parameter0: com.google.javascript.jscomp.CompilerInput;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.CompilerInput: com.google.javascript.jscomp.SourceFile getSourceFile()>();	r2 = virtualinvoke $r1.<com.google.javascript.jscomp.SourceFile: java.lang.String getName()>();	i0 = virtualinvoke r2.<java.lang.String: int hashCode()>();	$r4 = r3.<com.google.javascript.jscomp.UniqueIdSupplier: com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset counter>;	$r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	i1 = interfaceinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset: int add(java.lang.Object,int)>($r5, 1);	if i0 >= 0 goto $r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (int)>(i0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001");	$r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (int)>(i0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001");	$r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,int)>($r7, i1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001$\u0001");	return $r6
;block_num 3
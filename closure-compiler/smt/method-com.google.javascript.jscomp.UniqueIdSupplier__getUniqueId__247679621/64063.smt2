(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3898 0)
(declare-sort var2721 0)
(declare-sort var1614 0)
(declare-sort var2035 0)
(declare-sort var3721 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceFile/-782247188 (var2721) var1614)
(declare-fun getName/-2142232167 (var1614) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun counter/-1408931755 (var3898) var2035)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var2035_add/-2011586882 (var2035 var3721 Int) Int)
(declare-fun cast-from-Int-to-var3721 (Int) var3721)
(declare-fun cast-from-Int-to-String (Int) String)
(declare-const null-var3898 var3898)
(declare-const null-var2721 var2721)
(declare-const var3715 var3898) ; Statement: r3 := @this: com.google.javascript.jscomp.UniqueIdSupplier 
(assert (not (= var3715 null-var3898)))
(declare-const var2757 var2721) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.CompilerInput 
(assert (not (= var2757 null-var2721)))
(assert true)
(define-const var1179 var1614 (getSourceFile/-782247188 var2757)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.CompilerInput: com.google.javascript.jscomp.SourceFile getSourceFile()>() 
(assert true)
(define-const var2251 String (getName/-2142232167 var1179)) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.jscomp.SourceFile: java.lang.String getName()>() 
(assert true)
(define-const var270 Int (hashCode/-467973558 var2251)) ; Statement: i0 = virtualinvoke r2.<java.lang.String: int hashCode()>() 
(define-const var2436 var2035 (counter/-1408931755 var3715)) ; Statement: $r4 = r3.<com.google.javascript.jscomp.UniqueIdSupplier: com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset counter> 
(define-const var1160 Int (Int_valueOf/-1371140006 var270)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var1658 Int (var2035_add/-2011586882 var2436 (cast-from-Int-to-var3721 var1160) 1)) ; Statement: i1 = interfaceinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset: int add(java.lang.Object,int)>($r5, 1) 
 ; Statement: if i0 >= 0 goto $r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (int)>(i0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001") 
(assert (not (>= var270 0))) ; Negate: Cond: i0 >= 0  
(define-const var3733 Int (- var270)) ; Statement: $i2 = neg i0 
(define-const var2513 String (str.++ "m\u0001" (cast-from-Int-to-String var3733))) ; Statement: $r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (int)>($i2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("m\u0001") 
 ; Statement: goto [?= $r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,int)>($r7, i1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001$\u0001")] 
(assert true) ; Non Conditional
(define-const var2326 String (str.++ "\u0001$\u0001" var2513 (cast-from-Int-to-String var1658))) ; Statement: $r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,int)>($r7, i1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001$\u0001") 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceFile/-782247188=([com.google.javascript.jscomp.CompilerInput], com.google.javascript.jscomp.SourceFile), getName/-2142232167=([com.google.javascript.jscomp.SourceFile], java.lang.String), hashCode/-467973558=([java.lang.String], int), counter/-1408931755=([com.google.javascript.jscomp.UniqueIdSupplier], com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset), Int_valueOf/-1371140006=([int], java.lang.Integer), var2035_add/-2011586882=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset, java.lang.Object, int], int), cast-from-Int-to-var3721=([java.lang.Integer], java.lang.Object), cast-from-Int-to-String=([int], java.lang.String)}
; {var3898=com.google.javascript.jscomp.UniqueIdSupplier, var3715=r3, var2721=com.google.javascript.jscomp.CompilerInput, var2757=r0, var1614=com.google.javascript.jscomp.SourceFile, var1179=$r1, var2251=r2, var270=i0, var2035=com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset, var2436=$r4, var1160=$r5, var3721=java.lang.Object, var1658=i1, var3733=$i2, var2513=$r7, var2326=$r6}
; {com.google.javascript.jscomp.UniqueIdSupplier=var3898, r3=var3715, com.google.javascript.jscomp.CompilerInput=var2721, r0=var2757, com.google.javascript.jscomp.SourceFile=var1614, $r1=var1179, r2=var2251, i0=var270, com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset=var2035, $r4=var2436, $r5=var1160, java.lang.Object=var3721, i1=var1658, $i2=var3733, $r7=var2513, $r6=var2326}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.UniqueIdSupplier;	r0 := @parameter0: com.google.javascript.jscomp.CompilerInput;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.CompilerInput: com.google.javascript.jscomp.SourceFile getSourceFile()>();	r2 = virtualinvoke $r1.<com.google.javascript.jscomp.SourceFile: java.lang.String getName()>();	i0 = virtualinvoke r2.<java.lang.String: int hashCode()>();	$r4 = r3.<com.google.javascript.jscomp.UniqueIdSupplier: com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset counter>;	$r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	i1 = interfaceinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset: int add(java.lang.Object,int)>($r5, 1);	if i0 >= 0 goto $r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (int)>(i0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001");	$i2 = neg i0;	$r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (int)>($i2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("m\u0001");	goto [?= $r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,int)>($r7, i1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001$\u0001")];	$r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,int)>($r7, i1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001$\u0001");	return $r6
;block_num 3
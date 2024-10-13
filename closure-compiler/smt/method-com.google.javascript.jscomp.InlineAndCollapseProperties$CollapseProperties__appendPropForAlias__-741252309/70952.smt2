(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2183 0)
(declare-sort var1226 0)
(declare-sort var3243 0)
(declare-sort var1540 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun nameMap/303988291 (var2183) var3243)
(declare-fun var3243_containsKey/1715618542 (var3243 var1540) Bool)
(declare-fun cast-from-String-to-var1540 (String) var1540)
(declare-const null-var2183 var2183)
(declare-const null-String String)
(declare-const var2898 var2183) ; Statement: r1 := @this: com.google.javascript.jscomp.InlineAndCollapseProperties$CollapseProperties 
(assert (not (= var2898 null-var2183)))
(declare-const var3733 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3733 null-String)))
(declare-const var3803 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3803 null-String)))
(assert true)
(define-const var2323 Int (indexOf/-1037706067 var3803 36)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int indexOf(int)>(36) 
(define-const var1469 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if $i0 == $i3 goto r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r0, r2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001$\u0001") 
(assert (= var2323 var1469)) ; Cond: $i0 == $i3 
(define-const var660 String (str.++ "\u0001$\u0001" var3733 var3803)) ; Statement: r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r0, r2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001$\u0001") 
(define-const var1142 Int 1) ; Statement: i1 = 1 
(assert true) ; Non Conditional
(define-const var1418 var3243 (nameMap/303988291 var2898)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.InlineAndCollapseProperties$CollapseProperties: java.util.Map nameMap> 
(define-const var983 Bool (var3243_containsKey/1715618542 var1418 (cast-from-String-to-var1540 var660))) ; Statement: $z0 = interfaceinvoke $r4.<java.util.Map: boolean containsKey(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto return r3 
(assert (= (ite var983 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), nameMap/303988291=([com.google.javascript.jscomp.InlineAndCollapseProperties$CollapseProperties], java.util.Map), var3243_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-String-to-var1540=([java.lang.String], java.lang.Object)}
; {var2183=com.google.javascript.jscomp.InlineAndCollapseProperties$CollapseProperties, var2898=r1, var3733=r0, var1226=null_type, var3803=r2, var2323=$i0, var1469=$i3, var660=r3, var1142=i1, var3243=java.util.Map, var1418=$r4, var1540=java.lang.Object, var983=$z0}
; {com.google.javascript.jscomp.InlineAndCollapseProperties$CollapseProperties=var2183, r1=var2898, r0=var3733, null_type=var1226, r2=var3803, $i0=var2323, $i3=var1469, r3=var660, i1=var1142, java.util.Map=var3243, $r4=var1418, java.lang.Object=var1540, $z0=var983}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.InlineAndCollapseProperties$CollapseProperties;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	$i0 = virtualinvoke r2.<java.lang.String: int indexOf(int)>(36);	$i3 = (int) -1;	if $i0 == $i3 goto r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r0, r2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001$\u0001");	r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r0, r2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001$\u0001");	i1 = 1;	$r4 = r1.<com.google.javascript.jscomp.InlineAndCollapseProperties$CollapseProperties: java.util.Map nameMap>;	$z0 = interfaceinvoke $r4.<java.util.Map: boolean containsKey(java.lang.Object)>(r3);	if $z0 == 0 goto return r3;	return r3
;block_num 4
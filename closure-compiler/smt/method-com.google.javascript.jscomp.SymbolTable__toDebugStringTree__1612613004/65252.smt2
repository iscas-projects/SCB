(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2063 0)
(declare-sort var701 0)
(declare-sort var442 0)
(declare-sort var1642 0)
(declare-sort var2768 0)
(declare-sort var670 0)
(declare-sort var3212 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2768) String)
(declare-fun cast-from-var442-to-var2768 (var442) var2768)
(declare-fun ownSymbols/907401393 (var442) var670)
(declare-fun var670_isEmpty/-1655013448 (var670) Bool)
(declare-fun containsKey/-968586905 (var3212 var2768) Bool)
(declare-fun cast-from-var1642-to-var3212 (var1642) var3212)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var2063 var2063)
(declare-const null-String String)
(declare-const null-var442 var442)
(declare-const null-var1642 var1642)
(declare-const var2837 var2063) ; Statement: r11 := @this: com.google.javascript.jscomp.SymbolTable 
(assert (not (= var2837 null-var2063)))
(declare-const var2414 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2414 null-String)))
(declare-const var3163 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3163 null-String)))
(declare-const var3259 var442) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.SymbolTable$SymbolScope 
(assert (not (= var3259 null-var442)))
(declare-const var2671 var1642) ; Statement: r6 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap 
(assert (not (= var2671 null-var1642)))
(assert true)
(define-const var1316 String (append/672562846 var2414 var3163)) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2414!1 String)
(assert (= var2414!1 (str.++ var2414 var3163)))
(assert true)
;(assert (append/-1031950772 var1316 (cast-from-var442-to-var2768 var3259))) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1316!1 String)
(assert (str.prefixof var1316 var1316!1))
(define-const var3257 String (str.++ "\u0001    " var3163)) ; Statement: r4 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001    ") 
(define-const var1723 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var3708 var670 (ownSymbols/907401393 var3259)) ; Statement: $r5 = r2.<com.google.javascript.jscomp.SymbolTable$SymbolScope: java.util.Map ownSymbols> 
(define-const var3543 Bool (var670_isEmpty/-1655013448 var3708)) ; Statement: $z0 = interfaceinvoke $r5.<java.util.Map: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap: boolean containsKey(java.lang.Object)>(r2) 
(assert (not (= (ite var3543 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3857 Bool (containsKey/-968586905 (cast-from-var1642-to-var3212 var2671) (cast-from-var442-to-var2768 var3259))) ; Statement: $z1 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap: boolean containsKey(java.lang.Object)>(r2) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var3857 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if z4 != 0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(assert (not (= (ite var1723 1 0) 0))) ; Cond: z4 != 0 
(assert true)
;(assert (append/-1166366385 var2414!1 10)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var2414!2 String)
(assert (str.prefixof var2414!1 var2414!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var442-to-var2768=([com.google.javascript.jscomp.SymbolTable$SymbolScope], java.lang.Object), ownSymbols/907401393=([com.google.javascript.jscomp.SymbolTable$SymbolScope], java.util.Map), var670_isEmpty/-1655013448=([java.util.Map], boolean), containsKey/-968586905=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultimap, java.lang.Object], boolean), cast-from-var1642-to-var3212=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultimap), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var2063=com.google.javascript.jscomp.SymbolTable, var2837=r11, var2414=r0, var3163=r1, var701=null_type, var442=com.google.javascript.jscomp.SymbolTable$SymbolScope, var3259=r2, var1642=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap, var2671=r6, var1316=$r3, var2768=java.lang.Object, var3257=r4, var1723=z4, var670=java.util.Map, var3708=$r5, var3543=$z0, var3212=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultimap, var3857=$z1}
; {com.google.javascript.jscomp.SymbolTable=var2063, r11=var2837, r0=var2414, r1=var3163, null_type=var701, com.google.javascript.jscomp.SymbolTable$SymbolScope=var442, r2=var3259, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap=var1642, r6=var2671, $r3=var1316, java.lang.Object=var2768, r4=var3257, z4=var1723, java.util.Map=var670, $r5=var3708, $z0=var3543, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultimap=var3212, $z1=var3857}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r11 := @this: com.google.javascript.jscomp.SymbolTable;	r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: com.google.javascript.jscomp.SymbolTable$SymbolScope;	r6 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap;	$r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	r4 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001    ");	z4 = 0;	$r5 = r2.<com.google.javascript.jscomp.SymbolTable$SymbolScope: java.util.Map ownSymbols>;	$z0 = interfaceinvoke $r5.<java.util.Map: boolean isEmpty()>();	if $z0 != 0 goto $z1 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap: boolean containsKey(java.lang.Object)>(r2);	$z1 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap: boolean containsKey(java.lang.Object)>(r2);	if $z1 == 0 goto (branch);	if z4 != 0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	return
;block_num 4
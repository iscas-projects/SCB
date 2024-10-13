(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1043 0)
(declare-sort var583 0)
(declare-sort var2192 0)
(declare-sort var2732 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun unwarrantedOptimismHandlers/2093227389 (var1043) var583)
(declare-fun var2192-init () var2192)
(declare-fun <init>/-201242697 (var2192) void)
(declare-fun var583_push/-2122494828 (var583 var2732) void)
(declare-fun cast-from-var2192-to-var2732 (var2192) var2732)
(declare-fun slotTypesDescriptors/2093227389 (var1043) var583)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun cast-from-String-to-var2732 (String) var2732)
(declare-const null-var1043 var1043)
(declare-const var3253 var1043) ; Statement: r0 := @this: jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext 
(assert (not (= var3253 null-var1043)))
(define-const var3211 var583 (unwarrantedOptimismHandlers/2093227389 var3253)) ; Statement: $r2 = r0.<jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext: java.util.Deque unwarrantedOptimismHandlers> 
(define-const var2445 var2192 var2192-init) ; Statement: $r1 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var2445)) ; Statement: specialinvoke $r1.<java.util.HashMap: void <init>()>() 

(declare-const var2445!1 var2192)
;(assert (var583_push/-2122494828 var3211 (cast-from-var2192-to-var2732 var2445!1))) ; Statement: interfaceinvoke $r2.<java.util.Deque: void push(java.lang.Object)>($r1) 

(declare-const var3211!1 var583)
(declare-const var2445!2 var2192)
(define-const var1562 var583 (slotTypesDescriptors/2093227389 var3253)) ; Statement: $r4 = r0.<jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext: java.util.Deque slotTypesDescriptors> 
(define-const var1679 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1679)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1679!1 String)
(assert (= var1679!1 ""))
;(assert (var583_push/-2122494828 var1562 (cast-from-String-to-var2732 var1679!1))) ; Statement: interfaceinvoke $r4.<java.util.Deque: void push(java.lang.Object)>($r3) 

(declare-const var1562!1 var583)
(declare-const var1679!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {unwarrantedOptimismHandlers/2093227389=([jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext], java.util.Deque), var2192-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), var583_push/-2122494828=([java.util.Deque, java.lang.Object], void), cast-from-var2192-to-var2732=([java.util.HashMap], java.lang.Object), slotTypesDescriptors/2093227389=([jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext], java.util.Deque), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), cast-from-String-to-var2732=([java.lang.StringBuilder], java.lang.Object)}
; {var1043=jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext, var3253=r0, var583=java.util.Deque, var3211=$r2, var2192=java.util.HashMap, var2445=$r1, var2732=java.lang.Object, var1562=$r4, var1679=$r3}
; {jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext=var1043, r0=var3253, java.util.Deque=var583, $r2=var3211, java.util.HashMap=var2192, $r1=var2445, java.lang.Object=var2732, $r4=var1562, $r3=var1679}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext;	$r2 = r0.<jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext: java.util.Deque unwarrantedOptimismHandlers>;	$r1 = new java.util.HashMap;	specialinvoke $r1.<java.util.HashMap: void <init>()>();	interfaceinvoke $r2.<java.util.Deque: void push(java.lang.Object)>($r1);	$r4 = r0.<jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext: java.util.Deque slotTypesDescriptors>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	interfaceinvoke $r4.<java.util.Deque: void push(java.lang.Object)>($r3);	return
;block_num 1
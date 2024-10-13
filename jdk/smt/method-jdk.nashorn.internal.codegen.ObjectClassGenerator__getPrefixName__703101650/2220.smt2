(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3534 0)
(declare-sort var2446 0)
(declare-sort var386 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun symbolName/-133345059 (var2446) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var386_getPrefixName/234183653 (Bool) String)
(declare-const null-String String)
(declare-const var2446-JS_OBJECT_DUAL_FIELD_PREFIX var2446)
(declare-const var2936 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2936 null-String)))
(define-const var2242 var2446 var2446-JS_OBJECT_DUAL_FIELD_PREFIX) ; Statement: $r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants JS_OBJECT_DUAL_FIELD_PREFIX> 
(assert true)
(define-const var3740 String (symbolName/-133345059 var2242)) ; Statement: $r2 = virtualinvoke $r1.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>() 
(assert true)
(define-const var3409 Bool (startsWith/-1785782452 var2936 var3740)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r2) 
 ; Statement: if $z0 == 0 goto $r3 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants JS_OBJECT_SINGLE_FIELD_PREFIX> 
(assert (not (= (ite var3409 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1896 String (var386_getPrefixName/234183653 (ite (= 1 1) true false))) ; Statement: $r11 = staticinvoke <jdk.nashorn.internal.codegen.ObjectClassGenerator: java.lang.String getPrefixName(boolean)>(1) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {symbolName/-133345059=([jdk.nashorn.internal.codegen.CompilerConstants], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var386_getPrefixName/234183653=([boolean], java.lang.String)}
; {var2936=r0, var3534=null_type, var2446=jdk.nashorn.internal.codegen.CompilerConstants, var2242=$r1, var3740=$r2, var3409=$z0, var386=jdk.nashorn.internal.codegen.ObjectClassGenerator, var1896=$r11}
; {r0=var2936, null_type=var3534, jdk.nashorn.internal.codegen.CompilerConstants=var2446, $r1=var2242, $r2=var3740, $z0=var3409, jdk.nashorn.internal.codegen.ObjectClassGenerator=var386, $r11=var1896}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants JS_OBJECT_DUAL_FIELD_PREFIX>;	$r2 = virtualinvoke $r1.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r2);	if $z0 == 0 goto $r3 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants JS_OBJECT_SINGLE_FIELD_PREFIX>;	$r11 = staticinvoke <jdk.nashorn.internal.codegen.ObjectClassGenerator: java.lang.String getPrefixName(boolean)>(1);	return $r11
;block_num 2
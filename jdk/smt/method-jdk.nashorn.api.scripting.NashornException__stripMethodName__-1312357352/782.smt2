(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2406 0)
(declare-sort var3245 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun symbolName/-133345059 (var3245) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const var3245-NESTED_FUNCTION_SEPARATOR var3245)
(declare-const var3245-ID_FUNCTION_SEPARATOR var3245)
(declare-const var3245-ANON_FUNCTION_PREFIX var3245)
(declare-const var879 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var879 null-String)))
(define-const var2779 String var879) ; Statement: r7 = r0 
(define-const var652 var3245 var3245-NESTED_FUNCTION_SEPARATOR) ; Statement: $r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants NESTED_FUNCTION_SEPARATOR> 
(assert true)
(define-const var2908 String (symbolName/-133345059 var652)) ; Statement: $r2 = virtualinvoke $r1.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>() 
(assert true)
(define-const var810 Int (lastIndexOf/-618837785 var879 var2908)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>($r2) 
 ; Statement: if i0 < 0 goto $r3 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants ID_FUNCTION_SEPARATOR> 
(assert (< var810 0)) ; Cond: i0 < 0 
(define-const var1076 var3245 var3245-ID_FUNCTION_SEPARATOR) ; Statement: $r3 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants ID_FUNCTION_SEPARATOR> 
(assert true)
(define-const var1748 String (symbolName/-133345059 var1076)) ; Statement: $r4 = virtualinvoke $r3.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>() 
(assert true)
(define-const var1074 Int (indexOf/-1209756239 var2779 var1748)) ; Statement: $i2 = virtualinvoke r7.<java.lang.String: int indexOf(java.lang.String)>($r4) 
 ; Statement: if $i2 < 0 goto $r5 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants ANON_FUNCTION_PREFIX> 
(assert (< var1074 0)) ; Cond: $i2 < 0 
(define-const var2468 var3245 var3245-ANON_FUNCTION_PREFIX) ; Statement: $r5 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants ANON_FUNCTION_PREFIX> 
(assert true)
(define-const var68 String (symbolName/-133345059 var2468)) ; Statement: $r6 = virtualinvoke $r5.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>() 
(assert true)
(define-const var224 Bool (contains/1009244746 var2779 (cast-from-String-to-String var68))) ; Statement: $z0 = virtualinvoke r7.<java.lang.String: boolean contains(java.lang.CharSequence)>($r6) 
 ; Statement: if $z0 == 0 goto $r8 = r7 
(assert (not (= (ite var224 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3604 String "<anonymous>") ; Statement: $r8 = "<anonymous>" 
 ; Statement: goto [?= return $r8] 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {symbolName/-133345059=([jdk.nashorn.internal.codegen.CompilerConstants], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), indexOf/-1209756239=([java.lang.String, java.lang.String], int), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var879=r0, var2406=null_type, var2779=r7, var3245=jdk.nashorn.internal.codegen.CompilerConstants, var652=$r1, var2908=$r2, var810=i0, var1076=$r3, var1748=$r4, var1074=$i2, var2468=$r5, var68=$r6, var224=$z0, var3604=$r8}
; {r0=var879, null_type=var2406, r7=var2779, jdk.nashorn.internal.codegen.CompilerConstants=var3245, $r1=var652, $r2=var2908, i0=var810, $r3=var1076, $r4=var1748, $i2=var1074, $r5=var2468, $r6=var68, $z0=var224, $r8=var3604}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r7 = r0;	$r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants NESTED_FUNCTION_SEPARATOR>;	$r2 = virtualinvoke $r1.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>();	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>($r2);	if i0 < 0 goto $r3 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants ID_FUNCTION_SEPARATOR>;	$r3 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants ID_FUNCTION_SEPARATOR>;	$r4 = virtualinvoke $r3.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>();	$i2 = virtualinvoke r7.<java.lang.String: int indexOf(java.lang.String)>($r4);	if $i2 < 0 goto $r5 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants ANON_FUNCTION_PREFIX>;	$r5 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants ANON_FUNCTION_PREFIX>;	$r6 = virtualinvoke $r5.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>();	$z0 = virtualinvoke r7.<java.lang.String: boolean contains(java.lang.CharSequence)>($r6);	if $z0 == 0 goto $r8 = r7;	$r8 = "<anonymous>";	goto [?= return $r8];	return $r8
;block_num 5
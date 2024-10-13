(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1726 0)
(declare-sort var342 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun symbolName/-133345059 (var342) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const var342-NESTED_FUNCTION_SEPARATOR var342)
(declare-const var342-ID_FUNCTION_SEPARATOR var342)
(declare-const var342-ANON_FUNCTION_PREFIX var342)
(declare-const var2374 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2374 null-String)))
(define-const var3324 String var2374) ; Statement: r7 = r0 
(define-const var309 var342 var342-NESTED_FUNCTION_SEPARATOR) ; Statement: $r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants NESTED_FUNCTION_SEPARATOR> 
(assert true)
(define-const var903 String (symbolName/-133345059 var309)) ; Statement: $r2 = virtualinvoke $r1.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>() 
(assert true)
(define-const var1989 Int (lastIndexOf/-618837785 var2374 var903)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>($r2) 
 ; Statement: if i0 < 0 goto $r3 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants ID_FUNCTION_SEPARATOR> 
(assert (< var1989 0)) ; Cond: i0 < 0 
(define-const var2238 var342 var342-ID_FUNCTION_SEPARATOR) ; Statement: $r3 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants ID_FUNCTION_SEPARATOR> 
(assert true)
(define-const var2147 String (symbolName/-133345059 var2238)) ; Statement: $r4 = virtualinvoke $r3.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>() 
(assert true)
(define-const var3053 Int (indexOf/-1209756239 var3324 var2147)) ; Statement: $i2 = virtualinvoke r7.<java.lang.String: int indexOf(java.lang.String)>($r4) 
 ; Statement: if $i2 < 0 goto $r5 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants ANON_FUNCTION_PREFIX> 
(assert (< var3053 0)) ; Cond: $i2 < 0 
(define-const var2272 var342 var342-ANON_FUNCTION_PREFIX) ; Statement: $r5 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants ANON_FUNCTION_PREFIX> 
(assert true)
(define-const var2404 String (symbolName/-133345059 var2272)) ; Statement: $r6 = virtualinvoke $r5.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>() 
(assert true)
(define-const var1081 Bool (contains/1009244746 var3324 (cast-from-String-to-String var2404))) ; Statement: $z0 = virtualinvoke r7.<java.lang.String: boolean contains(java.lang.CharSequence)>($r6) 
 ; Statement: if $z0 == 0 goto $r8 = r7 
(assert (= (ite var1081 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1944 String var3324) ; Statement: $r8 = r7 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {symbolName/-133345059=([jdk.nashorn.internal.codegen.CompilerConstants], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), indexOf/-1209756239=([java.lang.String, java.lang.String], int), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var2374=r0, var1726=null_type, var3324=r7, var342=jdk.nashorn.internal.codegen.CompilerConstants, var309=$r1, var903=$r2, var1989=i0, var2238=$r3, var2147=$r4, var3053=$i2, var2272=$r5, var2404=$r6, var1081=$z0, var1944=$r8}
; {r0=var2374, null_type=var1726, r7=var3324, jdk.nashorn.internal.codegen.CompilerConstants=var342, $r1=var309, $r2=var903, i0=var1989, $r3=var2238, $r4=var2147, $i2=var3053, $r5=var2272, $r6=var2404, $z0=var1081, $r8=var1944}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r7 = r0;	$r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants NESTED_FUNCTION_SEPARATOR>;	$r2 = virtualinvoke $r1.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>();	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>($r2);	if i0 < 0 goto $r3 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants ID_FUNCTION_SEPARATOR>;	$r3 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants ID_FUNCTION_SEPARATOR>;	$r4 = virtualinvoke $r3.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>();	$i2 = virtualinvoke r7.<java.lang.String: int indexOf(java.lang.String)>($r4);	if $i2 < 0 goto $r5 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants ANON_FUNCTION_PREFIX>;	$r5 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants ANON_FUNCTION_PREFIX>;	$r6 = virtualinvoke $r5.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>();	$z0 = virtualinvoke r7.<java.lang.String: boolean contains(java.lang.CharSequence)>($r6);	if $z0 == 0 goto $r8 = r7;	$r8 = r7;	return $r8
;block_num 5
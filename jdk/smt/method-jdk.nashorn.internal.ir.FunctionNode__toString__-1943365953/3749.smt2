(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1792 0)
(declare-sort var432 0)
(declare-sort var954 0)
(declare-sort var2309 0)
(declare-sort var352 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun returnType/2138424918 (var1792) var432)
(declare-fun append/-1031950772 (String var954) String)
(declare-fun cast-from-var432-to-var954 (var432) var954)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ident/2138424918 (var1792) var2309)
(declare-fun parameters/2138424918 (var1792) var352)
(declare-fun var352_iterator/-912451715 (var352) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var1792 var1792)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2309 var2309)
(declare-const var1290 var1792) ; Statement: r1 := @this: jdk.nashorn.internal.ir.FunctionNode 
(assert (not (= var1290 null-var1792)))
(declare-const var2633 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2633 null-String)))
(declare-const var727 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var727 null-Bool)))
(assert true)
(define-const var2524 String (append/-1166366385 var2633 91)) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var2633!1 String)
(assert (str.prefixof var2633 var2633!1))
(define-const var1080 var432 (returnType/2138424918 var1290)) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.codegen.types.Type returnType> 
(assert true)
(define-const var3899 String (append/-1031950772 var2524 (cast-from-var432-to-var954 var1080))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2524!1 String)
(assert (str.prefixof var2524 var2524!1))
(assert true)
(define-const var1150 String (append/-1166366385 var3899 93)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var3899!1 String)
(assert (str.prefixof var3899 var3899!1))
(assert true)
;(assert (append/-1166366385 var1150 32)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1150!1 String)
(assert (str.prefixof var1150 var1150!1))
(assert true)
;(assert (append/672562846 var2633!1 "function")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("function") 
(declare-const var2633!2 String)
(assert (= var2633!2 (str.++ var2633!1 "function")))
(define-const var65 var2309 (ident/2138424918 var1290)) ; Statement: $r6 = r1.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.ir.IdentNode ident> 
 ; Statement: if $r6 == null goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(assert (= var65 null-var2309)) ; Cond: $r6 == null 
(assert true)
;(assert (append/-1166366385 var2633!2 40)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var2633!3 String)
(assert (str.prefixof var2633!2 var2633!3))
(define-const var461 var352 (parameters/2138424918 var1290)) ; Statement: $r7 = r1.<jdk.nashorn.internal.ir.FunctionNode: java.util.List parameters> 
(define-const var1676 Iterator (var352_iterator/-912451715 var461)) ; Statement: $r16 = interfaceinvoke $r7.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3212 Bool (Iterator_hasNext/-1669924200 var1676)) ; Statement: $z2 = interfaceinvoke $r16.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= (ite var3212 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
;(assert (append/-1166366385 var2633!3 41)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2633!4 String)
(assert (str.prefixof var2633!3 var2633!4))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), returnType/2138424918=([jdk.nashorn.internal.ir.FunctionNode], jdk.nashorn.internal.codegen.types.Type), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var432-to-var954=([jdk.nashorn.internal.codegen.types.Type], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), ident/2138424918=([jdk.nashorn.internal.ir.FunctionNode], jdk.nashorn.internal.ir.IdentNode), parameters/2138424918=([jdk.nashorn.internal.ir.FunctionNode], java.util.List), var352_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var1792=jdk.nashorn.internal.ir.FunctionNode, var1290=r1, var2633=r0, var727=z0, var2524=$r3, var432=jdk.nashorn.internal.codegen.types.Type, var1080=$r2, var954=java.lang.Object, var3899=$r4, var1150=$r5, var2309=jdk.nashorn.internal.ir.IdentNode, var65=$r6, var352=java.util.List, var461=$r7, var1676=$r16, var3212=$z2}
; {jdk.nashorn.internal.ir.FunctionNode=var1792, r1=var1290, r0=var2633, z0=var727, $r3=var2524, jdk.nashorn.internal.codegen.types.Type=var432, $r2=var1080, java.lang.Object=var954, $r4=var3899, $r5=var1150, jdk.nashorn.internal.ir.IdentNode=var2309, $r6=var65, java.util.List=var352, $r7=var461, $r16=var1676, $z2=var3212}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.FunctionNode;	r0 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	$r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r2 = r1.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.codegen.types.Type returnType>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("function");	$r6 = r1.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.ir.IdentNode ident>;	if $r6 == null goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r7 = r1.<jdk.nashorn.internal.ir.FunctionNode: java.util.List parameters>;	$r16 = interfaceinvoke $r7.<java.util.List: java.util.Iterator iterator()>();	$z2 = interfaceinvoke $r16.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	return
;block_num 4
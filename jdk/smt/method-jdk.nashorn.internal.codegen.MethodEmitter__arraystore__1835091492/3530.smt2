(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2542 0)
(declare-sort var1122 0)
(declare-sort var2241 0)
(declare-sort var3822 0)
(declare-sort var2699 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun debug/546773504 (var2542 String) void)
(declare-fun popType/-331407158 (var2542) var1122)
(declare-fun popType/794176643 (var2542 var1122) var1122)
(declare-fun cast-from-var2241-to-var1122 (var2241) var1122)
(declare-fun isInteger/-1529987698 (var1122) Bool)
(declare-fun var3822-init () var3822)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2699) String)
(declare-fun cast-from-var1122-to-var2699 (var1122) var2699)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var3822 var2699) void)
(declare-fun cast-from-String-to-var2699 (String) var2699)
(declare-const null-var2542 var2542)
(declare-const var1122-INT var2241)
(declare-const var2542-$assertionsDisabled Bool)
(declare-const var929 var2542) ; Statement: r0 := @this: jdk.nashorn.internal.codegen.MethodEmitter 
(assert (not (= var929 null-var2542)))
(assert true)
;(assert (debug/546773504 var929 "Xastore")) ; Statement: specialinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: void debug(java.lang.String)>("Xastore") 

(declare-const var929!1 var2542)
(declare-const var2379 String)
(assert true)
(define-const var2367 var1122 (popType/-331407158 var929!1)) ; Statement: r1 = specialinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.types.Type popType()>() 
(define-const var2712 var2241 var1122-INT) ; Statement: $r2 = <jdk.nashorn.internal.codegen.types.Type: jdk.nashorn.internal.codegen.types.BitwiseType INT> 
(assert true)
(define-const var3548 var1122 (popType/794176643 var929!1 (cast-from-var2241-to-var1122 var2712))) ; Statement: r3 = specialinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.types.Type popType(jdk.nashorn.internal.codegen.types.Type)>($r2) 
(define-const var1908 Bool var2542-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.codegen.MethodEmitter: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r14 = specialinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.types.ArrayType popArray()>() 
(assert (not (not (= (ite var1908 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var1417 Bool (isInteger/-1529987698 var3548)) ; Statement: $z5 = virtualinvoke r3.<jdk.nashorn.internal.codegen.types.Type: boolean isInteger()>() 
 ; Statement: if $z5 != 0 goto $r14 = specialinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.types.ArrayType popArray()>() 
(assert (not (not (= (ite var1417 1 0) 0)))) ; Negate: Cond: $z5 != 0  
(define-const var2440 var3822 var3822-init) ; Statement: $r15 = new java.lang.AssertionError 
(define-const var2998 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2998)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2998!1 String)
(assert (= var2998!1 ""))
(assert true)
(define-const var172 String (append/672562846 var2998!1 "array index is not integer, but ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("array index is not integer, but ") 
(declare-const var2998!2 String)
(assert (= var2998!2 (str.++ var2998!1 "array index is not integer, but ")))
(assert true)
(define-const var3670 String (append/-1031950772 var172 (cast-from-var1122-to-var2699 var3548))) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var172!1 String)
(assert (str.prefixof var172 var172!1))
(assert true)
(define-const var1430 String (toString/-2075883882 var3670)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var2440 (cast-from-String-to-var2699 var1430))) ; Statement: specialinvoke $r15.<java.lang.AssertionError: void <init>(java.lang.Object)>($r19) 

(declare-const var2440!1 var3822)
(declare-const var1430!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {debug/546773504=([jdk.nashorn.internal.codegen.MethodEmitter, java.lang.String], void), popType/-331407158=([jdk.nashorn.internal.codegen.MethodEmitter], jdk.nashorn.internal.codegen.types.Type), popType/794176643=([jdk.nashorn.internal.codegen.MethodEmitter, jdk.nashorn.internal.codegen.types.Type], jdk.nashorn.internal.codegen.types.Type), cast-from-var2241-to-var1122=([jdk.nashorn.internal.codegen.types.BitwiseType], jdk.nashorn.internal.codegen.types.Type), isInteger/-1529987698=([jdk.nashorn.internal.codegen.types.Type], boolean), var3822-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1122-to-var2699=([jdk.nashorn.internal.codegen.types.Type], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var2699=([java.lang.String], java.lang.Object)}
; {var2542=jdk.nashorn.internal.codegen.MethodEmitter, var929=r0, var2379="Xastore", var1122=jdk.nashorn.internal.codegen.types.Type, var2367=r1, var2241=jdk.nashorn.internal.codegen.types.BitwiseType, var2712=$r2, var3548=r3, var1908=$z0, var1417=$z5, var3822=java.lang.AssertionError, var2440=$r15, var2998=$r16, var172=$r17, var2699=java.lang.Object, var3670=$r18, var1430=$r19}
; {jdk.nashorn.internal.codegen.MethodEmitter=var2542, r0=var929, "Xastore"=var2379, jdk.nashorn.internal.codegen.types.Type=var1122, r1=var2367, jdk.nashorn.internal.codegen.types.BitwiseType=var2241, $r2=var2712, r3=var3548, $z0=var1908, $z5=var1417, java.lang.AssertionError=var3822, $r15=var2440, $r16=var2998, $r17=var172, java.lang.Object=var2699, $r18=var3670, $r19=var1430}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.codegen.MethodEmitter;	specialinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: void debug(java.lang.String)>("Xastore");	r1 = specialinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.types.Type popType()>();	$r2 = <jdk.nashorn.internal.codegen.types.Type: jdk.nashorn.internal.codegen.types.BitwiseType INT>;	r3 = specialinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.types.Type popType(jdk.nashorn.internal.codegen.types.Type)>($r2);	$z0 = <jdk.nashorn.internal.codegen.MethodEmitter: boolean $assertionsDisabled>;	if $z0 != 0 goto $r14 = specialinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.types.ArrayType popArray()>();	$z5 = virtualinvoke r3.<jdk.nashorn.internal.codegen.types.Type: boolean isInteger()>();	if $z5 != 0 goto $r14 = specialinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.types.ArrayType popArray()>();	$r15 = new java.lang.AssertionError;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("array index is not integer, but ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<java.lang.AssertionError: void <init>(java.lang.Object)>($r19);	throw $r15
;block_num 3
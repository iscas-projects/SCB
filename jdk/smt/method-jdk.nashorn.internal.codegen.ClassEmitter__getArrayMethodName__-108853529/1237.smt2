(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1796 0)
(declare-sort var1946 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun symbolName/-133345059 (var1946) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getComponentType/1960034130 (ClassObject) ClassObject)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-ClassObject ClassObject)
(declare-const var1796-$assertionsDisabled Bool)
(declare-const var1946-GET_ARRAY_PREFIX var1946)
(declare-const var1946-GET_ARRAY_SUFFIX var1946)
(declare-const var2357 ClassObject) ; Statement: r3 := @parameter0: java.lang.Class 
(assert (not (= var2357 null-ClassObject)))
(define-const var2567 Bool var1796-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.codegen.ClassEmitter: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r0 = new java.lang.StringBuilder 
(assert (not (= (ite var2567 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3311 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3311)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3311!1 String)
(assert (= var3311!1 ""))
(define-const var2754 var1946 var1946-GET_ARRAY_PREFIX) ; Statement: $r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants GET_ARRAY_PREFIX> 
(assert true)
(define-const var2909 String (symbolName/-133345059 var2754)) ; Statement: $r2 = virtualinvoke $r1.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>() 
(assert true)
(define-const var1917 String (append/672562846 var3311!1 var2909)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3311!2 String)
(assert (= var3311!2 (str.++ var3311!1 var2909)))
(assert true)
(define-const var1586 ClassObject (getComponentType/1960034130 var2357)) ; Statement: $r4 = virtualinvoke r3.<java.lang.Class: java.lang.Class getComponentType()>() 
(assert true)
(define-const var695 String (getSimpleName/-390194377 var1586)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var744 String (append/672562846 var1917 var695)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1917!1 String)
(assert (= var1917!1 (str.++ var1917 var695)))
(define-const var1414 var1946 var1946-GET_ARRAY_SUFFIX) ; Statement: $r7 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants GET_ARRAY_SUFFIX> 
(assert true)
(define-const var3186 String (symbolName/-133345059 var1414)) ; Statement: $r8 = virtualinvoke $r7.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>() 
(assert true)
(define-const var3485 String (append/672562846 var744 var3186)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var744!1 String)
(assert (= var744!1 (str.++ var744 var3186)))
(assert true)
(define-const var203 String (toString/-2075883882 var3485)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), symbolName/-133345059=([jdk.nashorn.internal.codegen.CompilerConstants], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getComponentType/1960034130=([java.lang.Class], java.lang.Class), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2357=r3, var1796=jdk.nashorn.internal.codegen.ClassEmitter, var2567=$z0, var3311=$r0, var1946=jdk.nashorn.internal.codegen.CompilerConstants, var2754=$r1, var2909=$r2, var1917=$r6, var1586=$r4, var695=$r5, var744=$r9, var1414=$r7, var3186=$r8, var3485=$r10, var203=$r11}
; {r3=var2357, jdk.nashorn.internal.codegen.ClassEmitter=var1796, $z0=var2567, $r0=var3311, jdk.nashorn.internal.codegen.CompilerConstants=var1946, $r1=var2754, $r2=var2909, $r6=var1917, $r4=var1586, $r5=var695, $r9=var744, $r7=var1414, $r8=var3186, $r10=var3485, $r11=var203}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.lang.Class;	$z0 = <jdk.nashorn.internal.codegen.ClassEmitter: boolean $assertionsDisabled>;	if $z0 != 0 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants GET_ARRAY_PREFIX>;	$r2 = virtualinvoke $r1.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke r3.<java.lang.Class: java.lang.Class getComponentType()>();	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getSimpleName()>();	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants GET_ARRAY_SUFFIX>;	$r8 = virtualinvoke $r7.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2328 0)
(declare-sort var3798 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2328_binaryName/-1049804392 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun symbolName/-133345059 (var3798) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const var3798-JS_OBJECT_SINGLE_FIELD_PREFIX var3798)
(declare-const var3798-JS_OBJECT_DUAL_FIELD_PREFIX var3798)
(define-const var1359 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1359)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1359!1 String)
(assert (= var1359!1 ""))
(define-const var3396 String (var2328_binaryName/-1049804392 "jdk/nashorn/internal/scripts")) ; Statement: $r1 = staticinvoke <jdk.nashorn.internal.codegen.Compiler: java.lang.String binaryName(java.lang.String)>("jdk/nashorn/internal/scripts") 
(assert true)
(define-const var2990 String (append/672562846 var1359!1 var3396)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var1359!2 String)
(assert (= var1359!2 (str.++ var1359!1 var3396)))
(assert true)
(define-const var349 String (append/-1166366385 var2990 46)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var2990!1 String)
(assert (str.prefixof var2990 var2990!1))
(define-const var816 var3798 var3798-JS_OBJECT_SINGLE_FIELD_PREFIX) ; Statement: $r3 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants JS_OBJECT_SINGLE_FIELD_PREFIX> 
(assert true)
(define-const var2164 String (symbolName/-133345059 var816)) ; Statement: $r4 = virtualinvoke $r3.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>() 
(assert true)
(define-const var274 String (append/672562846 var349 var2164)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var349!1 String)
(assert (= var349!1 (str.++ var349 var2164)))
(assert true)
(define-const var923 String (toString/-2075883882 var274)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var131 String var923) ; Statement: <jdk.nashorn.internal.runtime.StructureLoader: java.lang.String SINGLE_FIELD_PREFIX> = $r7 
(define-const var2290 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2290)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2290!1 String)
(assert (= var2290!1 ""))
(define-const var1652 String (var2328_binaryName/-1049804392 "jdk/nashorn/internal/scripts")) ; Statement: $r9 = staticinvoke <jdk.nashorn.internal.codegen.Compiler: java.lang.String binaryName(java.lang.String)>("jdk/nashorn/internal/scripts") 
(assert true)
(define-const var1684 String (append/672562846 var2290!1 var1652)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2290!2 String)
(assert (= var2290!2 (str.++ var2290!1 var1652)))
(assert true)
(define-const var3388 String (append/-1166366385 var1684 46)) ; Statement: $r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var1684!1 String)
(assert (str.prefixof var1684 var1684!1))
(define-const var466 var3798 var3798-JS_OBJECT_DUAL_FIELD_PREFIX) ; Statement: $r11 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants JS_OBJECT_DUAL_FIELD_PREFIX> 
(assert true)
(define-const var1375 String (symbolName/-133345059 var466)) ; Statement: $r12 = virtualinvoke $r11.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>() 
(assert true)
(define-const var1586 String (append/672562846 var3388 var1375)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3388!1 String)
(assert (= var3388!1 (str.++ var3388 var1375)))
(assert true)
(define-const var1092 String (toString/-2075883882 var1586)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1366 String var1092) ; Statement: <jdk.nashorn.internal.runtime.StructureLoader: java.lang.String DUAL_FIELD_PREFIX> = $r15 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2328_binaryName/-1049804392=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), symbolName/-133345059=([jdk.nashorn.internal.codegen.CompilerConstants], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1359=$r0, var2328=jdk.nashorn.internal.codegen.Compiler, var3396=$r1, var2990=$r2, var349=$r5, var3798=jdk.nashorn.internal.codegen.CompilerConstants, var816=$r3, var2164=$r4, var274=$r6, var923=$r7, var131=<jdk.nashorn.internal.runtime.StructureLoader: java.lang.String SINGLE_FIELD_PREFIX>, var2290=$r8, var1652=$r9, var1684=$r10, var3388=$r13, var466=$r11, var1375=$r12, var1586=$r14, var1092=$r15, var1366=<jdk.nashorn.internal.runtime.StructureLoader: java.lang.String DUAL_FIELD_PREFIX>}
; {$r0=var1359, jdk.nashorn.internal.codegen.Compiler=var2328, $r1=var3396, $r2=var2990, $r5=var349, jdk.nashorn.internal.codegen.CompilerConstants=var3798, $r3=var816, $r4=var2164, $r6=var274, $r7=var923, <jdk.nashorn.internal.runtime.StructureLoader: java.lang.String SINGLE_FIELD_PREFIX>=var131, $r8=var2290, $r9=var1652, $r10=var1684, $r13=var3388, $r11=var466, $r12=var1375, $r14=var1586, $r15=var1092, <jdk.nashorn.internal.runtime.StructureLoader: java.lang.String DUAL_FIELD_PREFIX>=var1366}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts $r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = staticinvoke <jdk.nashorn.internal.codegen.Compiler: java.lang.String binaryName(java.lang.String)>("jdk/nashorn/internal/scripts");	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r3 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants JS_OBJECT_SINGLE_FIELD_PREFIX>;	$r4 = virtualinvoke $r3.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	<jdk.nashorn.internal.runtime.StructureLoader: java.lang.String SINGLE_FIELD_PREFIX> = $r7;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = staticinvoke <jdk.nashorn.internal.codegen.Compiler: java.lang.String binaryName(java.lang.String)>("jdk/nashorn/internal/scripts");	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r11 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants JS_OBJECT_DUAL_FIELD_PREFIX>;	$r12 = virtualinvoke $r11.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	<jdk.nashorn.internal.runtime.StructureLoader: java.lang.String DUAL_FIELD_PREFIX> = $r15;	return
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2038 0)
(declare-sort var1699 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun method/-1599385294 (var2038) var1699)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun invokestatic/-2029360464 (var1699 String String String) var1699)
(declare-const null-var2038 var2038)
(declare-const var2038-GLOBAL_OBJECT String)
(declare-const var2620 var2038) ; Statement: r0 := @this: jdk.nashorn.internal.codegen.CodeGenerator 
(assert (not (= var2620 null-var2038)))
(define-const var2650 var1699 (method/-1599385294 var2620)) ; Statement: $r2 = r0.<jdk.nashorn.internal.codegen.CodeGenerator: jdk.nashorn.internal.codegen.MethodEmitter method> 
(define-const var2349 String var2038-GLOBAL_OBJECT) ; Statement: $r3 = <jdk.nashorn.internal.codegen.CodeGenerator: java.lang.String GLOBAL_OBJECT> 
(define-const var1325 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1325)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1325!1 String)
(assert (= var1325!1 ""))
(assert true)
(define-const var3669 String (append/672562846 var1325!1 "()L")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()L") 
(declare-const var1325!2 String)
(assert (= var1325!2 (str.++ var1325!1 "()L")))
(define-const var3689 String var2038-GLOBAL_OBJECT) ; Statement: $r4 = <jdk.nashorn.internal.codegen.CodeGenerator: java.lang.String GLOBAL_OBJECT> 
(assert true)
(define-const var3245 String (append/672562846 var3669 var3689)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3669!1 String)
(assert (= var3669!1 (str.++ var3669 var3689)))
(assert true)
(define-const var1460 String (append/-1166366385 var3245 59)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59) 
(declare-const var3245!1 String)
(assert (str.prefixof var3245 var3245!1))
(assert true)
(define-const var2082 String (toString/-2075883882 var1460)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1527 var1699 (invokestatic/-2029360464 var2650 var2349 "instance" var2082)) ; Statement: $r9 = virtualinvoke $r2.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.MethodEmitter invokestatic(java.lang.String,java.lang.String,java.lang.String)>($r3, "instance", $r8) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {method/-1599385294=([jdk.nashorn.internal.codegen.CodeGenerator], jdk.nashorn.internal.codegen.MethodEmitter), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), invokestatic/-2029360464=([jdk.nashorn.internal.codegen.MethodEmitter, java.lang.String, java.lang.String, java.lang.String], jdk.nashorn.internal.codegen.MethodEmitter)}
; {var2038=jdk.nashorn.internal.codegen.CodeGenerator, var2620=r0, var1699=jdk.nashorn.internal.codegen.MethodEmitter, var2650=$r2, var2349=$r3, var1325=$r1, var3669=$r5, var3689=$r4, var3245=$r6, var1460=$r7, var2082=$r8, var1527=$r9}
; {jdk.nashorn.internal.codegen.CodeGenerator=var2038, r0=var2620, jdk.nashorn.internal.codegen.MethodEmitter=var1699, $r2=var2650, $r3=var2349, $r1=var1325, $r5=var3669, $r4=var3689, $r6=var3245, $r7=var1460, $r8=var2082, $r9=var1527}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.codegen.CodeGenerator;	$r2 = r0.<jdk.nashorn.internal.codegen.CodeGenerator: jdk.nashorn.internal.codegen.MethodEmitter method>;	$r3 = <jdk.nashorn.internal.codegen.CodeGenerator: java.lang.String GLOBAL_OBJECT>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()L");	$r4 = <jdk.nashorn.internal.codegen.CodeGenerator: java.lang.String GLOBAL_OBJECT>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke $r2.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.MethodEmitter invokestatic(java.lang.String,java.lang.String,java.lang.String)>($r3, "instance", $r8);	return $r9
;block_num 1
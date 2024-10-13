(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1338 0)
(declare-sort var3993 0)
(declare-sort var3778 0)
(declare-sort var3365 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun method/-1599385294 (var1338) var3778)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getDescriptor/-605257498 (var3365) String)
(declare-fun cast-from-var3993-to-var3365 (var3993) var3365)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun invokestatic/-2029360464 (var3778 String String String) var3778)
(declare-const null-var1338 var1338)
(declare-const null-var3993 var3993)
(declare-const var1338-GLOBAL_OBJECT String)
(declare-const var3966 var1338) ; Statement: r0 := @this: jdk.nashorn.internal.codegen.CodeGenerator 
(assert (not (= var3966 null-var1338)))
(declare-const var2637 var3993) ; Statement: r4 := @parameter0: jdk.nashorn.internal.codegen.types.ArrayType 
(assert (not (= var2637 null-var3993)))
(define-const var3684 var3778 (method/-1599385294 var3966)) ; Statement: $r2 = r0.<jdk.nashorn.internal.codegen.CodeGenerator: jdk.nashorn.internal.codegen.MethodEmitter method> 
(define-const var1835 String var1338-GLOBAL_OBJECT) ; Statement: $r3 = <jdk.nashorn.internal.codegen.CodeGenerator: java.lang.String GLOBAL_OBJECT> 
(define-const var3135 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3135)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3135!1 String)
(assert (= var3135!1 ""))
(assert true)
(define-const var1992 String (append/672562846 var3135!1 "(")) ; Statement: $r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3135!2 String)
(assert (= var3135!2 (str.++ var3135!1 "(")))
(assert true)
(define-const var477 String (getDescriptor/-605257498 (cast-from-var3993-to-var3365 var2637))) ; Statement: $r5 = virtualinvoke r4.<jdk.nashorn.internal.codegen.types.ArrayType: java.lang.String getDescriptor()>() 
(assert true)
(define-const var2674 String (append/672562846 var1992 var477)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1992!1 String)
(assert (= var1992!1 (str.++ var1992 var477)))
(assert true)
(define-const var3343 String (append/672562846 var2674 ")Ljdk/nashorn/internal/objects/NativeArray;")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")Ljdk/nashorn/internal/objects/NativeArray;") 
(declare-const var2674!1 String)
(assert (= var2674!1 (str.++ var2674 ")Ljdk/nashorn/internal/objects/NativeArray;")))
(assert true)
(define-const var6 String (toString/-2075883882 var3343)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2179 var3778 (invokestatic/-2029360464 var3684 var1835 "allocate" var6)) ; Statement: $r10 = virtualinvoke $r2.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.MethodEmitter invokestatic(java.lang.String,java.lang.String,java.lang.String)>($r3, "allocate", $r9) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {method/-1599385294=([jdk.nashorn.internal.codegen.CodeGenerator], jdk.nashorn.internal.codegen.MethodEmitter), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getDescriptor/-605257498=([jdk.nashorn.internal.codegen.types.Type], java.lang.String), cast-from-var3993-to-var3365=([jdk.nashorn.internal.codegen.types.ArrayType], jdk.nashorn.internal.codegen.types.Type), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), invokestatic/-2029360464=([jdk.nashorn.internal.codegen.MethodEmitter, java.lang.String, java.lang.String, java.lang.String], jdk.nashorn.internal.codegen.MethodEmitter)}
; {var1338=jdk.nashorn.internal.codegen.CodeGenerator, var3966=r0, var3993=jdk.nashorn.internal.codegen.types.ArrayType, var2637=r4, var3778=jdk.nashorn.internal.codegen.MethodEmitter, var3684=$r2, var1835=$r3, var3135=$r1, var1992=$r6, var3365=jdk.nashorn.internal.codegen.types.Type, var477=$r5, var2674=$r7, var3343=$r8, var6=$r9, var2179=$r10}
; {jdk.nashorn.internal.codegen.CodeGenerator=var1338, r0=var3966, jdk.nashorn.internal.codegen.types.ArrayType=var3993, r4=var2637, jdk.nashorn.internal.codegen.MethodEmitter=var3778, $r2=var3684, $r3=var1835, $r1=var3135, $r6=var1992, jdk.nashorn.internal.codegen.types.Type=var3365, $r5=var477, $r7=var2674, $r8=var3343, $r9=var6, $r10=var2179}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.codegen.CodeGenerator;	r4 := @parameter0: jdk.nashorn.internal.codegen.types.ArrayType;	$r2 = r0.<jdk.nashorn.internal.codegen.CodeGenerator: jdk.nashorn.internal.codegen.MethodEmitter method>;	$r3 = <jdk.nashorn.internal.codegen.CodeGenerator: java.lang.String GLOBAL_OBJECT>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r5 = virtualinvoke r4.<jdk.nashorn.internal.codegen.types.ArrayType: java.lang.String getDescriptor()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")Ljdk/nashorn/internal/objects/NativeArray;");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r2.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.MethodEmitter invokestatic(java.lang.String,java.lang.String,java.lang.String)>($r3, "allocate", $r9);	return $r10
;block_num 1
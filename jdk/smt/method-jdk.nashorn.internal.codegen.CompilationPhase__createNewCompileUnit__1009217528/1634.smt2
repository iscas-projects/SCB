(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var157 0)
(declare-sort var876 0)
(declare-sort var688 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun nextCompileUnitName/259218028 (var157) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun isRestOfCompilation/-1069990053 (var876) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun createCompileUnit/686098283 (var157 String Int) var688)
(declare-const null-var157 var157)
(declare-const null-var876 var876)
(declare-const var464 var157) ; Statement: r1 := @parameter0: jdk.nashorn.internal.codegen.Compiler 
(assert (not (= var464 null-var157)))
(declare-const var3040 var876) ; Statement: r3 := @parameter1: jdk.nashorn.internal.codegen.Compiler$CompilationPhases 
(assert (not (= var3040 null-var876)))
(define-const var3246 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var2381 String (nextCompileUnitName/259218028 var464)) ; Statement: $r2 = virtualinvoke r1.<jdk.nashorn.internal.codegen.Compiler: java.lang.String nextCompileUnitName()>() 
(assert true)
;(assert (<init>/-1061048412 var3246 var2381)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var3246!1 String)
(assert (= var3246!1 var2381))
(assert true)
(define-const var1081 Bool (isRestOfCompilation/-1069990053 var3040)) ; Statement: $z0 = virtualinvoke r3.<jdk.nashorn.internal.codegen.Compiler$CompilationPhases: boolean isRestOfCompilation()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1081 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3870 String (toString/-2075883882 var3246!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3144 var688 (createCompileUnit/686098283 var464 var3870 0)) ; Statement: $r5 = virtualinvoke r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.codegen.CompileUnit createCompileUnit(java.lang.String,long)>($r4, 0L) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), nextCompileUnitName/259218028=([jdk.nashorn.internal.codegen.Compiler], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), isRestOfCompilation/-1069990053=([jdk.nashorn.internal.codegen.Compiler$CompilationPhases], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), createCompileUnit/686098283=([jdk.nashorn.internal.codegen.Compiler, java.lang.String, long], jdk.nashorn.internal.codegen.CompileUnit)}
; {var157=jdk.nashorn.internal.codegen.Compiler, var464=r1, var876=jdk.nashorn.internal.codegen.Compiler$CompilationPhases, var3040=r3, var3246=$r0, var2381=$r2, var1081=$z0, var3870=$r4, var688=jdk.nashorn.internal.codegen.CompileUnit, var3144=$r5}
; {jdk.nashorn.internal.codegen.Compiler=var157, r1=var464, jdk.nashorn.internal.codegen.Compiler$CompilationPhases=var876, r3=var3040, $r0=var3246, $r2=var2381, $z0=var1081, $r4=var3870, jdk.nashorn.internal.codegen.CompileUnit=var688, $r5=var3144}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: jdk.nashorn.internal.codegen.Compiler;	r3 := @parameter1: jdk.nashorn.internal.codegen.Compiler$CompilationPhases;	$r0 = new java.lang.StringBuilder;	$r2 = virtualinvoke r1.<jdk.nashorn.internal.codegen.Compiler: java.lang.String nextCompileUnitName()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	$z0 = virtualinvoke r3.<jdk.nashorn.internal.codegen.Compiler$CompilationPhases: boolean isRestOfCompilation()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke r1.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.codegen.CompileUnit createCompileUnit(java.lang.String,long)>($r4, 0L);	return $r5
;block_num 2
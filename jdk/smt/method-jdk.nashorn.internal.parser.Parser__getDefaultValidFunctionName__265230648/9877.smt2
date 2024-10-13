(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3805 0)
(declare-sort var2248 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDefaultFunctionName/797047835 (var3805) String)
(declare-fun var3805_isValidIdentifier/402496070 (String) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun symbolName/-133345059 (var2248) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3805 var3805)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var2248-ANON_FUNCTION_PREFIX var2248)
(declare-const var2727 var3805) ; Statement: r0 := @this: jdk.nashorn.internal.parser.Parser 
(assert (not (= var2727 null-var3805)))
(declare-const var787 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var787 null-Int)))
(declare-const var2429 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2429 null-Bool)))
(assert true)
(define-const var210 String (getDefaultFunctionName/797047835 var2727)) ; Statement: r1 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: java.lang.String getDefaultFunctionName()>() 
(define-const var2958 Bool (var3805_isValidIdentifier/402496070 var210)) ; Statement: $z0 = staticinvoke <jdk.nashorn.internal.parser.Parser: boolean isValidIdentifier(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (= (ite var2958 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2345 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2345)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2345!1 String)
(assert (= var2345!1 ""))
(define-const var936 var2248 var2248-ANON_FUNCTION_PREFIX) ; Statement: $r3 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants ANON_FUNCTION_PREFIX> 
(assert true)
(define-const var1569 String (symbolName/-133345059 var936)) ; Statement: $r4 = virtualinvoke $r3.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>() 
(assert true)
(define-const var2826 String (append/672562846 var2345!1 var1569)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2345!2 String)
(assert (= var2345!2 (str.++ var2345!1 var1569)))
(assert true)
(define-const var3582 String (append/-1001720160 var2826 var787)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2826!1 String)
(assert (str.prefixof var2826 var2826!1))
(assert true)
(define-const var567 String (toString/-2075883882 var3582)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getDefaultFunctionName/797047835=([jdk.nashorn.internal.parser.Parser], java.lang.String), var3805_isValidIdentifier/402496070=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), symbolName/-133345059=([jdk.nashorn.internal.codegen.CompilerConstants], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3805=jdk.nashorn.internal.parser.Parser, var2727=r0, var787=i0, var2429=z1, var210=r1, var2958=$z0, var2345=$r2, var2248=jdk.nashorn.internal.codegen.CompilerConstants, var936=$r3, var1569=$r4, var2826=$r5, var3582=$r6, var567=$r7}
; {jdk.nashorn.internal.parser.Parser=var3805, r0=var2727, i0=var787, z1=var2429, r1=var210, $z0=var2958, $r2=var2345, jdk.nashorn.internal.codegen.CompilerConstants=var2248, $r3=var936, $r4=var1569, $r5=var2826, $r6=var3582, $r7=var567}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.Parser;	i0 := @parameter0: int;	z1 := @parameter1: boolean;	r1 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: java.lang.String getDefaultFunctionName()>();	$z0 = staticinvoke <jdk.nashorn.internal.parser.Parser: boolean isValidIdentifier(java.lang.String)>(r1);	if $z0 == 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants ANON_FUNCTION_PREFIX>;	$r4 = virtualinvoke $r3.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2
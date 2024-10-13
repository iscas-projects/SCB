(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3978 0)
(declare-sort var3101 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/705997996 (var3101) String)
(declare-fun cast-from-var3978-to-var3101 (var3978) var3101)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun functionNodeId/-2037575381 (var3978) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3978 var3978)
(declare-const var3843 var3978) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.RecompilableScriptFunctionData 
(assert (not (= var3843 null-var3978)))
(define-const var913 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var913)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var913!1 String)
(assert (= var913!1 ""))
(assert true)
(define-const var2645 String (toString/705997996 (cast-from-var3978-to-var3101 var3843))) ; Statement: $r2 = specialinvoke r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String toString()>() 
(assert true)
(define-const var2725 String (append/672562846 var913!1 var2645)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var913!2 String)
(assert (= var913!2 (str.++ var913!1 var2645)))
(assert true)
(define-const var1297 String (append/-1166366385 var2725 64)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(64) 
(declare-const var2725!1 String)
(assert (str.prefixof var2725 var2725!1))
(define-const var3387 Int (functionNodeId/-2037575381 var3843)) ; Statement: $i0 = r1.<jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: int functionNodeId> 
(assert true)
(define-const var1817 String (append/-1001720160 var1297 var3387)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1297!1 String)
(assert (str.prefixof var1297 var1297!1))
(assert true)
(define-const var2147 String (toString/-2075883882 var1817)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/705997996=([jdk.nashorn.internal.runtime.ScriptFunctionData], java.lang.String), cast-from-var3978-to-var3101=([jdk.nashorn.internal.runtime.RecompilableScriptFunctionData], jdk.nashorn.internal.runtime.ScriptFunctionData), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), functionNodeId/-2037575381=([jdk.nashorn.internal.runtime.RecompilableScriptFunctionData], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3978=jdk.nashorn.internal.runtime.RecompilableScriptFunctionData, var3843=r1, var913=$r0, var3101=jdk.nashorn.internal.runtime.ScriptFunctionData, var2645=$r2, var2725=$r3, var1297=$r4, var3387=$i0, var1817=$r5, var2147=$r6}
; {jdk.nashorn.internal.runtime.RecompilableScriptFunctionData=var3978, r1=var3843, $r0=var913, jdk.nashorn.internal.runtime.ScriptFunctionData=var3101, $r2=var2645, $r3=var2725, $r4=var1297, $i0=var3387, $r5=var1817, $r6=var2147}
;seq <java.lang.StringBuilder: void <init>()>;	<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.RecompilableScriptFunctionData;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(64);	$i0 = r1.<jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: int functionNodeId>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1
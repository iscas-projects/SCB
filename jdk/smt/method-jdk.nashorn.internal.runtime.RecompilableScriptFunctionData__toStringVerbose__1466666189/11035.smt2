(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var651 0)
(declare-sort var1125 0)
(declare-sort var2163 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun functionNodeId/-2037575381 (var651) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun source/-2037575381 (var651) var1125)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun toString/705997996 (var2163) String)
(declare-fun cast-from-var651-to-var2163 (var651) var2163)
(declare-const null-var651 var651)
(declare-const null-var1125 var1125)
(declare-const var854 var651) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.RecompilableScriptFunctionData 
(assert (not (= var854 null-var651)))
(define-const var859 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var859)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var859!1 String)
(assert (= var859!1 ""))
(assert true)
(define-const var534 String (append/672562846 var859!1 "fnId=")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("fnId=") 
(declare-const var859!2 String)
(assert (= var859!2 (str.++ var859!1 "fnId=")))
(define-const var1987 Int (functionNodeId/-2037575381 var854)) ; Statement: $i0 = r1.<jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: int functionNodeId> 
(assert true)
(define-const var3342 String (append/-1001720160 var534 var1987)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var534!1 String)
(assert (str.prefixof var534 var534!1))
(assert true)
;(assert (append/-1166366385 var3342 32)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3342!1 String)
(assert (str.prefixof var3342 var3342!1))
(define-const var3855 var1125 (source/-2037575381 var854)) ; Statement: $r4 = r1.<jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: jdk.nashorn.internal.runtime.Source source> 
 ; Statement: if $r4 == null goto $r5 = new java.lang.StringBuilder 
(assert (= var3855 null-var1125)) ; Cond: $r4 == null 
(define-const var269 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var269)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var269!1 String)
(assert (= var269!1 ""))
(assert true)
(define-const var3073 String (toString/-2075883882 var859!2)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1879 String (append/672562846 var269!1 var3073)) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var269!2 String)
(assert (= var269!2 (str.++ var269!1 var3073)))
(assert true)
(define-const var174 String (toString/705997996 (cast-from-var651-to-var2163 var854))) ; Statement: $r7 = specialinvoke r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String toString()>() 
(assert true)
(define-const var629 String (append/672562846 var1879 var174)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1879!1 String)
(assert (= var1879!1 (str.++ var1879 var174)))
(assert true)
(define-const var2776 String (toString/-2075883882 var629)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), functionNodeId/-2037575381=([jdk.nashorn.internal.runtime.RecompilableScriptFunctionData], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), source/-2037575381=([jdk.nashorn.internal.runtime.RecompilableScriptFunctionData], jdk.nashorn.internal.runtime.Source), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), toString/705997996=([jdk.nashorn.internal.runtime.ScriptFunctionData], java.lang.String), cast-from-var651-to-var2163=([jdk.nashorn.internal.runtime.RecompilableScriptFunctionData], jdk.nashorn.internal.runtime.ScriptFunctionData)}
; {var651=jdk.nashorn.internal.runtime.RecompilableScriptFunctionData, var854=r1, var859=$r0, var534=$r2, var1987=$i0, var3342=$r3, var1125=jdk.nashorn.internal.runtime.Source, var3855=$r4, var269=$r5, var3073=$r6, var1879=$r8, var2163=jdk.nashorn.internal.runtime.ScriptFunctionData, var174=$r7, var629=$r9, var2776=$r10}
; {jdk.nashorn.internal.runtime.RecompilableScriptFunctionData=var651, r1=var854, $r0=var859, $r2=var534, $i0=var1987, $r3=var3342, jdk.nashorn.internal.runtime.Source=var1125, $r4=var3855, $r5=var269, $r6=var3073, $r8=var1879, jdk.nashorn.internal.runtime.ScriptFunctionData=var2163, $r7=var174, $r9=var629, $r10=var2776}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: jdk.nashorn.internal.runtime.RecompilableScriptFunctionData;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("fnId=");	$i0 = r1.<jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: int functionNodeId>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r4 = r1.<jdk.nashorn.internal.runtime.RecompilableScriptFunctionData: jdk.nashorn.internal.runtime.Source source>;	if $r4 == null goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r7 = specialinvoke r1.<jdk.nashorn.internal.runtime.ScriptFunctionData: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 2
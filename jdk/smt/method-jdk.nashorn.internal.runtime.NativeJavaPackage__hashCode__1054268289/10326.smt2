(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1890 0)
(declare-sort var3056 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1823352142 (var1890) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1890 var1890)
(declare-const null-String String)
(declare-const var965 var1890) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.NativeJavaPackage 
(assert (not (= var965 null-var1890)))
(define-const var2428 String (name/1823352142 var965)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.NativeJavaPackage: java.lang.String name> 
 ; Statement: if $r1 != null goto $r2 = r0.<jdk.nashorn.internal.runtime.NativeJavaPackage: java.lang.String name> 
(assert (not (= var2428 null-String))) ; Cond: $r1 != null 
(define-const var2383 String (name/1823352142 var965)) ; Statement: $r2 = r0.<jdk.nashorn.internal.runtime.NativeJavaPackage: java.lang.String name> 
(assert true)
(define-const var1835 Int (hashCode/-467973558 var2383)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1823352142=([jdk.nashorn.internal.runtime.NativeJavaPackage], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1890=jdk.nashorn.internal.runtime.NativeJavaPackage, var965=r0, var2428=$r1, var3056=null_type, var2383=$r2, var1835=$i0}
; {jdk.nashorn.internal.runtime.NativeJavaPackage=var1890, r0=var965, $r1=var2428, null_type=var3056, $r2=var2383, $i0=var1835}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.NativeJavaPackage;	$r1 = r0.<jdk.nashorn.internal.runtime.NativeJavaPackage: java.lang.String name>;	if $r1 != null goto $r2 = r0.<jdk.nashorn.internal.runtime.NativeJavaPackage: java.lang.String name>;	$r2 = r0.<jdk.nashorn.internal.runtime.NativeJavaPackage: java.lang.String name>;	$i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	return $i0
;block_num 3
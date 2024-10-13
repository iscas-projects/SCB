(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var746 0)
(declare-sort var1529 0)
(declare-sort var1564 0)
(declare-sort var681 0)
(declare-sort var1299 0)
(declare-sort var457 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1529_getVersion/1285550291 () var746)
(declare-fun println/-898436193 (var1564) void)
(declare-fun print/-1969040762 (var1564 String) void)
(declare-fun print/621412916 (var1564 var1299) void)
(declare-fun cast-from-var746-to-var1299 (var746) var1299)
(declare-fun toString/-165910740 (var746) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun isGAECompliant/190196545 (var746) var457)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var681-out var1564)
(declare-const null-var457 var457)
(declare-const var1934 (Array Int String)) ; Statement: r16 := @parameter0: java.lang.String[] 
(assert (not (= var1934 null-__Array__Int__String__)))
(define-const var2851 var746 var1529_getVersion/1285550291) ; Statement: r0 = staticinvoke <freemarker.template.Configuration: freemarker.template.Version getVersion()>() 
(define-const var1653 var1564 var681-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(assert true)
;(assert (println/-898436193 var1653)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println()>() 

(declare-const var1653!1 var1564)
(define-const var3863 var1564 var681-out) ; Statement: $r2 = <java.lang.System: java.io.PrintStream out> 
(assert true)
;(assert (print/-1969040762 var3863 "Apache FreeMarker version ")) ; Statement: virtualinvoke $r2.<java.io.PrintStream: void print(java.lang.String)>("Apache FreeMarker version ") 

(declare-const var3863!1 var1564)
(declare-const var2384 String)
(define-const var3047 var1564 var681-out) ; Statement: $r3 = <java.lang.System: java.io.PrintStream out> 
(assert true)
;(assert (print/621412916 var3047 (cast-from-var746-to-var1299 var2851))) ; Statement: virtualinvoke $r3.<java.io.PrintStream: void print(java.lang.Object)>(r0) 

(declare-const var3047!1 var1564)
(declare-const var2851!1 var746)
(assert true)
(define-const var2483 String (toString/-165910740 var2851!1)) ; Statement: $r4 = virtualinvoke r0.<freemarker.template.Version: java.lang.String toString()>() 
(assert true)
(define-const var1663 Bool (endsWith/985337093 var2483 "Z")) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean endsWith(java.lang.String)>("Z") 
 ; Statement: if $z0 != 0 goto $r17 = <java.lang.System: java.io.PrintStream out> 
(assert (not (= (ite var1663 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2621 var1564 var681-out) ; Statement: $r17 = <java.lang.System: java.io.PrintStream out> 
(assert true)
;(assert (println/-898436193 var2621)) ; Statement: virtualinvoke $r17.<java.io.PrintStream: void println()>() 

(declare-const var2621!1 var1564)
(assert true)
(define-const var998 var457 (isGAECompliant/190196545 var2851!1)) ; Statement: $r18 = virtualinvoke r0.<freemarker.template.Version: java.lang.Boolean isGAECompliant()>() 
 ; Statement: if $r18 == null goto return 
(assert (= var998 null-var457)) ; Cond: $r18 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1529_getVersion/1285550291=([], freemarker.template.Version), println/-898436193=([java.io.PrintStream], void), print/-1969040762=([java.io.PrintStream, java.lang.String], void), print/621412916=([java.io.PrintStream, java.lang.Object], void), cast-from-var746-to-var1299=([freemarker.template.Version], java.lang.Object), toString/-165910740=([freemarker.template.Version], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), isGAECompliant/190196545=([freemarker.template.Version], java.lang.Boolean)}
; {var1934=r16, var746=freemarker.template.Version, var1529=freemarker.template.Configuration, var2851=r0, var1564=java.io.PrintStream, var681=java.lang.System, var1653=$r1, var3863=$r2, var2384="Apache FreeMarker version ", var3047=$r3, var1299=java.lang.Object, var2483=$r4, var1663=$z0, var2621=$r17, var457=java.lang.Boolean, var998=$r18}
; {r16=var1934, freemarker.template.Version=var746, freemarker.template.Configuration=var1529, r0=var2851, java.io.PrintStream=var1564, java.lang.System=var681, $r1=var1653, $r2=var3863, "Apache FreeMarker version "=var2384, $r3=var3047, java.lang.Object=var1299, $r4=var2483, $z0=var1663, $r17=var2621, java.lang.Boolean=var457, $r18=var998}
;seq <freemarker.template.Version: java.lang.String toString()>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r16 := @parameter0: java.lang.String[];	r0 = staticinvoke <freemarker.template.Configuration: freemarker.template.Version getVersion()>();	$r1 = <java.lang.System: java.io.PrintStream out>;	virtualinvoke $r1.<java.io.PrintStream: void println()>();	$r2 = <java.lang.System: java.io.PrintStream out>;	virtualinvoke $r2.<java.io.PrintStream: void print(java.lang.String)>("Apache FreeMarker version ");	$r3 = <java.lang.System: java.io.PrintStream out>;	virtualinvoke $r3.<java.io.PrintStream: void print(java.lang.Object)>(r0);	$r4 = virtualinvoke r0.<freemarker.template.Version: java.lang.String toString()>();	$z0 = virtualinvoke $r4.<java.lang.String: boolean endsWith(java.lang.String)>("Z");	if $z0 != 0 goto $r17 = <java.lang.System: java.io.PrintStream out>;	$r17 = <java.lang.System: java.io.PrintStream out>;	virtualinvoke $r17.<java.io.PrintStream: void println()>();	$r18 = virtualinvoke r0.<freemarker.template.Version: java.lang.Boolean isGAECompliant()>();	if $r18 == null goto return;	return
;block_num 3
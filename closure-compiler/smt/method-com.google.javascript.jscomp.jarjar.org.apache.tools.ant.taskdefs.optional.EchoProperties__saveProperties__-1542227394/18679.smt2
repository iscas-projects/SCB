(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var836 0)
(declare-sort var3332 0)
(declare-sort var1833 0)
(declare-sort var1488 0)
(declare-sort var1710 0)
(declare-sort var1354 0)
(declare-sort var1239 0)
(declare-sort var2133 0)
(declare-sort var3368 0)
(declare-sort var2715 0)
(declare-sort var3608 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1488-init () var1488)
(declare-fun keySet/1250199954 (var3332) var1710)
(declare-fun <init>/2032108350 (var1488 var1354) void)
(declare-fun cast-from-var1710-to-var1354 (var1710) var1354)
(declare-fun var1239-init () var1239)
(declare-fun <init>/614944864 (var1239 var836 var2133) void)
(declare-fun cast-from-var1488-to-var2133 (var1488) var2133)
(declare-fun var2715_bootstrap$/-1180455881 (var3608) var3368)
(declare-fun cast-from-var1239-to-var3608 (var1239) var3608)
(declare-fun forEach/64043528 (var3332 var3368) void)
(declare-fun format/-1235524374 (var836) String)
(declare-fun jdkSaveProperties/1493834447 (var836 var3608 var1833 String) void)
(declare-const null-var836 var836)
(declare-const null-var3332 var3332)
(declare-const null-var1833 var1833)
(declare-const var790 var836) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties 
(assert (not (= var790 null-var836)))
(declare-const var3826 var3332) ; Statement: r1 := @parameter0: java.util.Hashtable 
(assert (not (= var3826 null-var3332)))
(declare-const var305 var1833) ; Statement: r10 := @parameter1: java.io.OutputStream 
(assert (not (= var305 null-var1833)))
(define-const var3485 var1488 var1488-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
(define-const var2961 var1710 (keySet/1250199954 var3826)) ; Statement: $r2 = virtualinvoke r1.<java.util.Hashtable: java.util.Set keySet()>() 
(assert true)
;(assert (<init>/2032108350 var3485 (cast-from-var1710-to-var1354 var2961))) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>(java.util.Collection)>($r2) 

(declare-const var3485!1 var1488)
(declare-const var2961!1 var1710)
(define-const var578 var1239 var1239-init) ; Statement: $r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$1 
(assert true)
;(assert (<init>/614944864 var578 var790 (cast-from-var1488-to-var2133 var3485!1))) ; Statement: specialinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$1: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties,java.util.List)>(r4, $r0) 

(declare-const var578!1 var1239)
(declare-const var790!1 var836)
(declare-const var3485!2 var1488)
(define-const var2756 var3368 (var2715_bootstrap$/-1180455881 (cast-from-var1239-to-var3608 var578!1))) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$lambda_saveProperties_0__410: java.util.function.BiConsumer bootstrap$(java.util.Properties)>($r3) 
(assert true)
;(assert (forEach/64043528 var3826 var2756)) ; Statement: virtualinvoke r1.<java.util.Hashtable: void forEach(java.util.function.BiConsumer)>($r5) 

(declare-const var3826!1 var3332)
(declare-const var2756!1 var3368)
(define-const var131 String "text") ; Statement: $r7 = "text" 
(define-const var3136 String (format/-1235524374 var790!1)) ; Statement: $r6 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties: java.lang.String format> 
(assert true)
(define-const var2582 Bool (= var131 var3136)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto $r9 = "xml" 
(assert (not (= (ite var2582 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (jdkSaveProperties/1493834447 var790!1 (cast-from-var1239-to-var3608 var578!1) var305 "Ant properties")) ; Statement: virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties: void jdkSaveProperties(java.util.Properties,java.io.OutputStream,java.lang.String)>($r3, r10, "Ant properties") 

(declare-const var790!2 var836)
(declare-const var578!2 var1239)
(declare-const var305!1 var1833)
(declare-const var3345 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1488-init=([], java.util.ArrayList), keySet/1250199954=([java.util.Hashtable], java.util.Set), <init>/2032108350=([java.util.ArrayList, java.util.Collection], void), cast-from-var1710-to-var1354=([java.util.Set], java.util.Collection), var1239-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$1), <init>/614944864=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$1, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties, java.util.List], void), cast-from-var1488-to-var2133=([java.util.ArrayList], java.util.List), var2715_bootstrap$/-1180455881=([java.util.Properties], java.util.function.BiConsumer), cast-from-var1239-to-var3608=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$1], java.util.Properties), forEach/64043528=([java.util.Hashtable, java.util.function.BiConsumer], void), format/-1235524374=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties], java.lang.String), jdkSaveProperties/1493834447=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties, java.util.Properties, java.io.OutputStream, java.lang.String], void)}
; {var836=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties, var790=r4, var3332=java.util.Hashtable, var3826=r1, var1833=java.io.OutputStream, var305=r10, var1488=java.util.ArrayList, var3485=$r0, var1710=java.util.Set, var2961=$r2, var1354=java.util.Collection, var1239=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$1, var578=$r3, var2133=java.util.List, var3368=java.util.function.BiConsumer, var2715=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$lambda_saveProperties_0__410, var3608=java.util.Properties, var2756=$r5, var131=$r7, var3136=$r6, var2582=$z0, var3345="Ant properties"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties=var836, r4=var790, java.util.Hashtable=var3332, r1=var3826, java.io.OutputStream=var1833, r10=var305, java.util.ArrayList=var1488, $r0=var3485, java.util.Set=var1710, $r2=var2961, java.util.Collection=var1354, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$1=var1239, $r3=var578, java.util.List=var2133, java.util.function.BiConsumer=var3368, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$lambda_saveProperties_0__410=var2715, java.util.Properties=var3608, $r5=var2756, $r7=var131, $r6=var3136, $z0=var2582, "Ant properties"=var3345}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties;	r1 := @parameter0: java.util.Hashtable;	r10 := @parameter1: java.io.OutputStream;	$r0 = new java.util.ArrayList;	$r2 = virtualinvoke r1.<java.util.Hashtable: java.util.Set keySet()>();	specialinvoke $r0.<java.util.ArrayList: void <init>(java.util.Collection)>($r2);	$r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$1;	specialinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$1: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties,java.util.List)>(r4, $r0);	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$lambda_saveProperties_0__410: java.util.function.BiConsumer bootstrap$(java.util.Properties)>($r3);	virtualinvoke r1.<java.util.Hashtable: void forEach(java.util.function.BiConsumer)>($r5);	$r7 = "text";	$r6 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties: java.lang.String format>;	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto $r9 = "xml";	virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties: void jdkSaveProperties(java.util.Properties,java.io.OutputStream,java.lang.String)>($r3, r10, "Ant properties");	goto [?= return];	return
;block_num 3
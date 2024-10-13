(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1743 0)
(declare-sort var3753 0)
(declare-sort var2453 0)
(declare-sort var293 0)
(declare-sort var3760 0)
(declare-sort var1199 0)
(declare-sort var1163 0)
(declare-sort var1964 0)
(declare-sort var3451 0)
(declare-sort var2396 0)
(declare-sort var2881 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var293-init () var293)
(declare-fun keySet/1250199954 (var3753) var3760)
(declare-fun <init>/2032108350 (var293 var1199) void)
(declare-fun cast-from-var3760-to-var1199 (var3760) var1199)
(declare-fun var1163-init () var1163)
(declare-fun <init>/614944864 (var1163 var1743 var1964) void)
(declare-fun cast-from-var293-to-var1964 (var293) var1964)
(declare-fun var2396_bootstrap$/-1180455881 (var2881) var3451)
(declare-fun cast-from-var1163-to-var2881 (var1163) var2881)
(declare-fun forEach/64043528 (var3753 var3451) void)
(declare-fun format/-1235524374 (var1743) String)
(declare-const null-var1743 var1743)
(declare-const null-var3753 var3753)
(declare-const null-var2453 var2453)
(declare-const var1684 var1743) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties 
(assert (not (= var1684 null-var1743)))
(declare-const var3595 var3753) ; Statement: r1 := @parameter0: java.util.Hashtable 
(assert (not (= var3595 null-var3753)))
(declare-const var3585 var2453) ; Statement: r10 := @parameter1: java.io.OutputStream 
(assert (not (= var3585 null-var2453)))
(define-const var2917 var293 var293-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
(define-const var960 var3760 (keySet/1250199954 var3595)) ; Statement: $r2 = virtualinvoke r1.<java.util.Hashtable: java.util.Set keySet()>() 
(assert true)
;(assert (<init>/2032108350 var2917 (cast-from-var3760-to-var1199 var960))) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>(java.util.Collection)>($r2) 

(declare-const var2917!1 var293)
(declare-const var960!1 var3760)
(define-const var627 var1163 var1163-init) ; Statement: $r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$1 
(assert true)
;(assert (<init>/614944864 var627 var1684 (cast-from-var293-to-var1964 var2917!1))) ; Statement: specialinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$1: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties,java.util.List)>(r4, $r0) 

(declare-const var627!1 var1163)
(declare-const var1684!1 var1743)
(declare-const var2917!2 var293)
(define-const var1535 var3451 (var2396_bootstrap$/-1180455881 (cast-from-var1163-to-var2881 var627!1))) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$lambda_saveProperties_0__410: java.util.function.BiConsumer bootstrap$(java.util.Properties)>($r3) 
(assert true)
;(assert (forEach/64043528 var3595 var1535)) ; Statement: virtualinvoke r1.<java.util.Hashtable: void forEach(java.util.function.BiConsumer)>($r5) 

(declare-const var3595!1 var3753)
(declare-const var1535!1 var3451)
(define-const var1198 String "text") ; Statement: $r7 = "text" 
(define-const var450 String (format/-1235524374 var1684!1)) ; Statement: $r6 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties: java.lang.String format> 
(assert true)
(define-const var1323 Bool (= var1198 var450)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto $r9 = "xml" 
(assert (= (ite var1323 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2169 String "xml") ; Statement: $r9 = "xml" 
(define-const var2200 String (format/-1235524374 var1684!1)) ; Statement: $r8 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties: java.lang.String format> 
(assert true)
(define-const var3300 Bool (= var2169 var2200)) ; Statement: $z1 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>($r8) 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var3300 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var293-init=([], java.util.ArrayList), keySet/1250199954=([java.util.Hashtable], java.util.Set), <init>/2032108350=([java.util.ArrayList, java.util.Collection], void), cast-from-var3760-to-var1199=([java.util.Set], java.util.Collection), var1163-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$1), <init>/614944864=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$1, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties, java.util.List], void), cast-from-var293-to-var1964=([java.util.ArrayList], java.util.List), var2396_bootstrap$/-1180455881=([java.util.Properties], java.util.function.BiConsumer), cast-from-var1163-to-var2881=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$1], java.util.Properties), forEach/64043528=([java.util.Hashtable, java.util.function.BiConsumer], void), format/-1235524374=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties], java.lang.String)}
; {var1743=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties, var1684=r4, var3753=java.util.Hashtable, var3595=r1, var2453=java.io.OutputStream, var3585=r10, var293=java.util.ArrayList, var2917=$r0, var3760=java.util.Set, var960=$r2, var1199=java.util.Collection, var1163=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$1, var627=$r3, var1964=java.util.List, var3451=java.util.function.BiConsumer, var2396=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$lambda_saveProperties_0__410, var2881=java.util.Properties, var1535=$r5, var1198=$r7, var450=$r6, var1323=$z0, var2169=$r9, var2200=$r8, var3300=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties=var1743, r4=var1684, java.util.Hashtable=var3753, r1=var3595, java.io.OutputStream=var2453, r10=var3585, java.util.ArrayList=var293, $r0=var2917, java.util.Set=var3760, $r2=var960, java.util.Collection=var1199, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$1=var1163, $r3=var627, java.util.List=var1964, java.util.function.BiConsumer=var3451, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$lambda_saveProperties_0__410=var2396, java.util.Properties=var2881, $r5=var1535, $r7=var1198, $r6=var450, $z0=var1323, $r9=var2169, $r8=var2200, $z1=var3300}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties;	r1 := @parameter0: java.util.Hashtable;	r10 := @parameter1: java.io.OutputStream;	$r0 = new java.util.ArrayList;	$r2 = virtualinvoke r1.<java.util.Hashtable: java.util.Set keySet()>();	specialinvoke $r0.<java.util.ArrayList: void <init>(java.util.Collection)>($r2);	$r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$1;	specialinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$1: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties,java.util.List)>(r4, $r0);	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties$lambda_saveProperties_0__410: java.util.function.BiConsumer bootstrap$(java.util.Properties)>($r3);	virtualinvoke r1.<java.util.Hashtable: void forEach(java.util.function.BiConsumer)>($r5);	$r7 = "text";	$r6 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties: java.lang.String format>;	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto $r9 = "xml";	$r9 = "xml";	$r8 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.EchoProperties: java.lang.String format>;	$z1 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>($r8);	if $z1 == 0 goto return;	return
;block_num 3
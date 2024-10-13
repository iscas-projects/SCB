(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3941 0)
(declare-sort var979 0)
(declare-sort var3141 0)
(declare-sort var2979 0)
(declare-sort var2695 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun arr-var979-init () (Array Int var979))
(declare-fun cast-from-var3141-to-var979 (var3141) var979)
(declare-fun extensionName/349185246 (var3941) String)
(declare-fun cast-from-String-to-var979 (String) var979)
(declare-fun String_format/1339386452 (String (Array Int var979)) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun specificationVersion/349185246 (var3941) var2979)
(declare-fun specificationVendor/349185246 (var3941) String)
(declare-fun implementationVersion/349185246 (var3941) var2979)
(declare-fun implementationVendorID/349185246 (var3941) String)
(declare-fun implementationVendor/349185246 (var3941) String)
(declare-fun implementationURL/349185246 (var3941) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3941 var3941)
(declare-const var3941-EXTENSION_NAME var3141)
(declare-const null-__Array__Int__var979__ (Array Int var979))
(declare-const null-var2979 var2979)
(declare-const null-String String)
(declare-const var2508 var3941) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension 
(assert (not (= var2508 null-var3941)))
(define-const var250 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var3908 (Array Int var979) arr-var979-init) ; Statement: $r1 = newarray (java.lang.Object)[2] 
(define-const var2572 var3141 var3941-EXTENSION_NAME) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.util.jar.Attributes$Name EXTENSION_NAME> 
(declare-const var3908!1 (Array Int var979))
(assert (not (= var3908!1 null-__Array__Int__var979__)))
(assert (= (select var3908!1 0) (cast-from-var3141-to-var979 var2572))) ; Statement: $r1[0] = $r2 
(define-const var1632 String (extensionName/349185246 var2508)) ; Statement: $r4 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String extensionName> 
(declare-const var3908!2 (Array Int var979))
(assert (not (= var3908!2 null-__Array__Int__var979__)))
(assert (= (select var3908!2 1) (cast-from-String-to-var979 var1632))) ; Statement: $r1[1] = $r4 
(define-const var2766 String (String_format/1339386452 "%s: %s%n" var3908!2)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s: %s%n", $r1) 
(assert true)
;(assert (<init>/-1061048412 var250 var2766)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5) 
(declare-const var250!1 String)
(assert (= var250!1 var2766))
(define-const var3729 var2979 (specificationVersion/349185246 var2508)) ; Statement: $r6 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal specificationVersion> 
 ; Statement: if null == $r6 goto $r7 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String specificationVendor> 
(assert (= null-var2979 var3729)) ; Cond: null == $r6 
(define-const var2088 String (specificationVendor/349185246 var2508)) ; Statement: $r7 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String specificationVendor> 
 ; Statement: if null == $r7 goto $r8 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal implementationVersion> 
(assert (= null-String var2088)) ; Cond: null == $r7 
(define-const var1389 var2979 (implementationVersion/349185246 var2508)) ; Statement: $r8 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal implementationVersion> 
 ; Statement: if null == $r8 goto $r9 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String implementationVendorID> 
(assert (= null-var2979 var1389)) ; Cond: null == $r8 
(define-const var1298 String (implementationVendorID/349185246 var2508)) ; Statement: $r9 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String implementationVendorID> 
 ; Statement: if null == $r9 goto $r10 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String implementationVendor> 
(assert (= null-String var1298)) ; Cond: null == $r9 
(define-const var1414 String (implementationVendor/349185246 var2508)) ; Statement: $r10 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String implementationVendor> 
 ; Statement: if null == $r10 goto $r11 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String implementationURL> 
(assert (= null-String var1414)) ; Cond: null == $r10 
(define-const var192 String (implementationURL/349185246 var2508)) ; Statement: $r11 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String implementationURL> 
 ; Statement: if null == $r11 goto $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= null-String var192)) ; Cond: null == $r11 
(assert true)
(define-const var3584 String (toString/-2075883882 var250!1)) ; Statement: $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), arr-var979-init=([], java.lang.Object[]), cast-from-var3141-to-var979=([java.util.jar.Attributes$Name], java.lang.Object), extensionName/349185246=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension], java.lang.String), cast-from-String-to-var979=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), specificationVersion/349185246=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal), specificationVendor/349185246=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension], java.lang.String), implementationVersion/349185246=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal), implementationVendorID/349185246=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension], java.lang.String), implementationVendor/349185246=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension], java.lang.String), implementationURL/349185246=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3941=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension, var2508=r3, var250=$r0, var979=java.lang.Object, var3908=$r1, var3141=java.util.jar.Attributes$Name, var2572=$r2, var1632=$r4, var2766=$r5, var2979=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal, var3729=$r6, var2088=$r7, var2695=null_type, var1389=$r8, var1298=$r9, var1414=$r10, var192=$r11, var3584=$r12}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension=var3941, r3=var2508, $r0=var250, java.lang.Object=var979, $r1=var3908, java.util.jar.Attributes$Name=var3141, $r2=var2572, $r4=var1632, $r5=var2766, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal=var2979, $r6=var3729, $r7=var2088, null_type=var2695, $r8=var1389, $r9=var1298, $r10=var1414, $r11=var192, $r12=var3584}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension;	$r0 = new java.lang.StringBuilder;	$r1 = newarray (java.lang.Object)[2];	$r2 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.util.jar.Attributes$Name EXTENSION_NAME>;	$r1[0] = $r2;	$r4 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String extensionName>;	$r1[1] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s: %s%n", $r1);	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5);	$r6 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal specificationVersion>;	if null == $r6 goto $r7 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String specificationVendor>;	$r7 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String specificationVendor>;	if null == $r7 goto $r8 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal implementationVersion>;	$r8 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal implementationVersion>;	if null == $r8 goto $r9 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String implementationVendorID>;	$r9 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String implementationVendorID>;	if null == $r9 goto $r10 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String implementationVendor>;	$r10 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String implementationVendor>;	if null == $r10 goto $r11 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String implementationURL>;	$r11 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String implementationURL>;	if null == $r11 goto $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 7
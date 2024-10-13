(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var879 0)
(declare-sort var2143 0)
(declare-sort var152 0)
(declare-sort var334 0)
(declare-sort var3297 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun arr-var2143-init () (Array Int var2143))
(declare-fun cast-from-var152-to-var2143 (var152) var2143)
(declare-fun specificationTitle/523887138 (var879) String)
(declare-fun cast-from-String-to-var2143 (String) var2143)
(declare-fun String_format/1339386452 (String (Array Int var2143)) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun specificationVersion/523887138 (var879) var334)
(declare-fun specificationVendor/523887138 (var879) String)
(declare-fun implementationTitle/523887138 (var879) String)
(declare-fun implementationVersion/523887138 (var879) String)
(declare-fun implementationVendor/523887138 (var879) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var879 var879)
(declare-const var879-SPECIFICATION_TITLE var152)
(declare-const null-__Array__Int__var2143__ (Array Int var2143))
(declare-const null-var334 var334)
(declare-const null-String String)
(declare-const var2727 var879) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification 
(assert (not (= var2727 null-var879)))
(define-const var366 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var3923 (Array Int var2143) arr-var2143-init) ; Statement: $r1 = newarray (java.lang.Object)[2] 
(define-const var3380 var152 var879-SPECIFICATION_TITLE) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.util.jar.Attributes$Name SPECIFICATION_TITLE> 
(declare-const var3923!1 (Array Int var2143))
(assert (not (= var3923!1 null-__Array__Int__var2143__)))
(assert (= (select var3923!1 0) (cast-from-var152-to-var2143 var3380))) ; Statement: $r1[0] = $r2 
(define-const var2930 String (specificationTitle/523887138 var2727)) ; Statement: $r4 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String specificationTitle> 
(declare-const var3923!2 (Array Int var2143))
(assert (not (= var3923!2 null-__Array__Int__var2143__)))
(assert (= (select var3923!2 1) (cast-from-String-to-var2143 var2930))) ; Statement: $r1[1] = $r4 
(define-const var1475 String (String_format/1339386452 "%s: %s%n" var3923!2)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s: %s%n", $r1) 
(assert true)
;(assert (<init>/-1061048412 var366 var1475)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5) 
(declare-const var366!1 String)
(assert (= var366!1 var1475))
(define-const var2121 var334 (specificationVersion/523887138 var2727)) ; Statement: $r6 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal specificationVersion> 
 ; Statement: if null == $r6 goto $r7 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String specificationVendor> 
(assert (= null-var334 var2121)) ; Cond: null == $r6 
(define-const var3039 String (specificationVendor/523887138 var2727)) ; Statement: $r7 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String specificationVendor> 
 ; Statement: if null == $r7 goto $r8 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String implementationTitle> 
(assert (= null-String var3039)) ; Cond: null == $r7 
(define-const var961 String (implementationTitle/523887138 var2727)) ; Statement: $r8 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String implementationTitle> 
 ; Statement: if null == $r8 goto $r9 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String implementationVersion> 
(assert (= null-String var961)) ; Cond: null == $r8 
(define-const var3242 String (implementationVersion/523887138 var2727)) ; Statement: $r9 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String implementationVersion> 
 ; Statement: if null == $r9 goto $r10 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String implementationVendor> 
(assert (= null-String var3242)) ; Cond: null == $r9 
(define-const var2893 String (implementationVendor/523887138 var2727)) ; Statement: $r10 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String implementationVendor> 
 ; Statement: if null == $r10 goto $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= null-String var2893)) ; Cond: null == $r10 
(assert true)
(define-const var2196 String (toString/-2075883882 var366!1)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), arr-var2143-init=([], java.lang.Object[]), cast-from-var152-to-var2143=([java.util.jar.Attributes$Name], java.lang.Object), specificationTitle/523887138=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification], java.lang.String), cast-from-String-to-var2143=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), specificationVersion/523887138=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal), specificationVendor/523887138=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification], java.lang.String), implementationTitle/523887138=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification], java.lang.String), implementationVersion/523887138=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification], java.lang.String), implementationVendor/523887138=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var879=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification, var2727=r3, var366=$r0, var2143=java.lang.Object, var3923=$r1, var152=java.util.jar.Attributes$Name, var3380=$r2, var2930=$r4, var1475=$r5, var334=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal, var2121=$r6, var3039=$r7, var3297=null_type, var961=$r8, var3242=$r9, var2893=$r10, var2196=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification=var879, r3=var2727, $r0=var366, java.lang.Object=var2143, $r1=var3923, java.util.jar.Attributes$Name=var152, $r2=var3380, $r4=var2930, $r5=var1475, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal=var334, $r6=var2121, $r7=var3039, null_type=var3297, $r8=var961, $r9=var3242, $r10=var2893, $r11=var2196}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification;	$r0 = new java.lang.StringBuilder;	$r1 = newarray (java.lang.Object)[2];	$r2 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.util.jar.Attributes$Name SPECIFICATION_TITLE>;	$r1[0] = $r2;	$r4 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String specificationTitle>;	$r1[1] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s: %s%n", $r1);	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5);	$r6 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal specificationVersion>;	if null == $r6 goto $r7 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String specificationVendor>;	$r7 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String specificationVendor>;	if null == $r7 goto $r8 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String implementationTitle>;	$r8 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String implementationTitle>;	if null == $r8 goto $r9 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String implementationVersion>;	$r9 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String implementationVersion>;	if null == $r9 goto $r10 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String implementationVendor>;	$r10 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String implementationVendor>;	if null == $r10 goto $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 6
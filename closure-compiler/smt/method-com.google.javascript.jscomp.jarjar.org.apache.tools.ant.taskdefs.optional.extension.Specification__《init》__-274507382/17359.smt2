(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3191 0)
(declare-sort var2119 0)
(declare-sort var1728 0)
(declare-sort var213 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1728) void)
(declare-fun cast-from-var3191-to-var1728 (var3191) var1728)
(declare-fun specificationTitle/523887138 (var3191) String)
(declare-fun specificationVendor/523887138 (var3191) String)
(declare-fun implementationTitle/523887138 (var3191) String)
(declare-fun implementationVendor/523887138 (var3191) String)
(declare-fun implementationVersion/523887138 (var3191) String)
(declare-fun var213-init () var213)
(declare-fun <init>/1862440627 (var213 String) void)
(declare-const null-var3191 var3191)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var818 var3191) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification 
(assert (not (= var818 null-var3191)))
(declare-const var3321 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3321 null-String)))
(declare-const var878 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var878 null-String)))
(declare-const var2023 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2023 null-String)))
(declare-const var3812 String) ; Statement: r4 := @parameter3: java.lang.String 
(assert (not (= var3812 null-String)))
(declare-const var2448 String) ; Statement: r6 := @parameter4: java.lang.String 
(assert (not (= var2448 null-String)))
(declare-const var1837 String) ; Statement: r5 := @parameter5: java.lang.String 
(assert (not (= var1837 null-String)))
(declare-const var2577 (Array Int String)) ; Statement: r8 := @parameter6: java.lang.String[] 
(assert (not (= var2577 null-__Array__Int__String__)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3191-to-var1728 var818))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var818!1 var3191)
(declare-const var818!2 var3191)
(assert (not (= var818!2 null-var3191)))
(assert (= (specificationTitle/523887138 var818!2) var3321)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String specificationTitle> = r1 
(declare-const var818!3 var3191)
(assert (not (= var818!3 null-var3191)))
(assert (= (specificationVendor/523887138 var818!3) var2023)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String specificationVendor> = r2 
 ; Statement: if null == r3 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String implementationTitle> = r4 
(assert (= null-String var878)) ; Cond: null == r3 
(declare-const var818!4 var3191)
(assert (not (= var818!4 null-var3191)))
(assert (= (implementationTitle/523887138 var818!4) var3812)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String implementationTitle> = r4 
(declare-const var818!5 var3191)
(assert (not (= var818!5 null-var3191)))
(assert (= (implementationVendor/523887138 var818!5) var1837)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String implementationVendor> = r5 
(declare-const var818!6 var3191)
(assert (not (= var818!6 null-var3191)))
(assert (= (implementationVersion/523887138 var818!6) var2448)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String implementationVersion> = r6 
(define-const var3755 String (specificationTitle/523887138 var818!6)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String specificationTitle> 
 ; Statement: if null != $r7 goto (branch) 
(assert (not (not (= null-String var3755)))) ; Negate: Cond: null != $r7  
(define-const var1918 var213 var213-init) ; Statement: $r10 = new java.lang.NullPointerException 
(assert true)
;(assert (<init>/1862440627 var1918 "specificationTitle")) ; Statement: specialinvoke $r10.<java.lang.NullPointerException: void <init>(java.lang.String)>("specificationTitle") 

(declare-const var1918!1 var213)
(declare-const var2533 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3191-to-var1728=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification], java.lang.Object), specificationTitle/523887138=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification], java.lang.String), specificationVendor/523887138=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification], java.lang.String), implementationTitle/523887138=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification], java.lang.String), implementationVendor/523887138=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification], java.lang.String), implementationVersion/523887138=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification], java.lang.String), var213-init=([], java.lang.NullPointerException), <init>/1862440627=([java.lang.NullPointerException, java.lang.String], void)}
; {var3191=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification, var818=r0, var3321=r1, var2119=null_type, var878=r3, var2023=r2, var3812=r4, var2448=r6, var1837=r5, var2577=r8, var1728=java.lang.Object, var3755=$r7, var213=java.lang.NullPointerException, var1918=$r10, var2533="specificationTitle"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification=var3191, r0=var818, r1=var3321, null_type=var2119, r3=var878, r2=var2023, r4=var3812, r6=var2448, r5=var1837, r8=var2577, java.lang.Object=var1728, $r7=var3755, java.lang.NullPointerException=var213, $r10=var1918, "specificationTitle"=var2533}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.String;	r6 := @parameter4: java.lang.String;	r5 := @parameter5: java.lang.String;	r8 := @parameter6: java.lang.String[];	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String specificationTitle> = r1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String specificationVendor> = r2;	if null == r3 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String implementationTitle> = r4;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String implementationTitle> = r4;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String implementationVendor> = r5;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String implementationVersion> = r6;	$r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String specificationTitle>;	if null != $r7 goto (branch);	$r10 = new java.lang.NullPointerException;	specialinvoke $r10.<java.lang.NullPointerException: void <init>(java.lang.String)>("specificationTitle");	throw $r10
;block_num 3
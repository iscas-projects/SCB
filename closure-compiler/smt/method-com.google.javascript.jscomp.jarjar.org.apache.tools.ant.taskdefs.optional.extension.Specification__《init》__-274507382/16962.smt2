(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var609 0)
(declare-sort var429 0)
(declare-sort var3180 0)
(declare-sort var3439 0)
(declare-sort var1618 0)
(declare-sort var3464 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3180) void)
(declare-fun cast-from-var609-to-var3180 (var609) var3180)
(declare-fun specificationTitle/523887138 (var609) String)
(declare-fun specificationVendor/523887138 (var609) String)
(declare-fun var3439-init () var3439)
(declare-fun var3464-init () var3464)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3180) String)
(declare-fun cast-from-var1618-to-var3180 (var1618) var3180)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3464 String) void)
(declare-const null-var609 var609)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var1618 var1618)
(declare-const var1725 var609) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification 
(assert (not (= var1725 null-var609)))
(declare-const var3499 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3499 null-String)))
(declare-const var3013 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3013 null-String)))
(declare-const var3663 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3663 null-String)))
(declare-const var412 String) ; Statement: r4 := @parameter3: java.lang.String 
(assert (not (= var412 null-String)))
(declare-const var2086 String) ; Statement: r6 := @parameter4: java.lang.String 
(assert (not (= var2086 null-String)))
(declare-const var3192 String) ; Statement: r5 := @parameter5: java.lang.String 
(assert (not (= var3192 null-String)))
(declare-const var3766 (Array Int String)) ; Statement: r8 := @parameter6: java.lang.String[] 
(assert (not (= var3766 null-__Array__Int__String__)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var609-to-var3180 var1725))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1725!1 var609)
(declare-const var1725!2 var609)
(assert (not (= var1725!2 null-var609)))
(assert (= (specificationTitle/523887138 var1725!2) var3499)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String specificationTitle> = r1 
(declare-const var1725!3 var609)
(assert (not (= var1725!3 null-var609)))
(assert (= (specificationVendor/523887138 var1725!3) var3663)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String specificationVendor> = r2 
 ; Statement: if null == r3 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String implementationTitle> = r4 
(assert (not (= null-String var3013))) ; Negate: Cond: null == r3  
(define-const var2148 var3439 var3439-init) ; Statement: $r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var149 var1618) ; Statement: $r12 := @caughtexception 
(assert (not (= var149 null-var1618)))
(define-const var558 var3464 var3464-init) ; Statement: $r13 = new java.lang.IllegalArgumentException 
(define-const var3379 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3379)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3379!1 String)
(assert (= var3379!1 ""))
(assert true)
(define-const var116 String (append/672562846 var3379!1 "Bad specification version format \u0027")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bad specification version format \'") 
(declare-const var3379!2 String)
(assert (= var3379!2 (str.++ var3379!1 "Bad specification version format \u0027")))
(assert true)
(define-const var1729 String (append/672562846 var116 var3013)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var116!1 String)
(assert (= var116!1 (str.++ var116 var3013)))
(assert true)
(define-const var2326 String (append/672562846 var1729 "\u0027 in \u0027")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' in \'") 
(declare-const var1729!1 String)
(assert (= var1729!1 (str.++ var1729 "\u0027 in \u0027")))
(assert true)
(define-const var2871 String (append/672562846 var2326 var3499)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2326!1 String)
(assert (= var2326!1 (str.++ var2326 var3499)))
(assert true)
(define-const var2268 String (append/672562846 var2871 "\u0027. (Reason: ")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'. (Reason: ") 
(declare-const var2871!1 String)
(assert (= var2871!1 (str.++ var2871 "\u0027. (Reason: ")))
(assert true)
(define-const var1880 String (append/-1031950772 var2268 (cast-from-var1618-to-var3180 var149))) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12) 
(declare-const var2268!1 String)
(assert (str.prefixof var2268 var2268!1))
(assert true)
(define-const var3754 String (append/672562846 var1880 ")")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1880!1 String)
(assert (= var1880!1 (str.++ var1880 ")")))
(assert true)
(define-const var3675 String (toString/-2075883882 var3754)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var558 var3675)) ; Statement: specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r22) 

(declare-const var558!1 var3464)
(declare-const var3675!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var609-to-var3180=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification], java.lang.Object), specificationTitle/523887138=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification], java.lang.String), specificationVendor/523887138=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification], java.lang.String), var3439-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal), var3464-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1618-to-var3180=([java.lang.NumberFormatException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var609=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification, var1725=r0, var3499=r1, var429=null_type, var3013=r3, var3663=r2, var412=r4, var2086=r6, var3192=r5, var3766=r8, var3180=java.lang.Object, var3439=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal, var2148=$r11, var1618=java.lang.NumberFormatException, var149=$r12, var3464=java.lang.IllegalArgumentException, var558=$r13, var3379=$r14, var116=$r15, var1729=$r16, var2326=$r17, var2871=$r18, var2268=$r19, var1880=$r20, var3754=$r21, var3675=$r22}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification=var609, r0=var1725, r1=var3499, null_type=var429, r3=var3013, r2=var3663, r4=var412, r6=var2086, r5=var3192, r8=var3766, java.lang.Object=var3180, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal=var3439, $r11=var2148, java.lang.NumberFormatException=var1618, $r12=var149, java.lang.IllegalArgumentException=var3464, $r13=var558, $r14=var3379, $r15=var116, $r16=var1729, $r17=var2326, $r18=var2871, $r19=var2268, $r20=var1880, $r21=var3754, $r22=var3675}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.String;	r6 := @parameter4: java.lang.String;	r5 := @parameter5: java.lang.String;	r8 := @parameter6: java.lang.String[];	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String specificationTitle> = r1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String specificationVendor> = r2;	if null == r3 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String implementationTitle> = r4;	$r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal;	$r12 := @caughtexception;	$r13 = new java.lang.IllegalArgumentException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bad specification version format \'");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' in \'");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'. (Reason: ");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r22);	throw $r13
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1913 0)
(declare-sort var3307 0)
(declare-sort var1027 0)
(declare-sort var2476 0)
(declare-sort var1224 0)
(declare-sort var3131 0)
(declare-sort var2427 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3131_areSame/-1709690105 (var1913 var1913) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2427) String)
(declare-fun cast-from-var1913-to-var2427 (var1913) var2427)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3131_log/1493387868 (var1224 String) void)
(declare-const null-var1913 var1913)
(declare-const null-var3307 var3307)
(declare-const null-var1027 var1027)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const null-var1224 var1224)
(declare-const var3210 var1913) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var3210 null-var1913)))
(declare-const var2972 var1913) ; Statement: r1 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var2972 null-var1913)))
(declare-const var1993 var3307) ; Statement: r13 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSetCollection 
(assert (not (= var1993 null-var3307)))
(declare-const var2188 var1027) ; Statement: r4 := @parameter3: java.util.Vector 
(assert (not (= var2188 null-var1027)))
(declare-const var2974 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var2974 null-Bool)))
(declare-const var894 String) ; Statement: r3 := @parameter5: java.lang.String 
(assert (not (= var894 null-String)))
(declare-const var2888 String) ; Statement: r9 := @parameter6: java.lang.String 
(assert (not (= var2888 null-String)))
(declare-const var3787 var1224) ; Statement: r2 := @parameter7: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var3787 null-var1224)))
(define-const var784 Bool (var3131_areSame/-1709690105 var3210 var2972)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils: boolean areSame(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource)>(r0, r1) 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.io.InputStream getInputStream()>() 
(assert (not (= (ite var784 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2600 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2600)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2600!1 String)
(assert (= var2600!1 ""))
(assert true)
(define-const var1032 String (append/672562846 var2600!1 "Skipping (self) copy of ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping (self) copy of ") 
(declare-const var2600!2 String)
(assert (= var2600!2 (str.++ var2600!1 "Skipping (self) copy of ")))
(assert true)
(define-const var1676 String (append/-1031950772 var1032 (cast-from-var1913-to-var2427 var3210))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1032!1 String)
(assert (str.prefixof var1032 var1032!1))
(assert true)
(define-const var3588 String (append/672562846 var1676 " to ")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ") 
(declare-const var1676!1 String)
(assert (= var1676!1 (str.++ var1676 " to ")))
(assert true)
(define-const var920 String (append/-1031950772 var3588 (cast-from-var1913-to-var2427 var2972))) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3588!1 String)
(assert (str.prefixof var3588 var3588!1))
(assert true)
(define-const var3323 String (toString/-2075883882 var920)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3131_log/1493387868 var3787 var3323)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils: void log(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.lang.String)>(r2, $r20) 

(declare-const var3787!1 var1224)
(declare-const var3323!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3131_areSame/-1709690105=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1913-to-var2427=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3131_log/1493387868=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], void)}
; {var1913=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var3210=r0, var2972=r1, var3307=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSetCollection, var1993=r13, var1027=java.util.Vector, var2188=r4, var2974=z1, var894=r3, var2476=null_type, var2888=r9, var1224=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3787=r2, var3131=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils, var784=$z0, var2600=$r15, var1032=$r16, var2427=java.lang.Object, var1676=$r17, var3588=$r18, var920=$r19, var3323=$r20}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var1913, r0=var3210, r1=var2972, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSetCollection=var3307, r13=var1993, java.util.Vector=var1027, r4=var2188, z1=var2974, r3=var894, null_type=var2476, r9=var2888, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1224, r2=var3787, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils=var3131, $z0=var784, $r15=var2600, $r16=var1032, java.lang.Object=var2427, $r17=var1676, $r18=var3588, $r19=var920, $r20=var3323}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	r1 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	r13 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSetCollection;	r4 := @parameter3: java.util.Vector;	z1 := @parameter4: boolean;	r3 := @parameter5: java.lang.String;	r9 := @parameter6: java.lang.String;	r2 := @parameter7: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils: boolean areSame(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource)>(r0, r1);	if $z0 == 0 goto $r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.io.InputStream getInputStream()>();	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping (self) copy of ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils: void log(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.lang.String)>(r2, $r20);	return
;block_num 2
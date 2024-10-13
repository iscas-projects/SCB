(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2512 0)
(declare-sort var2988 0)
(declare-sort var2321 0)
(declare-sort var3982 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2321_areSame/-1709690105 (var2512 var2512) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3982) String)
(declare-fun cast-from-var2512-to-var3982 (var2512) var3982)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2321_log/1493387868 (var2988 String) void)
(declare-const null-var2512 var2512)
(declare-const null-Bool Bool)
(declare-const null-var2988 var2988)
(declare-const var2871 var2512) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var2871 null-var2512)))
(declare-const var2162 var2512) ; Statement: r1 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var2162 null-var2512)))
(declare-const var2957 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var2957 null-Bool)))
(declare-const var1186 var2988) ; Statement: r3 := @parameter3: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var1186 null-var2988)))
(define-const var1048 Bool (var2321_areSame/-1709690105 var2871 var2162)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils: boolean areSame(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource)>(r0, r1) 
 ; Statement: if $z0 == 0 goto r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.io.InputStream getInputStream()>() 
(assert (not (= (ite var1048 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1388 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1388)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1388!1 String)
(assert (= var1388!1 ""))
(assert true)
(define-const var1320 String (append/672562846 var1388!1 "Skipping (self) copy of ")) ; Statement: $r5 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping (self) copy of ") 
(declare-const var1388!2 String)
(assert (= var1388!2 (str.++ var1388!1 "Skipping (self) copy of ")))
(assert true)
(define-const var3004 String (append/-1031950772 var1320 (cast-from-var2512-to-var3982 var2871))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1320!1 String)
(assert (str.prefixof var1320 var1320!1))
(assert true)
(define-const var980 String (append/672562846 var3004 " to ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ") 
(declare-const var3004!1 String)
(assert (= var3004!1 (str.++ var3004 " to ")))
(assert true)
(define-const var1102 String (append/-1031950772 var980 (cast-from-var2512-to-var3982 var2162))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var980!1 String)
(assert (str.prefixof var980 var980!1))
(assert true)
(define-const var3333 String (toString/-2075883882 var1102)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2321_log/1493387868 var1186 var3333)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils: void log(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.lang.String)>(r3, $r9) 

(declare-const var1186!1 var2988)
(declare-const var3333!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2321_areSame/-1709690105=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2512-to-var3982=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2321_log/1493387868=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], void)}
; {var2512=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var2871=r0, var2162=r1, var2957=z1, var2988=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1186=r3, var2321=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils, var1048=$z0, var1388=$r16, var1320=$r5, var3982=java.lang.Object, var3004=$r6, var980=$r7, var1102=$r8, var3333=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var2512, r0=var2871, r1=var2162, z1=var2957, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2988, r3=var1186, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils=var2321, $z0=var1048, $r16=var1388, $r5=var1320, java.lang.Object=var3982, $r6=var3004, $r7=var980, $r8=var1102, $r9=var3333}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	r1 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	z1 := @parameter2: boolean;	r3 := @parameter3: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils: boolean areSame(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource)>(r0, r1);	if $z0 == 0 goto r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.io.InputStream getInputStream()>();	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping (self) copy of ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils: void log(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.lang.String)>(r3, $r9);	return
;block_num 2
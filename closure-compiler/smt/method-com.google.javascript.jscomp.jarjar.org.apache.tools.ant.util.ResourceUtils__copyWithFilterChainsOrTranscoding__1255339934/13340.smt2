(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2350 0)
(declare-sort var462 0)
(declare-sort var1384 0)
(declare-sort var3828 0)
(declare-sort var1552 0)
(declare-sort var831 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1552_areSame/-1709690105 (var2350 var2350) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var831) String)
(declare-fun cast-from-var2350-to-var831 (var2350) var831)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1552_log/1493387868 (var3828 String) void)
(declare-const null-var2350 var2350)
(declare-const null-var462 var462)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const null-var3828 var3828)
(declare-const var2584 var2350) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var2584 null-var2350)))
(declare-const var1931 var2350) ; Statement: r1 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var1931 null-var2350)))
(declare-const var2550 var462) ; Statement: r4 := @parameter2: java.util.Vector 
(assert (not (= var2550 null-var462)))
(declare-const var1550 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1550 null-Bool)))
(declare-const var3180 String) ; Statement: r3 := @parameter4: java.lang.String 
(assert (not (= var3180 null-String)))
(declare-const var3282 String) ; Statement: r9 := @parameter5: java.lang.String 
(assert (not (= var3282 null-String)))
(declare-const var1364 var3828) ; Statement: r2 := @parameter6: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var1364 null-var3828)))
(define-const var547 Bool (var1552_areSame/-1709690105 var2584 var1931)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils: boolean areSame(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource)>(r0, r1) 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.io.InputStream getInputStream()>() 
(assert (not (= (ite var547 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var453 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var453)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var453!1 String)
(assert (= var453!1 ""))
(assert true)
(define-const var1588 String (append/672562846 var453!1 "Skipping (self) copy of ")) ; Statement: $r13 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping (self) copy of ") 
(declare-const var453!2 String)
(assert (= var453!2 (str.++ var453!1 "Skipping (self) copy of ")))
(assert true)
(define-const var98 String (append/-1031950772 var1588 (cast-from-var2350-to-var831 var2584))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1588!1 String)
(assert (str.prefixof var1588 var1588!1))
(assert true)
(define-const var3253 String (append/672562846 var98 " to ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ") 
(declare-const var98!1 String)
(assert (= var98!1 (str.++ var98 " to ")))
(assert true)
(define-const var1964 String (append/-1031950772 var3253 (cast-from-var2350-to-var831 var1931))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3253!1 String)
(assert (str.prefixof var3253 var3253!1))
(assert true)
(define-const var1203 String (toString/-2075883882 var1964)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1552_log/1493387868 var1364 var1203)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils: void log(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.lang.String)>(r2, $r17) 

(declare-const var1364!1 var3828)
(declare-const var1203!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1552_areSame/-1709690105=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2350-to-var831=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1552_log/1493387868=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], void)}
; {var2350=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var2584=r0, var1931=r1, var462=java.util.Vector, var2550=r4, var1550=z1, var3180=r3, var1384=null_type, var3282=r9, var3828=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1364=r2, var1552=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils, var547=$z0, var453=$r23, var1588=$r13, var831=java.lang.Object, var98=$r14, var3253=$r15, var1964=$r16, var1203=$r17}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var2350, r0=var2584, r1=var1931, java.util.Vector=var462, r4=var2550, z1=var1550, r3=var3180, null_type=var1384, r9=var3282, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3828, r2=var1364, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils=var1552, $z0=var547, $r23=var453, $r13=var1588, java.lang.Object=var831, $r14=var98, $r15=var3253, $r16=var1964, $r17=var1203}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	r1 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	r4 := @parameter2: java.util.Vector;	z1 := @parameter3: boolean;	r3 := @parameter4: java.lang.String;	r9 := @parameter5: java.lang.String;	r2 := @parameter6: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils: boolean areSame(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource)>(r0, r1);	if $z0 == 0 goto $r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.io.InputStream getInputStream()>();	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping (self) copy of ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils: void log(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.lang.String)>(r2, $r17);	return
;block_num 2
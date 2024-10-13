(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1363 0)
(declare-sort var3283 0)
(declare-sort var2375 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isResolved/-1062758483 (var3283) Bool)
(declare-fun cast-from-var1363-to-var3283 (var1363) var3283)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun nameAndTypeCPInfo/-929069884 (var1363) var2375)
(declare-fun getName/-1580293998 (var2375) String)
(declare-fun getType/139630979 (var2375) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1363 var1363)
(declare-const var173 var1363) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo 
(assert (not (= var173 null-var1363)))
(assert true)
(define-const var2988 Bool (isResolved/-1062758483 (cast-from-var1363-to-var3283 var173))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo: boolean isResolved()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= (ite var2988 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2521 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2521)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2521!1 String)
(assert (= var2521!1 ""))
(assert true)
(define-const var435 String (append/672562846 var2521!1 "Name = ")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Name = ") 
(declare-const var2521!2 String)
(assert (= var2521!2 (str.++ var2521!1 "Name = ")))
(define-const var3009 var2375 (nameAndTypeCPInfo/-929069884 var173)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo nameAndTypeCPInfo> 
(assert true)
(define-const var2864 String (getName/-1580293998 var3009)) ; Statement: $r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo: java.lang.String getName()>() 
(assert true)
(define-const var1320 String (append/672562846 var435 var2864)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var435!1 String)
(assert (= var435!1 (str.++ var435 var2864)))
(assert true)
(define-const var286 String (append/672562846 var1320 ", type = ")) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", type = ") 
(declare-const var1320!1 String)
(assert (= var1320!1 (str.++ var1320 ", type = ")))
(define-const var735 var2375 (nameAndTypeCPInfo/-929069884 var173)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo nameAndTypeCPInfo> 
(assert true)
(define-const var3801 String (getType/139630979 var735)) ; Statement: $r13 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo: java.lang.String getType()>() 
(assert true)
(define-const var583 String (append/672562846 var286 var3801)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var286!1 String)
(assert (= var286!1 (str.++ var286 var3801)))
(assert true)
(define-const var3864 String (toString/-2075883882 var583)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {isResolved/-1062758483=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry], boolean), cast-from-var1363-to-var3283=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), nameAndTypeCPInfo/-929069884=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo), getName/-1580293998=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo], java.lang.String), getType/139630979=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1363=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo, var173=r0, var3283=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry, var2988=$z0, var2521=$r7, var435=$r10, var2375=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo, var3009=$r8, var2864=$r9, var1320=$r11, var286=$r14, var735=$r12, var3801=$r13, var583=$r15, var3864=$r16}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo=var1363, r0=var173, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry=var3283, $z0=var2988, $r7=var2521, $r10=var435, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo=var2375, $r8=var3009, $r9=var2864, $r11=var1320, $r14=var286, $r12=var735, $r13=var3801, $r15=var583, $r16=var3864}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo: boolean isResolved()>();	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Name = ");	$r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo nameAndTypeCPInfo>;	$r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", type = ");	$r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo nameAndTypeCPInfo>;	$r13 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo: java.lang.String getType()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 2
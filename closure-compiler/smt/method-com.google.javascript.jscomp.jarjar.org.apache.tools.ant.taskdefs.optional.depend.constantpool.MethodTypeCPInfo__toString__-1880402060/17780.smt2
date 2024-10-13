(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var290 0)
(declare-sort var1464 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isResolved/-1062758483 (var1464) Bool)
(declare-fun cast-from-var290-to-var1464 (var290) var1464)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun methodDescriptor/-1489831212 (var290) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var290 var290)
(declare-const var178 var290) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodTypeCPInfo 
(assert (not (= var178 null-var290)))
(assert true)
(define-const var3721 Bool (isResolved/-1062758483 (cast-from-var290-to-var1464 var178))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodTypeCPInfo: boolean isResolved()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= (ite var3721 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2153 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2153)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2153!1 String)
(assert (= var2153!1 ""))
(assert true)
(define-const var2818 String (append/672562846 var2153!1 "MethodDescriptor: ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MethodDescriptor: ") 
(declare-const var2153!2 String)
(assert (= var2153!2 (str.++ var2153!1 "MethodDescriptor: ")))
(define-const var699 String (methodDescriptor/-1489831212 var178)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodTypeCPInfo: java.lang.String methodDescriptor> 
(assert true)
(define-const var3314 String (append/672562846 var2818 var699)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2818!1 String)
(assert (= var2818!1 (str.++ var2818 var699)))
(assert true)
(define-const var1599 String (toString/-2075883882 var3314)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {isResolved/-1062758483=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry], boolean), cast-from-var290-to-var1464=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodTypeCPInfo], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), methodDescriptor/-1489831212=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodTypeCPInfo], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var290=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodTypeCPInfo, var178=r0, var1464=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry, var3721=$z0, var2153=$r5, var2818=$r7, var699=$r6, var3314=$r8, var1599=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodTypeCPInfo=var290, r0=var178, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry=var1464, $z0=var3721, $r5=var2153, $r7=var2818, $r6=var699, $r8=var3314, $r9=var1599}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodTypeCPInfo;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodTypeCPInfo: boolean isResolved()>();	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MethodDescriptor: ");	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodTypeCPInfo: java.lang.String methodDescriptor>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2
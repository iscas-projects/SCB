(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1841 0)
(declare-sort var3495 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isResolved/-1062758483 (var3495) Bool)
(declare-fun cast-from-var1841-to-var3495 (var1841) var3495)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun methodClassName/-393036593 (var1841) String)
(declare-fun methodName/-393036593 (var1841) String)
(declare-fun methodType/-393036593 (var1841) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1841 var1841)
(declare-const var3464 var1841) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodRefCPInfo 
(assert (not (= var3464 null-var1841)))
(assert true)
(define-const var3059 Bool (isResolved/-1062758483 (cast-from-var1841-to-var3495 var3464))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodRefCPInfo: boolean isResolved()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= (ite var3059 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2670 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2670)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2670!1 String)
(assert (= var2670!1 ""))
(assert true)
(define-const var3772 String (append/672562846 var2670!1 "Method : Class = ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method : Class = ") 
(declare-const var2670!2 String)
(assert (= var2670!2 (str.++ var2670!1 "Method : Class = ")))
(define-const var701 String (methodClassName/-393036593 var3464)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodRefCPInfo: java.lang.String methodClassName> 
(assert true)
(define-const var2020 String (append/672562846 var3772 var701)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3772!1 String)
(assert (= var3772!1 (str.++ var3772 var701)))
(assert true)
(define-const var2296 String (append/672562846 var2020 ", name = ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", name = ") 
(declare-const var2020!1 String)
(assert (= var2020!1 (str.++ var2020 ", name = ")))
(define-const var873 String (methodName/-393036593 var3464)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodRefCPInfo: java.lang.String methodName> 
(assert true)
(define-const var1697 String (append/672562846 var2296 var873)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2296!1 String)
(assert (= var2296!1 (str.++ var2296 var873)))
(assert true)
(define-const var1227 String (append/672562846 var1697 ", type = ")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", type = ") 
(declare-const var1697!1 String)
(assert (= var1697!1 (str.++ var1697 ", type = ")))
(define-const var1450 String (methodType/-393036593 var3464)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodRefCPInfo: java.lang.String methodType> 
(assert true)
(define-const var2428 String (append/672562846 var1227 var1450)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var1227!1 String)
(assert (= var1227!1 (str.++ var1227 var1450)))
(assert true)
(define-const var3239 String (toString/-2075883882 var2428)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {isResolved/-1062758483=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry], boolean), cast-from-var1841-to-var3495=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodRefCPInfo], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), methodClassName/-393036593=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodRefCPInfo], java.lang.String), methodName/-393036593=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodRefCPInfo], java.lang.String), methodType/-393036593=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodRefCPInfo], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1841=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodRefCPInfo, var3464=r0, var3495=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry, var3059=$z0, var2670=$r7, var3772=$r9, var701=$r8, var2020=$r10, var2296=$r12, var873=$r11, var1697=$r13, var1227=$r15, var1450=$r14, var2428=$r16, var3239=$r17}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodRefCPInfo=var1841, r0=var3464, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry=var3495, $z0=var3059, $r7=var2670, $r9=var3772, $r8=var701, $r10=var2020, $r12=var2296, $r11=var873, $r13=var1697, $r15=var1227, $r14=var1450, $r16=var2428, $r17=var3239}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodRefCPInfo;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodRefCPInfo: boolean isResolved()>();	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method : Class = ");	$r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodRefCPInfo: java.lang.String methodClassName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", name = ");	$r11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodRefCPInfo: java.lang.String methodName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", type = ");	$r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodRefCPInfo: java.lang.String methodType>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 2
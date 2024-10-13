(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var126 0)
(declare-sort var3762 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isResolved/-1062758483 (var3762) Bool)
(declare-fun cast-from-var126-to-var3762 (var126) var3762)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun interfaceMethodClassName/-1731426990 (var126) String)
(declare-fun interfaceMethodName/-1731426990 (var126) String)
(declare-fun interfaceMethodType/-1731426990 (var126) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var126 var126)
(declare-const var1839 var126) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo 
(assert (not (= var1839 null-var126)))
(assert true)
(define-const var1167 Bool (isResolved/-1062758483 (cast-from-var126-to-var3762 var1839))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo: boolean isResolved()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= (ite var1167 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var619 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var619)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var619!1 String)
(assert (= var619!1 ""))
(assert true)
(define-const var605 String (append/672562846 var619!1 "InterfaceMethod : Class = ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("InterfaceMethod : Class = ") 
(declare-const var619!2 String)
(assert (= var619!2 (str.++ var619!1 "InterfaceMethod : Class = ")))
(define-const var2560 String (interfaceMethodClassName/-1731426990 var1839)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo: java.lang.String interfaceMethodClassName> 
(assert true)
(define-const var786 String (append/672562846 var605 var2560)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var605!1 String)
(assert (= var605!1 (str.++ var605 var2560)))
(assert true)
(define-const var3222 String (append/672562846 var786 ", name = ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", name = ") 
(declare-const var786!1 String)
(assert (= var786!1 (str.++ var786 ", name = ")))
(define-const var1725 String (interfaceMethodName/-1731426990 var1839)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo: java.lang.String interfaceMethodName> 
(assert true)
(define-const var3519 String (append/672562846 var3222 var1725)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3222!1 String)
(assert (= var3222!1 (str.++ var3222 var1725)))
(assert true)
(define-const var149 String (append/672562846 var3519 ", type = ")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", type = ") 
(declare-const var3519!1 String)
(assert (= var3519!1 (str.++ var3519 ", type = ")))
(define-const var3597 String (interfaceMethodType/-1731426990 var1839)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo: java.lang.String interfaceMethodType> 
(assert true)
(define-const var2087 String (append/672562846 var149 var3597)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var149!1 String)
(assert (= var149!1 (str.++ var149 var3597)))
(assert true)
(define-const var2563 String (toString/-2075883882 var2087)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {isResolved/-1062758483=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry], boolean), cast-from-var126-to-var3762=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), interfaceMethodClassName/-1731426990=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo], java.lang.String), interfaceMethodName/-1731426990=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo], java.lang.String), interfaceMethodType/-1731426990=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var126=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo, var1839=r0, var3762=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry, var1167=$z0, var619=$r7, var605=$r9, var2560=$r8, var786=$r10, var3222=$r12, var1725=$r11, var3519=$r13, var149=$r15, var3597=$r14, var2087=$r16, var2563=$r17}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo=var126, r0=var1839, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry=var3762, $z0=var1167, $r7=var619, $r9=var605, $r8=var2560, $r10=var786, $r12=var3222, $r11=var1725, $r13=var3519, $r15=var149, $r14=var3597, $r16=var2087, $r17=var2563}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo: boolean isResolved()>();	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("InterfaceMethod : Class = ");	$r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo: java.lang.String interfaceMethodClassName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", name = ");	$r11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo: java.lang.String interfaceMethodName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", type = ");	$r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo: java.lang.String interfaceMethodType>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 2
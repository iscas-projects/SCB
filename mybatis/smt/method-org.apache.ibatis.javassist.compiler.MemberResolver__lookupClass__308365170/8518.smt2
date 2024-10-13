(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var191 0)
(declare-sort var893 0)
(declare-sort var44 0)
(declare-sort var2158 0)
(declare-sort var417 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getInvalidNames/72566763 (var191) var44)
(declare-fun var44_get/1088891777 (var44 var2158) var2158)
(declare-fun cast-from-String-to-var2158 (String) var2158)
(declare-fun cast-from-var2158-to-String (var2158) String)
(declare-fun var417-init () var417)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-157978614 (var417 String) void)
(declare-const null-var191 var191)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2148 var191) ; Statement: r0 := @this: org.apache.ibatis.javassist.compiler.MemberResolver 
(assert (not (= var2148 null-var191)))
(declare-const var2193 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2193 null-String)))
(declare-const var2092 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2092 null-Bool)))
(assert true)
(define-const var1492 var44 (getInvalidNames/72566763 var2148)) ; Statement: r1 = specialinvoke r0.<org.apache.ibatis.javassist.compiler.MemberResolver: java.util.Map getInvalidNames()>() 
(define-const var3513 var2158 (var44_get/1088891777 var1492 (cast-from-String-to-var2158 var2193))) ; Statement: $r3 = interfaceinvoke r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2) 
(define-const var2584 String (cast-from-var2158-to-String var3513)) ; Statement: r4 = (java.lang.String) $r3 
 ; Statement: if r4 != "<invalid>" goto (branch) 
(assert (not (not (= var2584 "<invalid>")))) ; Negate: Cond: r4 != "<invalid>"  
(define-const var3490 var417 var417-init) ; Statement: $r8 = new org.apache.ibatis.javassist.compiler.CompileError 
(define-const var467 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var467)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var467!1 String)
(assert (= var467!1 ""))
(assert true)
(define-const var623 String (append/672562846 var467!1 "no such class: ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no such class: ") 
(declare-const var467!2 String)
(assert (= var467!2 (str.++ var467!1 "no such class: ")))
(assert true)
(define-const var3844 String (append/672562846 var623 var2193)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var623!1 String)
(assert (= var623!1 (str.++ var623 var2193)))
(assert true)
(define-const var2093 String (toString/-2075883882 var3844)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-157978614 var3490 var2093)) ; Statement: specialinvoke $r8.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r12) 

(declare-const var3490!1 var417)
(declare-const var2093!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getInvalidNames/72566763=([org.apache.ibatis.javassist.compiler.MemberResolver], java.util.Map), var44_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2158=([java.lang.String], java.lang.Object), cast-from-var2158-to-String=([java.lang.Object], java.lang.String), var417-init=([], org.apache.ibatis.javassist.compiler.CompileError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-157978614=([org.apache.ibatis.javassist.compiler.CompileError, java.lang.String], void)}
; {var191=org.apache.ibatis.javassist.compiler.MemberResolver, var2148=r0, var2193=r2, var893=null_type, var2092=z0, var44=java.util.Map, var1492=r1, var2158=java.lang.Object, var3513=$r3, var2584=r4, var417=org.apache.ibatis.javassist.compiler.CompileError, var3490=$r8, var467=$r9, var623=$r10, var3844=$r11, var2093=$r12}
; {org.apache.ibatis.javassist.compiler.MemberResolver=var191, r0=var2148, r2=var2193, null_type=var893, z0=var2092, java.util.Map=var44, r1=var1492, java.lang.Object=var2158, $r3=var3513, r4=var2584, org.apache.ibatis.javassist.compiler.CompileError=var417, $r8=var3490, $r9=var467, $r10=var623, $r11=var3844, $r12=var2093}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.compiler.MemberResolver;	r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	r1 = specialinvoke r0.<org.apache.ibatis.javassist.compiler.MemberResolver: java.util.Map getInvalidNames()>();	$r3 = interfaceinvoke r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2);	r4 = (java.lang.String) $r3;	if r4 != "<invalid>" goto (branch);	$r8 = new org.apache.ibatis.javassist.compiler.CompileError;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no such class: ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r12);	throw $r8
;block_num 2
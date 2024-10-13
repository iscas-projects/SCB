(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1401 0)
(declare-sort var2132 0)
(declare-sort var2457 0)
(declare-sort var135 0)
(declare-sort var3966 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var135-init () var135)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3966) String)
(declare-fun cast-from-var2457-to-var3966 (var2457) var3966)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var135 String) void)
(declare-const null-var1401 var1401)
(declare-const null-var2132 var2132)
(declare-const null-var2457 var2457)
(declare-const var1177 var1401) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ArrayType 
(assert (not (= var1177 null-var1401)))
(declare-const var3599 var2132) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.stackmap.TypeData 
(assert (not (= var3599 null-var2132)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var735 var2457) ; Statement: $r4 := @caughtexception 
(assert (not (= var735 null-var2457)))
(define-const var2546 var135 var135-init) ; Statement: $r5 = new java.lang.RuntimeException 
(define-const var3037 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3037)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3037!1 String)
(assert (= var3037!1 ""))
(assert true)
(define-const var429 String (append/672562846 var3037!1 "fatal: ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("fatal: ") 
(declare-const var3037!2 String)
(assert (= var3037!2 (str.++ var3037!1 "fatal: ")))
(assert true)
(define-const var2207 String (append/-1031950772 var429 (cast-from-var2457-to-var3966 var735))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var429!1 String)
(assert (str.prefixof var429 var429!1))
(assert true)
(define-const var805 String (toString/-2075883882 var2207)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2546 var805)) ; Statement: specialinvoke $r5.<java.lang.RuntimeException: void <init>(java.lang.String)>($r9) 

(declare-const var2546!1 var135)
(declare-const var805!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var135-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2457-to-var3966=([org.apache.ibatis.javassist.bytecode.BadBytecode], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var1401=org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ArrayType, var1177=r1, var2132=org.apache.ibatis.javassist.bytecode.stackmap.TypeData, var3599=r0, var2457=org.apache.ibatis.javassist.bytecode.BadBytecode, var735=$r4, var135=java.lang.RuntimeException, var2546=$r5, var3037=$r6, var429=$r7, var3966=java.lang.Object, var2207=$r8, var805=$r9}
; {org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ArrayType=var1401, r1=var1177, org.apache.ibatis.javassist.bytecode.stackmap.TypeData=var2132, r0=var3599, org.apache.ibatis.javassist.bytecode.BadBytecode=var2457, $r4=var735, java.lang.RuntimeException=var135, $r5=var2546, $r6=var3037, $r7=var429, java.lang.Object=var3966, $r8=var2207, $r9=var805}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ArrayType;	r0 := @parameter0: org.apache.ibatis.javassist.bytecode.stackmap.TypeData;	$r4 := @caughtexception;	$r5 = new java.lang.RuntimeException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("fatal: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.RuntimeException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 2
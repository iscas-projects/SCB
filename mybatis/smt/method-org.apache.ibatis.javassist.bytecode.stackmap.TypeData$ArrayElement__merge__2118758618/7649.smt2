(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var925 0)
(declare-sort var3612 0)
(declare-sort var2428 0)
(declare-sort var3747 0)
(declare-sort var2135 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3747-init () var3747)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2135) String)
(declare-fun cast-from-var2428-to-var2135 (var2428) var2135)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var3747 String) void)
(declare-const null-var925 var925)
(declare-const null-var3612 var3612)
(declare-const null-var2428 var2428)
(declare-const var2196 var925) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ArrayElement 
(assert (not (= var2196 null-var925)))
(declare-const var2374 var3612) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.stackmap.TypeData 
(assert (not (= var2374 null-var3612)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var141 var2428) ; Statement: $r4 := @caughtexception 
(assert (not (= var141 null-var2428)))
(define-const var2997 var3747 var3747-init) ; Statement: $r5 = new java.lang.RuntimeException 
(define-const var1659 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1659)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1659!1 String)
(assert (= var1659!1 ""))
(assert true)
(define-const var3093 String (append/672562846 var1659!1 "fatal: ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("fatal: ") 
(declare-const var1659!2 String)
(assert (= var1659!2 (str.++ var1659!1 "fatal: ")))
(assert true)
(define-const var1283 String (append/-1031950772 var3093 (cast-from-var2428-to-var2135 var141))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var3093!1 String)
(assert (str.prefixof var3093 var3093!1))
(assert true)
(define-const var2039 String (toString/-2075883882 var1283)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2997 var2039)) ; Statement: specialinvoke $r5.<java.lang.RuntimeException: void <init>(java.lang.String)>($r9) 

(declare-const var2997!1 var3747)
(declare-const var2039!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3747-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2428-to-var2135=([org.apache.ibatis.javassist.bytecode.BadBytecode], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var925=org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ArrayElement, var2196=r1, var3612=org.apache.ibatis.javassist.bytecode.stackmap.TypeData, var2374=r0, var2428=org.apache.ibatis.javassist.bytecode.BadBytecode, var141=$r4, var3747=java.lang.RuntimeException, var2997=$r5, var1659=$r6, var3093=$r7, var2135=java.lang.Object, var1283=$r8, var2039=$r9}
; {org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ArrayElement=var925, r1=var2196, org.apache.ibatis.javassist.bytecode.stackmap.TypeData=var3612, r0=var2374, org.apache.ibatis.javassist.bytecode.BadBytecode=var2428, $r4=var141, java.lang.RuntimeException=var3747, $r5=var2997, $r6=var1659, $r7=var3093, java.lang.Object=var2135, $r8=var1283, $r9=var2039}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ArrayElement;	r0 := @parameter0: org.apache.ibatis.javassist.bytecode.stackmap.TypeData;	$r4 := @caughtexception;	$r5 = new java.lang.RuntimeException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("fatal: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.RuntimeException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 2
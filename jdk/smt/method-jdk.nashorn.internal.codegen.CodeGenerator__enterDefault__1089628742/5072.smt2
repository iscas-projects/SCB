(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1240 0)
(declare-sort var3542 0)
(declare-sort var1363 0)
(declare-sort var1726 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1363-init () var1363)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1726) ClassObject)
(declare-fun cast-from-var3542-to-var1726 (var3542) var1726)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var1363 var1726) void)
(declare-fun cast-from-String-to-var1726 (String) var1726)
(declare-const null-var1240 var1240)
(declare-const null-var3542 var3542)
(declare-const var474 var1240) ; Statement: r8 := @this: jdk.nashorn.internal.codegen.CodeGenerator 
(assert (not (= var474 null-var1240)))
(declare-const var307 var3542) ; Statement: r2 := @parameter0: jdk.nashorn.internal.ir.Node 
(assert (not (= var307 null-var3542)))
(define-const var934 var1363 var1363-init) ; Statement: $r0 = new java.lang.AssertionError 
(define-const var3325 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3325)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3325!1 String)
(assert (= var3325!1 ""))
(assert true)
(define-const var151 String (append/672562846 var3325!1 "Code generator entered node of type ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Code generator entered node of type ") 
(declare-const var3325!2 String)
(assert (= var3325!2 (str.++ var3325!1 "Code generator entered node of type ")))
(assert true)
(define-const var3939 ClassObject (getClass/1258963082 (cast-from-var3542-to-var1726 var307))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2788 String (getName/-1958580599 var3939)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2827 String (append/672562846 var151 var2788)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var151!1 String)
(assert (= var151!1 (str.++ var151 var2788)))
(assert true)
(define-const var460 String (toString/-2075883882 var2827)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var934 (cast-from-String-to-var1726 var460))) ; Statement: specialinvoke $r0.<java.lang.AssertionError: void <init>(java.lang.Object)>($r7) 

(declare-const var934!1 var1363)
(declare-const var460!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1363-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3542-to-var1726=([jdk.nashorn.internal.ir.Node], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var1726=([java.lang.String], java.lang.Object)}
; {var1240=jdk.nashorn.internal.codegen.CodeGenerator, var474=r8, var3542=jdk.nashorn.internal.ir.Node, var307=r2, var1363=java.lang.AssertionError, var934=$r0, var3325=$r1, var151=$r5, var1726=java.lang.Object, var3939=$r3, var2788=$r4, var2827=$r6, var460=$r7}
; {jdk.nashorn.internal.codegen.CodeGenerator=var1240, r8=var474, jdk.nashorn.internal.ir.Node=var3542, r2=var307, java.lang.AssertionError=var1363, $r0=var934, $r1=var3325, $r5=var151, java.lang.Object=var1726, $r3=var3939, $r4=var2788, $r6=var2827, $r7=var460}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: jdk.nashorn.internal.codegen.CodeGenerator;	r2 := @parameter0: jdk.nashorn.internal.ir.Node;	$r0 = new java.lang.AssertionError;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Code generator entered node of type ");	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.AssertionError: void <init>(java.lang.Object)>($r7);	throw $r0
;block_num 1
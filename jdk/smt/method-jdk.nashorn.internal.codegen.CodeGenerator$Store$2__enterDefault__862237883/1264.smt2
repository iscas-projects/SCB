(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1689 0)
(declare-sort var1886 0)
(declare-sort var1060 0)
(declare-sort var9 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1060-init () var1060)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var9) String)
(declare-fun cast-from-var1886-to-var9 (var1886) var9)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var1060 var9) void)
(declare-fun cast-from-String-to-var9 (String) var9)
(declare-const null-var1689 var1689)
(declare-const null-var1886 var1886)
(declare-const var2592 var1689) ; Statement: r7 := @this: jdk.nashorn.internal.codegen.CodeGenerator$Store$2 
(assert (not (= var2592 null-var1689)))
(declare-const var471 var1886) ; Statement: r2 := @parameter0: jdk.nashorn.internal.ir.Node 
(assert (not (= var471 null-var1886)))
(define-const var1389 var1060 var1060-init) ; Statement: $r0 = new java.lang.AssertionError 
(define-const var1553 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1553)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1553!1 String)
(assert (= var1553!1 ""))
(assert true)
(define-const var2790 String (append/672562846 var1553!1 "Unexpected node ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected node ") 
(declare-const var1553!2 String)
(assert (= var1553!2 (str.++ var1553!1 "Unexpected node ")))
(assert true)
(define-const var1517 String (append/-1031950772 var2790 (cast-from-var1886-to-var9 var471))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2790!1 String)
(assert (str.prefixof var2790 var2790!1))
(assert true)
(define-const var1453 String (append/672562846 var1517 " in store epilogue")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in store epilogue") 
(declare-const var1517!1 String)
(assert (= var1517!1 (str.++ var1517 " in store epilogue")))
(assert true)
(define-const var885 String (toString/-2075883882 var1453)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var1389 (cast-from-String-to-var9 var885))) ; Statement: specialinvoke $r0.<java.lang.AssertionError: void <init>(java.lang.Object)>($r6) 

(declare-const var1389!1 var1060)
(declare-const var885!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1060-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1886-to-var9=([jdk.nashorn.internal.ir.Node], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var9=([java.lang.String], java.lang.Object)}
; {var1689=jdk.nashorn.internal.codegen.CodeGenerator$Store$2, var2592=r7, var1886=jdk.nashorn.internal.ir.Node, var471=r2, var1060=java.lang.AssertionError, var1389=$r0, var1553=$r1, var2790=$r3, var9=java.lang.Object, var1517=$r4, var1453=$r5, var885=$r6}
; {jdk.nashorn.internal.codegen.CodeGenerator$Store$2=var1689, r7=var2592, jdk.nashorn.internal.ir.Node=var1886, r2=var471, java.lang.AssertionError=var1060, $r0=var1389, $r1=var1553, $r3=var2790, java.lang.Object=var9, $r4=var1517, $r5=var1453, $r6=var885}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: jdk.nashorn.internal.codegen.CodeGenerator$Store$2;	r2 := @parameter0: jdk.nashorn.internal.ir.Node;	$r0 = new java.lang.AssertionError;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected node ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in store epilogue");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.AssertionError: void <init>(java.lang.Object)>($r6);	throw $r0
;block_num 1
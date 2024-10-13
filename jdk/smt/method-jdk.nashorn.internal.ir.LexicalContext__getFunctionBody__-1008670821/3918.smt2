(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2822 0)
(declare-sort var3643 0)
(declare-sort var3317 0)
(declare-sort var3528 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sp/-379439865 (var2822) Int)
(declare-fun var3317-init () var3317)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1714936033 (var3643) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var3317 var3528) void)
(declare-fun cast-from-String-to-var3528 (String) var3528)
(declare-const null-var2822 var2822)
(declare-const null-var3643 var3643)
(declare-const var540 var2822) ; Statement: r0 := @this: jdk.nashorn.internal.ir.LexicalContext 
(assert (not (= var540 null-var2822)))
(declare-const var2581 var3643) ; Statement: r3 := @parameter0: jdk.nashorn.internal.ir.FunctionNode 
(assert (not (= var2581 null-var3643)))
(define-const var430 Int (sp/-379439865 var540)) ; Statement: $i0 = r0.<jdk.nashorn.internal.ir.LexicalContext: int sp> 
(define-const var1125 Int (- var430 1)) ; Statement: i2 = $i0 - 1 
(assert true) ; Non Conditional
 ; Statement: if i2 < 0 goto $r14 = new java.lang.AssertionError 
(assert (< var1125 0)) ; Cond: i2 < 0 
(define-const var2361 var3317 var3317-init) ; Statement: $r14 = new java.lang.AssertionError 
(define-const var2109 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2109)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2109!1 String)
(assert (= var2109!1 ""))
(assert true)
(define-const var3047 String (getName/-1714936033 var2581)) ; Statement: $r4 = virtualinvoke r3.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getName()>() 
(assert true)
(define-const var1388 String (append/672562846 var2109!1 var3047)) ; Statement: $r5 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2109!2 String)
(assert (= var2109!2 (str.++ var2109!1 var3047)))
(assert true)
(define-const var732 String (append/672562846 var1388 " not on context stack")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not on context stack") 
(declare-const var1388!1 String)
(assert (= var1388!1 (str.++ var1388 " not on context stack")))
(assert true)
(define-const var3407 String (toString/-2075883882 var732)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var2361 (cast-from-String-to-var3528 var3407))) ; Statement: specialinvoke $r14.<java.lang.AssertionError: void <init>(java.lang.Object)>($r7) 

(declare-const var2361!1 var3317)
(declare-const var3407!1 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {sp/-379439865=([jdk.nashorn.internal.ir.LexicalContext], int), var3317-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1714936033=([jdk.nashorn.internal.ir.FunctionNode], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var3528=([java.lang.String], java.lang.Object)}
; {var2822=jdk.nashorn.internal.ir.LexicalContext, var540=r0, var3643=jdk.nashorn.internal.ir.FunctionNode, var2581=r3, var430=$i0, var1125=i2, var3317=java.lang.AssertionError, var2361=$r14, var2109=$r13, var3047=$r4, var1388=$r5, var732=$r6, var3407=$r7, var3528=java.lang.Object}
; {jdk.nashorn.internal.ir.LexicalContext=var2822, r0=var540, jdk.nashorn.internal.ir.FunctionNode=var3643, r3=var2581, $i0=var430, i2=var1125, java.lang.AssertionError=var3317, $r14=var2361, $r13=var2109, $r4=var3047, $r5=var1388, $r6=var732, $r7=var3407, java.lang.Object=var3528}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.LexicalContext;	r3 := @parameter0: jdk.nashorn.internal.ir.FunctionNode;	$i0 = r0.<jdk.nashorn.internal.ir.LexicalContext: int sp>;	i2 = $i0 - 1;	if i2 < 0 goto $r14 = new java.lang.AssertionError;	$r14 = new java.lang.AssertionError;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke r3.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getName()>();	$r5 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not on context stack");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<java.lang.AssertionError: void <init>(java.lang.Object)>($r7);	throw $r14
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3623 0)
(declare-sort var3155 0)
(declare-sort var2623 0)
(declare-sort var1436 0)
(declare-sort var731 0)
(declare-sort var1330 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1436!class ClassObject)
(declare-fun getName/-601631167 (var3155) String)
(declare-fun var2623-init () var2623)
(declare-fun <init>/1848789429 (var2623 var3623 ClassObject) void)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun cast-from-var2623-to-Iterator (var2623) Iterator)
(declare-fun var731-init () var731)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var731 var1330) void)
(declare-fun cast-from-String-to-var1330 (String) var1330)
(declare-const null-var3623 var3623)
(declare-const null-var3155 var3155)
(declare-const var636 var3623) ; Statement: r3 := @this: jdk.nashorn.internal.ir.LexicalContext 
(assert (not (= var636 null-var3623)))
(declare-const var3132 var3155) ; Statement: r0 := @parameter0: jdk.nashorn.internal.ir.Symbol 
(assert (not (= var3132 null-var3155)))
(assert true)
(define-const var66 String (getName/-601631167 var3132)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.ir.Symbol: java.lang.String getName()>() 
(define-const var1445 var2623 var2623-init) ; Statement: $r2 = new jdk.nashorn.internal.ir.LexicalContext$NodeIterator 
(assert true)
;(assert (<init>/1848789429 var1445 var636 var1436!class)) ; Statement: specialinvoke $r2.<jdk.nashorn.internal.ir.LexicalContext$NodeIterator: void <init>(jdk.nashorn.internal.ir.LexicalContext,java.lang.Class)>(r3, class "Ljdk/nashorn/internal/ir/LexicalContextNode;") 

(declare-const var1445!1 var2623)
(declare-const var636!1 var3623)
(declare-const var337 ClassObject)
(assert true) ; Non Conditional
(define-const var2411 Bool (Iterator_hasNext/-1669924200 (cast-from-var2623-to-Iterator var1445!1))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new java.lang.AssertionError 
(assert (= (ite var2411 1 0) 0)) ; Cond: $z0 == 0 
(define-const var190 var731 var731-init) ; Statement: $r4 = new java.lang.AssertionError 
(define-const var324 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var324)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var324!1 String)
(assert (= var324!1 ""))
(assert true)
(define-const var3260 String (append/672562846 var324!1 "Couldn\u0027t find symbol ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Couldn\'t find symbol ") 
(declare-const var324!2 String)
(assert (= var324!2 (str.++ var324!1 "Couldn\u0027t find symbol ")))
(assert true)
(define-const var2677 String (append/672562846 var3260 var66)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3260!1 String)
(assert (= var3260!1 (str.++ var3260 var66)))
(assert true)
(define-const var294 String (append/672562846 var2677 " in the context")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in the context") 
(declare-const var2677!1 String)
(assert (= var2677!1 (str.++ var2677 " in the context")))
(assert true)
(define-const var88 String (toString/-2075883882 var294)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var190 (cast-from-String-to-var1330 var88))) ; Statement: specialinvoke $r4.<java.lang.AssertionError: void <init>(java.lang.Object)>($r9) 

(declare-const var190!1 var731)
(declare-const var88!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-601631167=([jdk.nashorn.internal.ir.Symbol], java.lang.String), var2623-init=([], jdk.nashorn.internal.ir.LexicalContext$NodeIterator), <init>/1848789429=([jdk.nashorn.internal.ir.LexicalContext$NodeIterator, jdk.nashorn.internal.ir.LexicalContext, java.lang.Class], void), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), cast-from-var2623-to-Iterator=([jdk.nashorn.internal.ir.LexicalContext$NodeIterator], java.util.Iterator), var731-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var1330=([java.lang.String], java.lang.Object)}
; {var3623=jdk.nashorn.internal.ir.LexicalContext, var636=r3, var3155=jdk.nashorn.internal.ir.Symbol, var3132=r0, var66=r1, var2623=jdk.nashorn.internal.ir.LexicalContext$NodeIterator, var1445=$r2, var1436=jdk.nashorn.internal.ir.LexicalContextNode, var337=class "Ljdk/nashorn/internal/ir/LexicalContextNode;", var2411=$z0, var731=java.lang.AssertionError, var190=$r4, var324=$r5, var3260=$r6, var2677=$r7, var294=$r8, var88=$r9, var1330=java.lang.Object}
; {jdk.nashorn.internal.ir.LexicalContext=var3623, r3=var636, jdk.nashorn.internal.ir.Symbol=var3155, r0=var3132, r1=var66, jdk.nashorn.internal.ir.LexicalContext$NodeIterator=var2623, $r2=var1445, jdk.nashorn.internal.ir.LexicalContextNode=var1436, class "Ljdk/nashorn/internal/ir/LexicalContextNode;"=var337, $z0=var2411, java.lang.AssertionError=var731, $r4=var190, $r5=var324, $r6=var3260, $r7=var2677, $r8=var294, $r9=var88, java.lang.Object=var1330}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: jdk.nashorn.internal.ir.LexicalContext;	r0 := @parameter0: jdk.nashorn.internal.ir.Symbol;	r1 = virtualinvoke r0.<jdk.nashorn.internal.ir.Symbol: java.lang.String getName()>();	$r2 = new jdk.nashorn.internal.ir.LexicalContext$NodeIterator;	specialinvoke $r2.<jdk.nashorn.internal.ir.LexicalContext$NodeIterator: void <init>(jdk.nashorn.internal.ir.LexicalContext,java.lang.Class)>(r3, class "Ljdk/nashorn/internal/ir/LexicalContextNode;");	$z0 = interfaceinvoke $r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new java.lang.AssertionError;	$r4 = new java.lang.AssertionError;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Couldn\'t find symbol ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in the context");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.AssertionError: void <init>(java.lang.Object)>($r9);	throw $r4
;block_num 3
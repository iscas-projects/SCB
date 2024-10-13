(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3239 0)
(declare-sort var1178 0)
(declare-sort var311 0)
(declare-sort var2378 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-601631167 (var1178) String)
(declare-fun getBlocks/1079132746 (var3239) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var311-init () var311)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var311 var2378) void)
(declare-fun cast-from-String-to-var2378 (String) var2378)
(declare-const null-var3239 var3239)
(declare-const null-var1178 var1178)
(declare-const var904 var3239) ; Statement: r2 := @this: jdk.nashorn.internal.ir.LexicalContext 
(assert (not (= var904 null-var3239)))
(declare-const var1520 var1178) ; Statement: r0 := @parameter0: jdk.nashorn.internal.ir.Symbol 
(assert (not (= var1520 null-var1178)))
(assert true)
(define-const var3824 String (getName/-601631167 var1520)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.ir.Symbol: java.lang.String getName()>() 
(assert true)
(define-const var340 Iterator (getBlocks/1079132746 var904)) ; Statement: r3 = virtualinvoke r2.<jdk.nashorn.internal.ir.LexicalContext: java.util.Iterator getBlocks()>() 
(assert true) ; Non Conditional
(define-const var949 Bool (Iterator_hasNext/-1669924200 var340)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new java.lang.AssertionError 
(assert (= (ite var949 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2842 var311 var311-init) ; Statement: $r4 = new java.lang.AssertionError 
(define-const var1223 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1223)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1223!1 String)
(assert (= var1223!1 ""))
(assert true)
(define-const var2598 String (append/672562846 var1223!1 "Couldn\u0027t find symbol ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Couldn\'t find symbol ") 
(declare-const var1223!2 String)
(assert (= var1223!2 (str.++ var1223!1 "Couldn\u0027t find symbol ")))
(assert true)
(define-const var2315 String (append/672562846 var2598 var3824)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2598!1 String)
(assert (= var2598!1 (str.++ var2598 var3824)))
(assert true)
(define-const var1890 String (append/672562846 var2315 " in the context")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in the context") 
(declare-const var2315!1 String)
(assert (= var2315!1 (str.++ var2315 " in the context")))
(assert true)
(define-const var889 String (toString/-2075883882 var1890)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var2842 (cast-from-String-to-var2378 var889))) ; Statement: specialinvoke $r4.<java.lang.AssertionError: void <init>(java.lang.Object)>($r9) 

(declare-const var2842!1 var311)
(declare-const var889!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-601631167=([jdk.nashorn.internal.ir.Symbol], java.lang.String), getBlocks/1079132746=([jdk.nashorn.internal.ir.LexicalContext], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var311-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var2378=([java.lang.String], java.lang.Object)}
; {var3239=jdk.nashorn.internal.ir.LexicalContext, var904=r2, var1178=jdk.nashorn.internal.ir.Symbol, var1520=r0, var3824=r1, var340=r3, var949=$z0, var311=java.lang.AssertionError, var2842=$r4, var1223=$r5, var2598=$r6, var2315=$r7, var1890=$r8, var889=$r9, var2378=java.lang.Object}
; {jdk.nashorn.internal.ir.LexicalContext=var3239, r2=var904, jdk.nashorn.internal.ir.Symbol=var1178, r0=var1520, r1=var3824, r3=var340, $z0=var949, java.lang.AssertionError=var311, $r4=var2842, $r5=var1223, $r6=var2598, $r7=var2315, $r8=var1890, $r9=var889, java.lang.Object=var2378}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: jdk.nashorn.internal.ir.LexicalContext;	r0 := @parameter0: jdk.nashorn.internal.ir.Symbol;	r1 = virtualinvoke r0.<jdk.nashorn.internal.ir.Symbol: java.lang.String getName()>();	r3 = virtualinvoke r2.<jdk.nashorn.internal.ir.LexicalContext: java.util.Iterator getBlocks()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new java.lang.AssertionError;	$r4 = new java.lang.AssertionError;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Couldn\'t find symbol ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in the context");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.AssertionError: void <init>(java.lang.Object)>($r9);	throw $r4
;block_num 3
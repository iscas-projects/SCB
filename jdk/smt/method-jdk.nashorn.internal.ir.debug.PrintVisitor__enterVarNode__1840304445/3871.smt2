(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2316 0)
(declare-sort var1520 0)
(declare-sort var975 0)
(declare-sort var2955 0)
(declare-sort var3053 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sb/709861400 (var2316) String)
(declare-fun isConst/-351435085 (var1520) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-639057283 (var1520) var975)
(declare-fun printTypes/709861400 (var2316) Bool)
(declare-fun toString/-866469929 (var975 String Bool) void)
(declare-fun printLocalVariableConversion/1292819794 (var2316 var2955) void)
(declare-fun cast-from-var975-to-var2955 (var975) var2955)
(declare-fun getInit/-248110068 (var1520) var3053)
(declare-const null-var2316 var2316)
(declare-const null-var1520 var1520)
(declare-const null-var3053 var3053)
(declare-const var2944 var2316) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.PrintVisitor 
(assert (not (= var2944 null-var2316)))
(declare-const var3298 var1520) ; Statement: r1 := @parameter0: jdk.nashorn.internal.ir.VarNode 
(assert (not (= var3298 null-var1520)))
(define-const var3307 String (sb/709861400 var2944)) ; Statement: $r3 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(assert true)
(define-const var1407 Bool (isConst/-351435085 var3298)) ; Statement: $z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.VarNode: boolean isConst()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<jdk.nashorn.internal.ir.VarNode: boolean isLet()>() 
(assert (not (= (ite var1407 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1175 String "const ") ; Statement: $r4 = "const " 
 ; Statement: goto [?= virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3307 var1175)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3307!1 String)
(assert (= var3307!1 (str.++ var3307 var1175)))
(assert true)
(define-const var2354 var975 (getName/-639057283 var3298)) ; Statement: $r5 = virtualinvoke r1.<jdk.nashorn.internal.ir.VarNode: jdk.nashorn.internal.ir.IdentNode getName()>() 
(define-const var844 String (sb/709861400 var2944)) ; Statement: $r6 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(define-const var1099 Bool (printTypes/709861400 var2944)) ; Statement: $z2 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: boolean printTypes> 
(assert true)
;(assert (toString/-866469929 var2354 var844 var1099)) ; Statement: virtualinvoke $r5.<jdk.nashorn.internal.ir.IdentNode: void toString(java.lang.StringBuilder,boolean)>($r6, $z2) 

(declare-const var2354!1 var975)
(declare-const var844!1 String)
(declare-const var1099!1 Bool)
(assert true)
(define-const var2654 var975 (getName/-639057283 var3298)) ; Statement: $r7 = virtualinvoke r1.<jdk.nashorn.internal.ir.VarNode: jdk.nashorn.internal.ir.IdentNode getName()>() 
(assert true)
;(assert (printLocalVariableConversion/1292819794 var2944 (cast-from-var975-to-var2955 var2654))) ; Statement: specialinvoke r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: void printLocalVariableConversion(jdk.nashorn.internal.ir.JoinPredecessor)>($r7) 

(declare-const var2944!1 var2316)
(declare-const var2654!1 var975)
(assert true)
(define-const var401 var3053 (getInit/-248110068 var3298)) ; Statement: $r8 = virtualinvoke r1.<jdk.nashorn.internal.ir.VarNode: jdk.nashorn.internal.ir.Expression getInit()>() 
 ; Statement: if $r8 == null goto return 0 
(assert (= var401 null-var3053)) ; Cond: $r8 == null 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {sb/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], java.lang.StringBuilder), isConst/-351435085=([jdk.nashorn.internal.ir.VarNode], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-639057283=([jdk.nashorn.internal.ir.VarNode], jdk.nashorn.internal.ir.IdentNode), printTypes/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], boolean), toString/-866469929=([jdk.nashorn.internal.ir.IdentNode, java.lang.StringBuilder, boolean], void), printLocalVariableConversion/1292819794=([jdk.nashorn.internal.ir.debug.PrintVisitor, jdk.nashorn.internal.ir.JoinPredecessor], void), cast-from-var975-to-var2955=([jdk.nashorn.internal.ir.IdentNode], jdk.nashorn.internal.ir.JoinPredecessor), getInit/-248110068=([jdk.nashorn.internal.ir.VarNode], jdk.nashorn.internal.ir.Expression)}
; {var2316=jdk.nashorn.internal.ir.debug.PrintVisitor, var2944=r0, var1520=jdk.nashorn.internal.ir.VarNode, var3298=r1, var3307=$r3, var1407=$z0, var1175=$r4, var975=jdk.nashorn.internal.ir.IdentNode, var2354=$r5, var844=$r6, var1099=$z2, var2654=$r7, var2955=jdk.nashorn.internal.ir.JoinPredecessor, var3053=jdk.nashorn.internal.ir.Expression, var401=$r8}
; {jdk.nashorn.internal.ir.debug.PrintVisitor=var2316, r0=var2944, jdk.nashorn.internal.ir.VarNode=var1520, r1=var3298, $r3=var3307, $z0=var1407, $r4=var1175, jdk.nashorn.internal.ir.IdentNode=var975, $r5=var2354, $r6=var844, $z2=var1099, $r7=var2654, jdk.nashorn.internal.ir.JoinPredecessor=var2955, jdk.nashorn.internal.ir.Expression=var3053, $r8=var401}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<jdk.nashorn.internal.ir.IdentNode: void toString(java.lang.StringBuilder,boolean)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.PrintVisitor;	r1 := @parameter0: jdk.nashorn.internal.ir.VarNode;	$r3 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	$z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.VarNode: boolean isConst()>();	if $z0 == 0 goto $z1 = virtualinvoke r1.<jdk.nashorn.internal.ir.VarNode: boolean isLet()>();	$r4 = "const ";	goto [?= virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4)];	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = virtualinvoke r1.<jdk.nashorn.internal.ir.VarNode: jdk.nashorn.internal.ir.IdentNode getName()>();	$r6 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	$z2 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: boolean printTypes>;	virtualinvoke $r5.<jdk.nashorn.internal.ir.IdentNode: void toString(java.lang.StringBuilder,boolean)>($r6, $z2);	$r7 = virtualinvoke r1.<jdk.nashorn.internal.ir.VarNode: jdk.nashorn.internal.ir.IdentNode getName()>();	specialinvoke r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: void printLocalVariableConversion(jdk.nashorn.internal.ir.JoinPredecessor)>($r7);	$r8 = virtualinvoke r1.<jdk.nashorn.internal.ir.VarNode: jdk.nashorn.internal.ir.Expression getInit()>();	if $r8 == null goto return 0;	return 0
;block_num 4
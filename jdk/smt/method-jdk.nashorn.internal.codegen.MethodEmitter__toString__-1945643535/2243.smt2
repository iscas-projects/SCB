(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var222 0)
(declare-sort var2156 0)
(declare-sort var3781 0)
(declare-sort var3722 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun functionNode/656530713 (var222) var2156)
(declare-fun cast-from-String-to-var3781 (String) var3781)
(declare-fun getName/-1714936033 (var2156) String)
(declare-fun toString/-522406933 (var3781) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var3722_id/-2071121520 (var3781) String)
(declare-fun cast-from-var222-to-var3781 (var222) var3781)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var222 var222)
(declare-const null-var2156 var2156)
(declare-const var1550 var222) ; Statement: r1 := @this: jdk.nashorn.internal.codegen.MethodEmitter 
(assert (not (= var1550 null-var222)))
(define-const var3202 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3202)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3202!1 String)
(assert (= var3202!1 ""))
(assert true)
(define-const var507 String (append/672562846 var3202!1 "methodEmitter: ")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("methodEmitter: ") 
(declare-const var3202!2 String)
(assert (= var3202!2 (str.++ var3202!1 "methodEmitter: ")))
(define-const var3773 var2156 (functionNode/656530713 var1550)) ; Statement: $r2 = r1.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.ir.FunctionNode functionNode> 
 ; Statement: if $r2 != null goto $r3 = r1.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.ir.FunctionNode functionNode> 
(assert (not (= var3773 null-var2156))) ; Cond: $r2 != null 
(define-const var959 var2156 (functionNode/656530713 var1550)) ; Statement: $r3 = r1.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.ir.FunctionNode functionNode> 
(assert true)
(define-const var1644 var3781 (cast-from-String-to-var3781 (getName/-1714936033 var959))) ; Statement: $r11 = virtualinvoke $r3.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getName()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var3391 String (toString/-522406933 var1644)) ; Statement: $r4 = virtualinvoke $r11.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1701 String (append/672562846 var507 var3391)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var507!1 String)
(assert (= var507!1 (str.++ var507 var3391)))
(assert true)
(define-const var3745 String (append/-1166366385 var1701 32)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1701!1 String)
(assert (str.prefixof var1701 var1701!1))
(define-const var589 String (var3722_id/-2071121520 (cast-from-var222-to-var3781 var1550))) ; Statement: $r7 = staticinvoke <jdk.nashorn.internal.runtime.Debug: java.lang.String id(java.lang.Object)>(r1) 
(assert true)
(define-const var3582 String (append/672562846 var3745 var589)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3745!1 String)
(assert (= var3745!1 (str.++ var3745 var589)))
(assert true)
(define-const var2269 String (toString/-2075883882 var3582)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), functionNode/656530713=([jdk.nashorn.internal.codegen.MethodEmitter], jdk.nashorn.internal.ir.FunctionNode), cast-from-String-to-var3781=([java.lang.String], java.lang.Object), getName/-1714936033=([jdk.nashorn.internal.ir.FunctionNode], java.lang.String), toString/-522406933=([java.lang.Object], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var3722_id/-2071121520=([java.lang.Object], java.lang.String), cast-from-var222-to-var3781=([jdk.nashorn.internal.codegen.MethodEmitter], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var222=jdk.nashorn.internal.codegen.MethodEmitter, var1550=r1, var3202=$r0, var507=$r5, var2156=jdk.nashorn.internal.ir.FunctionNode, var3773=$r2, var959=$r3, var3781=java.lang.Object, var1644=$r11, var3391=$r4, var1701=$r6, var3745=$r8, var3722=jdk.nashorn.internal.runtime.Debug, var589=$r7, var3582=$r9, var2269=$r10}
; {jdk.nashorn.internal.codegen.MethodEmitter=var222, r1=var1550, $r0=var3202, $r5=var507, jdk.nashorn.internal.ir.FunctionNode=var2156, $r2=var3773, $r3=var959, java.lang.Object=var3781, $r11=var1644, $r4=var3391, $r6=var1701, $r8=var3745, jdk.nashorn.internal.runtime.Debug=var3722, $r7=var589, $r9=var3582, $r10=var2269}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.codegen.MethodEmitter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("methodEmitter: ");	$r2 = r1.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.ir.FunctionNode functionNode>;	if $r2 != null goto $r3 = r1.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.ir.FunctionNode functionNode>;	$r3 = r1.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.ir.FunctionNode functionNode>;	$r11 = virtualinvoke $r3.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getName()>();	$r4 = virtualinvoke $r11.<java.lang.Object: java.lang.String toString()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r7 = staticinvoke <jdk.nashorn.internal.runtime.Debug: java.lang.String id(java.lang.Object)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3
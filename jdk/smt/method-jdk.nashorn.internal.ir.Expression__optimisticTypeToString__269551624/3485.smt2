(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2478 0)
(declare-sort var884 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getType/-1798745728 (var2478) var884)
(declare-fun getDescriptor/-605257498 (var884) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isOptimistic/-1593152072 (var2478) Bool)
(declare-const null-var2478 var2478)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var884-UNDEFINED var884)
(declare-const var1442 var2478) ; Statement: r1 := @this: jdk.nashorn.internal.ir.Expression 
(assert (not (= var1442 null-var2478)))
(declare-const var2619 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2619 null-String)))
(declare-const var3559 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3559 null-Bool)))
(assert true)
;(assert (append/-1166366385 var2619 123)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123) 
(declare-const var2619!1 String)
(assert (str.prefixof var2619 var2619!1))
(assert true)
(define-const var1749 var884 (getType/-1798745728 var1442)) ; Statement: r2 = virtualinvoke r1.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.codegen.types.Type getType()>() 
(define-const var213 var884 var884-UNDEFINED) ; Statement: $r3 = <jdk.nashorn.internal.codegen.types.Type: jdk.nashorn.internal.codegen.types.Type UNDEFINED> 
 ; Statement: if r2 != $r3 goto $r6 = virtualinvoke r2.<jdk.nashorn.internal.codegen.types.Type: java.lang.String getDescriptor()>() 
(assert (not (= var1749 var213))) ; Cond: r2 != $r3 
(assert true)
(define-const var371 String (getDescriptor/-605257498 var1749)) ; Statement: $r6 = virtualinvoke r2.<jdk.nashorn.internal.codegen.types.Type: java.lang.String getDescriptor()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var1795 Int (length/-134980193 var371)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.String: int length()>() 
(define-const var1123 Int (- var1795 1)) ; Statement: $i1 = $i0 - 1 
(assert (and true (and (> (str.len var371) var1123) (<= 0 var1123))))
(define-const var2968 Int (charAt/698050440 var371 var1123)) ; Statement: $c2 = virtualinvoke $r6.<java.lang.String: char charAt(int)>($i1) 
(define-const var1817 Int (cast-from-Int-to-Int var2968)) ; Statement: $i4 = (int) $c2 
 ; Statement: if $i4 != 59 goto $r7 = $r6 
(assert (not (not (= var1817 59)))) ; Negate: Cond: $i4 != 59  
(define-const var3292 String "O") ; Statement: $r7 = "O" 
 ; Statement: goto [?= virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2619!1 var3292)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2619!2 String)
(assert (= var2619!2 (str.++ var2619!1 var3292)))
(assert true)
(define-const var3628 Bool (isOptimistic/-1593152072 var1442)) ; Statement: $z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.Expression: boolean isOptimistic()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(assert (= (ite var3628 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/-1166366385 var2619!2 125)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var2619!3 String)
(assert (str.prefixof var2619!2 var2619!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getType/-1798745728=([jdk.nashorn.internal.ir.Expression], jdk.nashorn.internal.codegen.types.Type), getDescriptor/-605257498=([jdk.nashorn.internal.codegen.types.Type], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isOptimistic/-1593152072=([jdk.nashorn.internal.ir.Expression], boolean)}
; {var2478=jdk.nashorn.internal.ir.Expression, var1442=r1, var2619=r0, var3559=z1, var884=jdk.nashorn.internal.codegen.types.Type, var1749=r2, var213=$r3, var371=$r6, var1795=$i0, var1123=$i1, var2968=$c2, var1817=$i4, var3292=$r7, var3628=$z0}
; {jdk.nashorn.internal.ir.Expression=var2478, r1=var1442, r0=var2619, z1=var3559, jdk.nashorn.internal.codegen.types.Type=var884, r2=var1749, $r3=var213, $r6=var371, $i0=var1795, $i1=var1123, $c2=var2968, $i4=var1817, $r7=var3292, $z0=var3628}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.Expression;	r0 := @parameter0: java.lang.StringBuilder;	z1 := @parameter1: boolean;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123);	r2 = virtualinvoke r1.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.codegen.types.Type getType()>();	$r3 = <jdk.nashorn.internal.codegen.types.Type: jdk.nashorn.internal.codegen.types.Type UNDEFINED>;	if r2 != $r3 goto $r6 = virtualinvoke r2.<jdk.nashorn.internal.codegen.types.Type: java.lang.String getDescriptor()>();	$r6 = virtualinvoke r2.<jdk.nashorn.internal.codegen.types.Type: java.lang.String getDescriptor()>();	$i0 = virtualinvoke $r6.<java.lang.String: int length()>();	$i1 = $i0 - 1;	$c2 = virtualinvoke $r6.<java.lang.String: char charAt(int)>($i1);	$i4 = (int) $c2;	if $i4 != 59 goto $r7 = $r6;	$r7 = "O";	goto [?= virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)];	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.Expression: boolean isOptimistic()>();	if $z0 == 0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	return
;block_num 6
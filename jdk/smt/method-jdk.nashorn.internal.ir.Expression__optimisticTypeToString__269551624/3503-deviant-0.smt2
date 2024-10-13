(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2871 0)
(declare-sort var2028 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getType/-1798745728 (var2871) var2028)
(declare-fun getDescriptor/-605257498 (var2028) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isOptimistic/-1593152072 (var2871) Bool)
(declare-const null-var2871 var2871)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2028-UNDEFINED var2028)
(declare-const var3310 var2871) ; Statement: r1 := @this: jdk.nashorn.internal.ir.Expression 
(assert (not (= var3310 null-var2871)))
(declare-const var2642 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2642 null-String)))
(declare-const var3155 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3155 null-Bool)))
(assert true)
;(assert (append/-1166366385 var2642 123)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123) 
(declare-const var2642!1 String)
(assert (str.prefixof var2642 var2642!1))
(assert true)
(define-const var1113 var2028 (getType/-1798745728 var3310)) ; Statement: r2 = virtualinvoke r1.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.codegen.types.Type getType()>() 
(define-const var1781 var2028 var2028-UNDEFINED) ; Statement: $r3 = <jdk.nashorn.internal.codegen.types.Type: jdk.nashorn.internal.codegen.types.Type UNDEFINED> 
 ; Statement: if r2 != $r3 goto $r6 = virtualinvoke r2.<jdk.nashorn.internal.codegen.types.Type: java.lang.String getDescriptor()>() 
(assert (not (= var1113 var1781))) ; Cond: r2 != $r3 
(assert true)
(define-const var2382 String (getDescriptor/-605257498 var1113)) ; Statement: $r6 = virtualinvoke r2.<jdk.nashorn.internal.codegen.types.Type: java.lang.String getDescriptor()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var594 Int (length/-134980193 var2382)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.String: int length()>() 
(define-const var721 Int (- var594 1)) ; Statement: $i1 = $i0 - 1 
(assert (not (and true (and (> (str.len var2382) var721) (<= 0 var721)))))
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getType/-1798745728=([jdk.nashorn.internal.ir.Expression], jdk.nashorn.internal.codegen.types.Type), getDescriptor/-605257498=([jdk.nashorn.internal.codegen.types.Type], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isOptimistic/-1593152072=([jdk.nashorn.internal.ir.Expression], boolean)}
; {var2871=jdk.nashorn.internal.ir.Expression, var3310=r1, var2642=r0, var3155=z1, var2028=jdk.nashorn.internal.codegen.types.Type, var1113=r2, var1781=$r3, var2382=$r6, var594=$i0, var721=$i1, var3183=$c2, var1449=$i4, var3327=$r7, var2273=$z0}
; {jdk.nashorn.internal.ir.Expression=var2871, r1=var3310, r0=var2642, z1=var3155, jdk.nashorn.internal.codegen.types.Type=var2028, r2=var1113, $r3=var1781, $r6=var2382, $i0=var594, $i1=var721, $c2=var3183, $i4=var1449, $r7=var3327, $z0=var2273}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.Expression;	r0 := @parameter0: java.lang.StringBuilder;	z1 := @parameter1: boolean;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123);	r2 = virtualinvoke r1.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.codegen.types.Type getType()>();	$r3 = <jdk.nashorn.internal.codegen.types.Type: jdk.nashorn.internal.codegen.types.Type UNDEFINED>;	if r2 != $r3 goto $r6 = virtualinvoke r2.<jdk.nashorn.internal.codegen.types.Type: java.lang.String getDescriptor()>();	$r6 = virtualinvoke r2.<jdk.nashorn.internal.codegen.types.Type: java.lang.String getDescriptor()>();	$i0 = virtualinvoke $r6.<java.lang.String: int length()>();	$i1 = $i0 - 1;	$c2 = virtualinvoke $r6.<java.lang.String: char charAt(int)>($i1);	$i4 = (int) $c2;	if $i4 != 59 goto $r7 = $r6;	$r7 = $r6;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.Expression: boolean isOptimistic()>();	if $z0 == 0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	return
;block_num 6
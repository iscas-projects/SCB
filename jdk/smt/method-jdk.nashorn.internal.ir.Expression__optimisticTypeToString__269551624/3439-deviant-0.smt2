(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2848 0)
(declare-sort var2228 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getType/-1798745728 (var2848) var2228)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isOptimistic/-1593152072 (var2848) Bool)
(declare-const null-var2848 var2848)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2228-UNDEFINED var2228)
(declare-const var2750 var2848) ; Statement: r1 := @this: jdk.nashorn.internal.ir.Expression 
(assert (not (= var2750 null-var2848)))
(declare-const var3212 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3212 null-String)))
(declare-const var1523 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var1523 null-Bool)))
(assert true)
;(assert (append/-1166366385 var3212 123)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123) 
(declare-const var3212!1 String)
(assert (str.prefixof var3212 var3212!1))
(assert true)
(define-const var3314 var2228 (getType/-1798745728 var2750)) ; Statement: r2 = virtualinvoke r1.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.codegen.types.Type getType()>() 
(define-const var2547 var2228 var2228-UNDEFINED) ; Statement: $r3 = <jdk.nashorn.internal.codegen.types.Type: jdk.nashorn.internal.codegen.types.Type UNDEFINED> 
 ; Statement: if r2 != $r3 goto $r6 = virtualinvoke r2.<jdk.nashorn.internal.codegen.types.Type: java.lang.String getDescriptor()>() 
(assert (not (not (= var3314 var2547)))) ; Negate: Cond: r2 != $r3  
(define-const var3675 String "U") ; Statement: $r6 = "U" 
 ; Statement: goto [?= $i0 = virtualinvoke $r6.<java.lang.String: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var810 Int (length/-134980193 var3675)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.String: int length()>() 
(define-const var3111 Int (- var810 1)) ; Statement: $i1 = $i0 - 1 
(assert (not (and true (and (> (str.len var3675) var3111) (<= 0 var3111)))))
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getType/-1798745728=([jdk.nashorn.internal.ir.Expression], jdk.nashorn.internal.codegen.types.Type), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isOptimistic/-1593152072=([jdk.nashorn.internal.ir.Expression], boolean)}
; {var2848=jdk.nashorn.internal.ir.Expression, var2750=r1, var3212=r0, var1523=z1, var2228=jdk.nashorn.internal.codegen.types.Type, var3314=r2, var2547=$r3, var3675=$r6, var810=$i0, var3111=$i1, var1038=$c2, var549=$i4, var1425=$r7, var1804=$z0}
; {jdk.nashorn.internal.ir.Expression=var2848, r1=var2750, r0=var3212, z1=var1523, jdk.nashorn.internal.codegen.types.Type=var2228, r2=var3314, $r3=var2547, $r6=var3675, $i0=var810, $i1=var3111, $c2=var1038, $i4=var549, $r7=var1425, $z0=var1804}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.Expression;	r0 := @parameter0: java.lang.StringBuilder;	z1 := @parameter1: boolean;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123);	r2 = virtualinvoke r1.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.codegen.types.Type getType()>();	$r3 = <jdk.nashorn.internal.codegen.types.Type: jdk.nashorn.internal.codegen.types.Type UNDEFINED>;	if r2 != $r3 goto $r6 = virtualinvoke r2.<jdk.nashorn.internal.codegen.types.Type: java.lang.String getDescriptor()>();	$r6 = "U";	goto [?= $i0 = virtualinvoke $r6.<java.lang.String: int length()>()];	$i0 = virtualinvoke $r6.<java.lang.String: int length()>();	$i1 = $i0 - 1;	$c2 = virtualinvoke $r6.<java.lang.String: char charAt(int)>($i1);	$i4 = (int) $c2;	if $i4 != 59 goto $r7 = $r6;	$r7 = "O";	goto [?= virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)];	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.Expression: boolean isOptimistic()>();	if $z0 == 0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	return
;block_num 6
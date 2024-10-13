(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var770 0)
(declare-sort var3803 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getType/-1798745728 (var770) var3803)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isOptimistic/-1593152072 (var770) Bool)
(declare-const null-var770 var770)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3803-UNDEFINED var3803)
(declare-const var3664 var770) ; Statement: r1 := @this: jdk.nashorn.internal.ir.Expression 
(assert (not (= var3664 null-var770)))
(declare-const var3887 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3887 null-String)))
(declare-const var1687 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var1687 null-Bool)))
(assert true)
;(assert (append/-1166366385 var3887 123)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123) 
(declare-const var3887!1 String)
(assert (str.prefixof var3887 var3887!1))
(assert true)
(define-const var3510 var3803 (getType/-1798745728 var3664)) ; Statement: r2 = virtualinvoke r1.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.codegen.types.Type getType()>() 
(define-const var1884 var3803 var3803-UNDEFINED) ; Statement: $r3 = <jdk.nashorn.internal.codegen.types.Type: jdk.nashorn.internal.codegen.types.Type UNDEFINED> 
 ; Statement: if r2 != $r3 goto $r6 = virtualinvoke r2.<jdk.nashorn.internal.codegen.types.Type: java.lang.String getDescriptor()>() 
(assert (not (not (= var3510 var1884)))) ; Negate: Cond: r2 != $r3  
(define-const var34 String "U") ; Statement: $r6 = "U" 
 ; Statement: goto [?= $i0 = virtualinvoke $r6.<java.lang.String: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1242 Int (length/-134980193 var34)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.String: int length()>() 
(define-const var1971 Int (- var1242 1)) ; Statement: $i1 = $i0 - 1 
(assert (and true (and (> (str.len var34) var1971) (<= 0 var1971))))
(define-const var3471 Int (charAt/698050440 var34 var1971)) ; Statement: $c2 = virtualinvoke $r6.<java.lang.String: char charAt(int)>($i1) 
(define-const var2643 Int (cast-from-Int-to-Int var3471)) ; Statement: $i4 = (int) $c2 
 ; Statement: if $i4 != 59 goto $r7 = $r6 
(assert (not (= var2643 59))) ; Cond: $i4 != 59 
(define-const var96 String var34) ; Statement: $r7 = $r6 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3887!1 var96)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3887!2 String)
(assert (= var3887!2 (str.++ var3887!1 var96)))
(assert true)
(define-const var509 Bool (isOptimistic/-1593152072 var3664)) ; Statement: $z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.Expression: boolean isOptimistic()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(assert (= (ite var509 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/-1166366385 var3887!2 125)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var3887!3 String)
(assert (str.prefixof var3887!2 var3887!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getType/-1798745728=([jdk.nashorn.internal.ir.Expression], jdk.nashorn.internal.codegen.types.Type), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isOptimistic/-1593152072=([jdk.nashorn.internal.ir.Expression], boolean)}
; {var770=jdk.nashorn.internal.ir.Expression, var3664=r1, var3887=r0, var1687=z1, var3803=jdk.nashorn.internal.codegen.types.Type, var3510=r2, var1884=$r3, var34=$r6, var1242=$i0, var1971=$i1, var3471=$c2, var2643=$i4, var96=$r7, var509=$z0}
; {jdk.nashorn.internal.ir.Expression=var770, r1=var3664, r0=var3887, z1=var1687, jdk.nashorn.internal.codegen.types.Type=var3803, r2=var3510, $r3=var1884, $r6=var34, $i0=var1242, $i1=var1971, $c2=var3471, $i4=var2643, $r7=var96, $z0=var509}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.Expression;	r0 := @parameter0: java.lang.StringBuilder;	z1 := @parameter1: boolean;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123);	r2 = virtualinvoke r1.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.codegen.types.Type getType()>();	$r3 = <jdk.nashorn.internal.codegen.types.Type: jdk.nashorn.internal.codegen.types.Type UNDEFINED>;	if r2 != $r3 goto $r6 = virtualinvoke r2.<jdk.nashorn.internal.codegen.types.Type: java.lang.String getDescriptor()>();	$r6 = "U";	goto [?= $i0 = virtualinvoke $r6.<java.lang.String: int length()>()];	$i0 = virtualinvoke $r6.<java.lang.String: int length()>();	$i1 = $i0 - 1;	$c2 = virtualinvoke $r6.<java.lang.String: char charAt(int)>($i1);	$i4 = (int) $c2;	if $i4 != 59 goto $r7 = $r6;	$r7 = $r6;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.Expression: boolean isOptimistic()>();	if $z0 == 0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	return
;block_num 6
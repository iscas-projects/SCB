(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var526 0)
(declare-sort var2884 0)
(declare-sort var3455 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIndex/-2136393185 (var2884) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-var2884 var2884)
(declare-const null-var3455 var3455)
(declare-const var3147 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3147 null-String)))
(declare-const var2536 var2884) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var2536 null-var2884)))
(declare-const var504 var3455) ; Statement: r8 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ParseNextProperty 
(assert (not (= var504 null-var3455)))
(assert true)
(define-const var1734 Int (getIndex/-2136393185 var2536)) ; Statement: i0 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
(define-const var2530 Int (length/-134980193 var3147)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var94 Int (- var2530 var1734)) ; Statement: $i2 = $i1 - i0 
 ; Statement: if $i2 < 3 goto return null 
(assert (< var94 3)) ; Cond: $i2 < 3 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getIndex/-2136393185=([java.text.ParsePosition], int), length/-134980193=([java.lang.String], int)}
; {var3147=r1, var526=null_type, var2884=java.text.ParsePosition, var2536=r0, var3455=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ParseNextProperty, var504=r8, var1734=i0, var2530=$i1, var94=$i2}
; {r1=var3147, null_type=var526, java.text.ParsePosition=var2884, r0=var2536, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ParseNextProperty=var3455, r8=var504, i0=var1734, $i1=var2530, $i2=var94}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	r8 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ParseNextProperty;	i0 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = $i1 - i0;	if $i2 < 3 goto return null;	return null
;block_num 2
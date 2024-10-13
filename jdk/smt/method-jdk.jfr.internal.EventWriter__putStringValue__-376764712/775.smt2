(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3528 0)
(declare-sort var1224 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun isValidForSize/214054623 (var3528 Int) Bool)
(declare-const null-var3528 var3528)
(declare-const null-String String)
(declare-const var129 var3528) ; Statement: r1 := @this: jdk.jfr.internal.EventWriter 
(assert (not (= var129 null-var3528)))
(declare-const var3266 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3266 null-String)))
(assert true)
(define-const var667 Int (length/-134980193 var3266)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1069 Int (* 3 var667)) ; Statement: $i1 = 3 * i0 
(define-const var3938 Int (+ 6 var1069)) ; Statement: $i2 = 6 + $i1 
(assert true)
(define-const var715 Bool (isValidForSize/214054623 var129 var3938)) ; Statement: $z0 = specialinvoke r1.<jdk.jfr.internal.EventWriter: boolean isValidForSize(int)>($i2) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var715 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), isValidForSize/214054623=([jdk.jfr.internal.EventWriter, int], boolean)}
; {var3528=jdk.jfr.internal.EventWriter, var129=r1, var3266=r0, var1224=null_type, var667=i0, var1069=$i1, var3938=$i2, var715=$z0}
; {jdk.jfr.internal.EventWriter=var3528, r1=var129, r0=var3266, null_type=var1224, i0=var667, $i1=var1069, $i2=var3938, $z0=var715}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: jdk.jfr.internal.EventWriter;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = 3 * i0;	$i2 = 6 + $i1;	$z0 = specialinvoke r1.<jdk.jfr.internal.EventWriter: boolean isValidForSize(int)>($i2);	if $z0 == 0 goto return;	return
;block_num 2
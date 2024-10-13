(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2953 0)
(declare-sort var3220 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun clone/791635256 (var3220) var3220)
(declare-fun cast-from-__Array__Int__Bool__-to-var3220 ((Array Int Bool)) var3220)
(declare-fun cast-from-var3220-to-__Array__Int__Bool__ (var3220) (Array Int Bool))
(declare-const null-Int Int)
(declare-const var2953-TTFT (Array Int Bool))
(declare-const var3586 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var3586 null-Int)))
(define-const var1556 Int (cast-from-Int-to-Int var3586)) ; Statement: $i1 = (int) c0 
 ; Statement: tableswitch($i1) {     case 48: goto $r45 = <org.apache.commons.lang3.Conversion: boolean[] FFFF>;     case 49: goto $r42 = <org.apache.commons.lang3.Conversion: boolean[] TFFF>;     case 50: goto $r39 = <org.apache.commons.lang3.Conversion: boolean[] FTFF>;     case 51: goto $r36 = <org.apache.commons.lang3.Conversion: boolean[] TTFF>;     case 52: goto $r33 = <org.apache.commons.lang3.Conversion: boolean[] FFTF>;     case 53: goto $r30 = <org.apache.commons.lang3.Conversion: boolean[] TFTF>;     case 54: goto $r27 = <org.apache.commons.lang3.Conversion: boolean[] FTTF>;     case 55: goto $r24 = <org.apache.commons.lang3.Conversion: boolean[] TTTF>;     case 56: goto $r21 = <org.apache.commons.lang3.Conversion: boolean[] FFFT>;     case 57: goto $r18 = <org.apache.commons.lang3.Conversion: boolean[] TFFT>;     case 58: goto $r55 = new java.lang.IllegalArgumentException;     case 59: goto $r55 = new java.lang.IllegalArgumentException;     case 60: goto $r55 = new java.lang.IllegalArgumentException;     case 61: goto $r55 = new java.lang.IllegalArgumentException;     case 62: goto $r55 = new java.lang.IllegalArgumentException;     case 63: goto $r55 = new java.lang.IllegalArgumentException;     case 64: goto $r55 = new java.lang.IllegalArgumentException;     case 65: goto $r15 = <org.apache.commons.lang3.Conversion: boolean[] FTFT>;     case 66: goto $r12 = <org.apache.commons.lang3.Conversion: boolean[] TTFT>;     case 67: goto $r9 = <org.apache.commons.lang3.Conversion: boolean[] FFTT>;     case 68: goto $r6 = <org.apache.commons.lang3.Conversion: boolean[] TFTT>;     case 69: goto $r3 = <org.apache.commons.lang3.Conversion: boolean[] FTTT>;     case 70: goto $r0 = <org.apache.commons.lang3.Conversion: boolean[] TTTT>;     case 71: goto $r55 = new java.lang.IllegalArgumentException;     case 72: goto $r55 = new java.lang.IllegalArgumentException;     case 73: goto $r55 = new java.lang.IllegalArgumentException;     case 74: goto $r55 = new java.lang.IllegalArgumentException;     case 75: goto $r55 = new java.lang.IllegalArgumentException;     case 76: goto $r55 = new java.lang.IllegalArgumentException;     case 77: goto $r55 = new java.lang.IllegalArgumentException;     case 78: goto $r55 = new java.lang.IllegalArgumentException;     case 79: goto $r55 = new java.lang.IllegalArgumentException;     case 80: goto $r55 = new java.lang.IllegalArgumentException;     case 81: goto $r55 = new java.lang.IllegalArgumentException;     case 82: goto $r55 = new java.lang.IllegalArgumentException;     case 83: goto $r55 = new java.lang.IllegalArgumentException;     case 84: goto $r55 = new java.lang.IllegalArgumentException;     case 85: goto $r55 = new java.lang.IllegalArgumentException;     case 86: goto $r55 = new java.lang.IllegalArgumentException;     case 87: goto $r55 = new java.lang.IllegalArgumentException;     case 88: goto $r55 = new java.lang.IllegalArgumentException;     case 89: goto $r55 = new java.lang.IllegalArgumentException;     case 90: goto $r55 = new java.lang.IllegalArgumentException;     case 91: goto $r55 = new java.lang.IllegalArgumentException;     case 92: goto $r55 = new java.lang.IllegalArgumentException;     case 93: goto $r55 = new java.lang.IllegalArgumentException;     case 94: goto $r55 = new java.lang.IllegalArgumentException;     case 95: goto $r55 = new java.lang.IllegalArgumentException;     case 96: goto $r55 = new java.lang.IllegalArgumentException;     case 97: goto $r15 = <org.apache.commons.lang3.Conversion: boolean[] FTFT>;     case 98: goto $r12 = <org.apache.commons.lang3.Conversion: boolean[] TTFT>;     case 99: goto $r9 = <org.apache.commons.lang3.Conversion: boolean[] FFTT>;     case 100: goto $r6 = <org.apache.commons.lang3.Conversion: boolean[] TFTT>;     case 101: goto $r3 = <org.apache.commons.lang3.Conversion: boolean[] FTTT>;     case 102: goto $r0 = <org.apache.commons.lang3.Conversion: boolean[] TTTT>;     default: goto $r55 = new java.lang.IllegalArgumentException; } 
(assert (and (= var1556 66) (and (not (= var1556 65)) (and (not (= var1556 64)) (and (not (= var1556 63)) (and (not (= var1556 62)) (and (not (= var1556 61)) (and (not (= var1556 60)) (and (not (= var1556 59)) (and (not (= var1556 58)) (and (not (= var1556 57)) (and (not (= var1556 56)) (and (not (= var1556 55)) (and (not (= var1556 54)) (and (not (= var1556 53)) (and (not (= var1556 52)) (and (not (= var1556 51)) (and (not (= var1556 50)) (and (not (= var1556 49)) (and (not (= var1556 48)) true)))))))))))))))))))) ; Intersect: Cond: $i1 == 66  and Intersect: Negate: Cond: $i1 == 65   and Intersect: Negate: Cond: $i1 == 64   and Intersect: Negate: Cond: $i1 == 63   and Intersect: Negate: Cond: $i1 == 62   and Intersect: Negate: Cond: $i1 == 61   and Intersect: Negate: Cond: $i1 == 60   and Intersect: Negate: Cond: $i1 == 59   and Intersect: Negate: Cond: $i1 == 58   and Intersect: Negate: Cond: $i1 == 57   and Intersect: Negate: Cond: $i1 == 56   and Intersect: Negate: Cond: $i1 == 55   and Intersect: Negate: Cond: $i1 == 54   and Intersect: Negate: Cond: $i1 == 53   and Intersect: Negate: Cond: $i1 == 52   and Intersect: Negate: Cond: $i1 == 51   and Intersect: Negate: Cond: $i1 == 50   and Intersect: Negate: Cond: $i1 == 49   and Intersect: Negate: Cond: $i1 == 48   and Non Conditional                   
(define-const var1309 (Array Int Bool) var2953-TTFT) ; Statement: $r12 = <org.apache.commons.lang3.Conversion: boolean[] TTFT> 
(assert true)
(define-const var3023 var3220 (clone/791635256 (cast-from-__Array__Int__Bool__-to-var3220 var1309))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.Object: java.lang.Object clone()>() 
(define-const var3719 (Array Int Bool) (cast-from-var3220-to-__Array__Int__Bool__ var3023)) ; Statement: $r14 = (boolean[]) $r13 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), clone/791635256=([java.lang.Object], java.lang.Object), cast-from-__Array__Int__Bool__-to-var3220=([boolean[]], java.lang.Object), cast-from-var3220-to-__Array__Int__Bool__=([java.lang.Object], boolean[])}
; {var3586=c0, var1556=$i1, var2953=org.apache.commons.lang3.Conversion, var1309=$r12, var3220=java.lang.Object, var3023=$r13, var3719=$r14}
; {c0=var3586, $i1=var1556, org.apache.commons.lang3.Conversion=var2953, $r12=var1309, java.lang.Object=var3220, $r13=var3023, $r14=var3719}
;seq 
;cnt {}
;stmts c0 := @parameter0: char;	$i1 = (int) c0;	tableswitch($i1) {     case 48: goto $r45 = <org.apache.commons.lang3.Conversion: boolean[] FFFF>;     case 49: goto $r42 = <org.apache.commons.lang3.Conversion: boolean[] TFFF>;     case 50: goto $r39 = <org.apache.commons.lang3.Conversion: boolean[] FTFF>;     case 51: goto $r36 = <org.apache.commons.lang3.Conversion: boolean[] TTFF>;     case 52: goto $r33 = <org.apache.commons.lang3.Conversion: boolean[] FFTF>;     case 53: goto $r30 = <org.apache.commons.lang3.Conversion: boolean[] TFTF>;     case 54: goto $r27 = <org.apache.commons.lang3.Conversion: boolean[] FTTF>;     case 55: goto $r24 = <org.apache.commons.lang3.Conversion: boolean[] TTTF>;     case 56: goto $r21 = <org.apache.commons.lang3.Conversion: boolean[] FFFT>;     case 57: goto $r18 = <org.apache.commons.lang3.Conversion: boolean[] TFFT>;     case 58: goto $r55 = new java.lang.IllegalArgumentException;     case 59: goto $r55 = new java.lang.IllegalArgumentException;     case 60: goto $r55 = new java.lang.IllegalArgumentException;     case 61: goto $r55 = new java.lang.IllegalArgumentException;     case 62: goto $r55 = new java.lang.IllegalArgumentException;     case 63: goto $r55 = new java.lang.IllegalArgumentException;     case 64: goto $r55 = new java.lang.IllegalArgumentException;     case 65: goto $r15 = <org.apache.commons.lang3.Conversion: boolean[] FTFT>;     case 66: goto $r12 = <org.apache.commons.lang3.Conversion: boolean[] TTFT>;     case 67: goto $r9 = <org.apache.commons.lang3.Conversion: boolean[] FFTT>;     case 68: goto $r6 = <org.apache.commons.lang3.Conversion: boolean[] TFTT>;     case 69: goto $r3 = <org.apache.commons.lang3.Conversion: boolean[] FTTT>;     case 70: goto $r0 = <org.apache.commons.lang3.Conversion: boolean[] TTTT>;     case 71: goto $r55 = new java.lang.IllegalArgumentException;     case 72: goto $r55 = new java.lang.IllegalArgumentException;     case 73: goto $r55 = new java.lang.IllegalArgumentException;     case 74: goto $r55 = new java.lang.IllegalArgumentException;     case 75: goto $r55 = new java.lang.IllegalArgumentException;     case 76: goto $r55 = new java.lang.IllegalArgumentException;     case 77: goto $r55 = new java.lang.IllegalArgumentException;     case 78: goto $r55 = new java.lang.IllegalArgumentException;     case 79: goto $r55 = new java.lang.IllegalArgumentException;     case 80: goto $r55 = new java.lang.IllegalArgumentException;     case 81: goto $r55 = new java.lang.IllegalArgumentException;     case 82: goto $r55 = new java.lang.IllegalArgumentException;     case 83: goto $r55 = new java.lang.IllegalArgumentException;     case 84: goto $r55 = new java.lang.IllegalArgumentException;     case 85: goto $r55 = new java.lang.IllegalArgumentException;     case 86: goto $r55 = new java.lang.IllegalArgumentException;     case 87: goto $r55 = new java.lang.IllegalArgumentException;     case 88: goto $r55 = new java.lang.IllegalArgumentException;     case 89: goto $r55 = new java.lang.IllegalArgumentException;     case 90: goto $r55 = new java.lang.IllegalArgumentException;     case 91: goto $r55 = new java.lang.IllegalArgumentException;     case 92: goto $r55 = new java.lang.IllegalArgumentException;     case 93: goto $r55 = new java.lang.IllegalArgumentException;     case 94: goto $r55 = new java.lang.IllegalArgumentException;     case 95: goto $r55 = new java.lang.IllegalArgumentException;     case 96: goto $r55 = new java.lang.IllegalArgumentException;     case 97: goto $r15 = <org.apache.commons.lang3.Conversion: boolean[] FTFT>;     case 98: goto $r12 = <org.apache.commons.lang3.Conversion: boolean[] TTFT>;     case 99: goto $r9 = <org.apache.commons.lang3.Conversion: boolean[] FFTT>;     case 100: goto $r6 = <org.apache.commons.lang3.Conversion: boolean[] TFTT>;     case 101: goto $r3 = <org.apache.commons.lang3.Conversion: boolean[] FTTT>;     case 102: goto $r0 = <org.apache.commons.lang3.Conversion: boolean[] TTTT>;     default: goto $r55 = new java.lang.IllegalArgumentException; };	$r12 = <org.apache.commons.lang3.Conversion: boolean[] TTFT>;	$r13 = virtualinvoke $r12.<java.lang.Object: java.lang.Object clone()>();	$r14 = (boolean[]) $r13;	return $r14
;block_num 2
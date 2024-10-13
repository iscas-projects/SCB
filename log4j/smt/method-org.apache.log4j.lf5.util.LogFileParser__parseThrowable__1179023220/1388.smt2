(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3417 0)
(declare-sort var2891 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getAttribute/-226365736 (var3417 Int String) String)
(declare-const null-var3417 var3417)
(declare-const null-String String)
(declare-const var2781 var3417) ; Statement: r0 := @this: org.apache.log4j.lf5.util.LogFileParser 
(assert (not (= var2781 null-var3417)))
(declare-const var3540 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3540 null-String)))
(assert true)
(define-const var566 Int (length/-134980193 var3540)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
(define-const var3 String (getAttribute/-226365736 var2781 var566 var3540)) ; Statement: $r2 = specialinvoke r0.<org.apache.log4j.lf5.util.LogFileParser: java.lang.String getAttribute(int,java.lang.String)>($i0, r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), getAttribute/-226365736=([org.apache.log4j.lf5.util.LogFileParser, int, java.lang.String], java.lang.String)}
; {var3417=org.apache.log4j.lf5.util.LogFileParser, var2781=r0, var3540=r1, var2891=null_type, var566=$i0, var3=$r2}
; {org.apache.log4j.lf5.util.LogFileParser=var3417, r0=var2781, r1=var3540, null_type=var2891, $i0=var566, $r2=var3}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.log4j.lf5.util.LogFileParser;	r1 := @parameter0: java.lang.String;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$r2 = specialinvoke r0.<org.apache.log4j.lf5.util.LogFileParser: java.lang.String getAttribute(int,java.lang.String)>($i0, r1);	return $r2
;block_num 1
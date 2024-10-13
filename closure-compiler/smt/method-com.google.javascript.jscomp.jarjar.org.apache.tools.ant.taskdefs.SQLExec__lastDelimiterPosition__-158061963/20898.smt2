(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1661 0)
(declare-sort var1464 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun strictDelimiterMatching/553303715 (var1661) Bool)
(declare-fun delimiterType/553303715 (var1661) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1661 var1661)
(declare-const null-String String)
(declare-const var3138 var1661) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec 
(assert (not (= var3138 null-var1661)))
(declare-const var1439 String) ; Statement: r11 := @parameter0: java.lang.StringBuffer 
(assert (not (= var1439 null-String)))
(declare-const var3040 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var3040 null-String)))
(define-const var3726 Bool (strictDelimiterMatching/553303715 var3138)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: boolean strictDelimiterMatching> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String delimiter> 
(assert (not (= (ite var3726 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var635 String (delimiterType/553303715 var3138)) ; Statement: $r16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String delimiterType> 
(assert true)
(define-const var3067 Bool (= var635 "normal")) ; Statement: $z4 = virtualinvoke $r16.<java.lang.String: boolean equals(java.lang.Object)>("normal") 
 ; Statement: if $z4 == 0 goto $r17 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String delimiterType> 
(assert (= (ite var3067 1 0) 0)) ; Cond: $z4 == 0 
(define-const var2766 String (delimiterType/553303715 var3138)) ; Statement: $r17 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String delimiterType> 
(assert true)
(define-const var905 Bool (= var2766 "row")) ; Statement: $z5 = virtualinvoke $r17.<java.lang.String: boolean equals(java.lang.Object)>("row") 
 ; Statement: if $z5 == 0 goto $i16 = (int) -1 
(assert (= (ite var905 1 0) 0)) ; Cond: $z5 == 0 
(define-const var2730 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i16 = (int) -1 
 ; Statement: return $i16 
(check-sat)
(get-model)
(get-unsat-core)
; {strictDelimiterMatching/553303715=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec], boolean), delimiterType/553303715=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec], java.lang.String), cast-from-Int-to-Int=([int], int)}
; {var1661=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec, var3138=r0, var1439=r11, var3040=r7, var1464=null_type, var3726=$z0, var635=$r16, var3067=$z4, var2766=$r17, var905=$z5, var2730=$i16}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec=var1661, r0=var3138, r11=var1439, r7=var3040, null_type=var1464, $z0=var3726, $r16=var635, $z4=var3067, $r17=var2766, $z5=var905, $i16=var2730}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec;	r11 := @parameter0: java.lang.StringBuffer;	r7 := @parameter1: java.lang.String;	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: boolean strictDelimiterMatching>;	if $z0 == 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String delimiter>;	$r16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String delimiterType>;	$z4 = virtualinvoke $r16.<java.lang.String: boolean equals(java.lang.Object)>("normal");	if $z4 == 0 goto $r17 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String delimiterType>;	$r17 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String delimiterType>;	$z5 = virtualinvoke $r17.<java.lang.String: boolean equals(java.lang.Object)>("row");	if $z5 == 0 goto $i16 = (int) -1;	$i16 = (int) -1;	return $i16
;block_num 4
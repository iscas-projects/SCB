(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3824 0)
(declare-sort var1779 0)
(declare-sort var3470 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun strictDelimiterMatching/553303715 (var3824) Bool)
(declare-fun delimiterType/553303715 (var3824) String)
(declare-fun delimiter/553303715 (var3824) String)
(declare-fun var3470_endsWith/-1456208340 (String String) Bool)
(declare-fun length/-1112840705 (String) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3824 var3824)
(declare-const null-String String)
(declare-const var1576 var3824) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec 
(assert (not (= var1576 null-var3824)))
(declare-const var3408 String) ; Statement: r11 := @parameter0: java.lang.StringBuffer 
(assert (not (= var3408 null-String)))
(declare-const var1652 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var1652 null-String)))
(define-const var708 Bool (strictDelimiterMatching/553303715 var1576)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: boolean strictDelimiterMatching> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String delimiter> 
(assert (not (= (ite var708 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2311 String (delimiterType/553303715 var1576)) ; Statement: $r16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String delimiterType> 
(assert true)
(define-const var3805 Bool (= var2311 "normal")) ; Statement: $z4 = virtualinvoke $r16.<java.lang.String: boolean equals(java.lang.Object)>("normal") 
 ; Statement: if $z4 == 0 goto $r17 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String delimiterType> 
(assert (not (= (ite var3805 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var1050 String (delimiter/553303715 var1576)) ; Statement: $r20 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String delimiter> 
(define-const var2300 Bool (var3470_endsWith/-1456208340 var3408 var1050)) ; Statement: $z7 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils: boolean endsWith(java.lang.StringBuffer,java.lang.String)>(r11, $r20) 
 ; Statement: if $z7 != 0 goto $i10 = virtualinvoke r11.<java.lang.StringBuffer: int length()>() 
(assert (not (= (ite var2300 1 0) 0))) ; Cond: $z7 != 0 
(assert true)
(define-const var22 Int (length/-1112840705 var3408)) ; Statement: $i10 = virtualinvoke r11.<java.lang.StringBuffer: int length()>() 
(define-const var2194 String (delimiter/553303715 var1576)) ; Statement: $r19 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String delimiter> 
(assert true)
(define-const var2275 Int (length/-134980193 var2194)) ; Statement: $i9 = virtualinvoke $r19.<java.lang.String: int length()>() 
(define-const var3570 Int (- var22 var2275)) ; Statement: $i11 = $i10 - $i9 
 ; Statement: return $i11 
(check-sat)
(get-model)
(get-unsat-core)
; {strictDelimiterMatching/553303715=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec], boolean), delimiterType/553303715=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec], java.lang.String), delimiter/553303715=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec], java.lang.String), var3470_endsWith/-1456208340=([java.lang.StringBuffer, java.lang.String], boolean), length/-1112840705=([java.lang.StringBuffer], int), length/-134980193=([java.lang.String], int)}
; {var3824=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec, var1576=r0, var3408=r11, var1652=r7, var1779=null_type, var708=$z0, var2311=$r16, var3805=$z4, var1050=$r20, var3470=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils, var2300=$z7, var22=$i10, var2194=$r19, var2275=$i9, var3570=$i11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec=var3824, r0=var1576, r11=var3408, r7=var1652, null_type=var1779, $z0=var708, $r16=var2311, $z4=var3805, $r20=var1050, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils=var3470, $z7=var2300, $i10=var22, $r19=var2194, $i9=var2275, $i11=var3570}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuffer: int length()>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec;	r11 := @parameter0: java.lang.StringBuffer;	r7 := @parameter1: java.lang.String;	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: boolean strictDelimiterMatching>;	if $z0 == 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String delimiter>;	$r16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String delimiterType>;	$z4 = virtualinvoke $r16.<java.lang.String: boolean equals(java.lang.Object)>("normal");	if $z4 == 0 goto $r17 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String delimiterType>;	$r20 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String delimiter>;	$z7 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils: boolean endsWith(java.lang.StringBuffer,java.lang.String)>(r11, $r20);	if $z7 != 0 goto $i10 = virtualinvoke r11.<java.lang.StringBuffer: int length()>();	$i10 = virtualinvoke r11.<java.lang.StringBuffer: int length()>();	$r19 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String delimiter>;	$i9 = virtualinvoke $r19.<java.lang.String: int length()>();	$i11 = $i10 - $i9;	return $i11
;block_num 4
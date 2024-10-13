(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3250 0)
(declare-sort var3521 0)
(declare-sort var1611 0)
(declare-sort var2619 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2619_prepare/-1030728333 (String var1611) String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var3250 var3250)
(declare-const null-String String)
(declare-const var1611-QUERY var1611)
(declare-const var1806 var3250) ; Statement: r5 := @this: com.mysql.cj.sasl.ScramShaSaslClient 
(assert (not (= var1806 null-var3250)))
(declare-const var769 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var769 null-String)))
(define-const var2529 var1611 var1611-QUERY) ; Statement: $r1 = <com.mysql.cj.util.SaslPrep$StringType: com.mysql.cj.util.SaslPrep$StringType QUERY> 
(define-const var1333 String (var2619_prepare/-1030728333 var769 var2529)) ; Statement: $r2 = staticinvoke <com.mysql.cj.util.SaslPrep: java.lang.String prepare(java.lang.String,com.mysql.cj.util.SaslPrep$StringType)>(r0, $r1) 
(assert true)
(define-const var3982 String (replace/2138489945 var1333 (cast-from-String-to-String "=") (cast-from-String-to-String "=2D"))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("=", "=2D") 
(assert true)
(define-const var1506 String (replace/2138489945 var3982 (cast-from-String-to-String ",") (cast-from-String-to-String "=2C"))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(",", "=2C") 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2619_prepare/-1030728333=([java.lang.String, com.mysql.cj.util.SaslPrep$StringType], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var3250=com.mysql.cj.sasl.ScramShaSaslClient, var1806=r5, var769=r0, var3521=null_type, var1611=com.mysql.cj.util.SaslPrep$StringType, var2529=$r1, var2619=com.mysql.cj.util.SaslPrep, var1333=$r2, var3982=$r3, var1506=$r4}
; {com.mysql.cj.sasl.ScramShaSaslClient=var3250, r5=var1806, r0=var769, null_type=var3521, com.mysql.cj.util.SaslPrep$StringType=var1611, $r1=var2529, com.mysql.cj.util.SaslPrep=var2619, $r2=var1333, $r3=var3982, $r4=var1506}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 2}
;stmts r5 := @this: com.mysql.cj.sasl.ScramShaSaslClient;	r0 := @parameter0: java.lang.String;	$r1 = <com.mysql.cj.util.SaslPrep$StringType: com.mysql.cj.util.SaslPrep$StringType QUERY>;	$r2 = staticinvoke <com.mysql.cj.util.SaslPrep: java.lang.String prepare(java.lang.String,com.mysql.cj.util.SaslPrep$StringType)>(r0, $r1);	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("=", "=2D");	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(",", "=2C");	return $r4
;block_num 1
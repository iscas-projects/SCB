(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3347 0)
(declare-sort var3078 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun to/-347182536 (var3078 var3078 String) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-String String)
(declare-const var3078-UPPER_UNDERSCORE var3078)
(declare-const var3078-LOWER_CAMEL var3078)
(declare-const var3278 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3278 null-String)))
(assert true)
(define-const var3917 Int (length/-134980193 var3278)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i1 <= 0 goto $i4 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (<= var3917 0)) ; Cond: i1 <= 0 
(assert true)
(define-const var3102 Int (length/-134980193 var3278)) ; Statement: $i4 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i1 != $i4 goto $r1 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat UPPER_UNDERSCORE> 
(assert (not (= var3917 var3102))) ; Cond: i1 != $i4 
(define-const var398 var3078 var3078-UPPER_UNDERSCORE) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat UPPER_UNDERSCORE> 
(define-const var2163 var3078 var3078-LOWER_CAMEL) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat LOWER_CAMEL> 
(assert (and true (and (>= 0 0) (>= (str.len var3278) var3917) (>= var3917 0))))
(define-const var3149 String (substring/-1240304868 var3278 0 var3917)) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i1) 
(assert true)
(define-const var1451 String (to/-347182536 var398 var2163 var3149)) ; Statement: $r5 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat: java.lang.String 'to'(com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat,java.lang.String)>($r2, $r3) 
(assert (and true (and (>= var3917 0) (>= (str.len var3278) var3917))))
(define-const var2543 String (substring/850833817 var3278 var3917)) ; Statement: $r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i1) 
(define-const var2264 String (str.++ "\u0001\u0001" var1451 var2543)) ; Statement: $r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r5, $r4) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001") 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), to/-347182536=([com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat, com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat, java.lang.String], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var3278=r0, var3347=null_type, var3917=i1, var3102=$i4, var3078=com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat, var398=$r1, var2163=$r2, var3149=$r3, var1451=$r5, var2543=$r4, var2264=$r6}
; {r0=var3278, null_type=var3347, i1=var3917, $i4=var3102, com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat=var3078, $r1=var398, $r2=var2163, $r3=var3149, $r5=var1451, $r4=var2543, $r6=var2264}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i1 <= 0 goto $i4 = virtualinvoke r0.<java.lang.String: int length()>();	$i4 = virtualinvoke r0.<java.lang.String: int length()>();	if i1 != $i4 goto $r1 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat UPPER_UNDERSCORE>;	$r1 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat UPPER_UNDERSCORE>;	$r2 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat LOWER_CAMEL>;	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i1);	$r5 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat: java.lang.String 'to'(com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat,java.lang.String)>($r2, $r3);	$r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i1);	$r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r5, $r4) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001");	return $r6
;block_num 4
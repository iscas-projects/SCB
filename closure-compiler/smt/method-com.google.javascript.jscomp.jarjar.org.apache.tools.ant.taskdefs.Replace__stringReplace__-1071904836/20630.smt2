(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3937 0)
(declare-sort var2836 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun indexOf/-1077578550 (String String) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3937 var3937)
(declare-const null-String String)
(declare-const var3631 var3937) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace 
(assert (not (= var3631 null-var3937)))
(declare-const var1006 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1006 null-String)))
(declare-const var1559 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1559 null-String)))
(declare-const var310 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var310 null-String)))
(assert true)
(define-const var96 Int (indexOf/-1077578550 var1006 var1559)) ; Statement: i4 = virtualinvoke r0.<java.lang.StringBuilder: int indexOf(java.lang.String)>(r1) 
(assert true)
(define-const var1865 Int (length/-134980193 var1559)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
(define-const var1542 Int (length/-134980193 var310)) ; Statement: i1 = virtualinvoke r2.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i4 < 0 goto return 
(assert (< var96 0)) ; Cond: i4 < 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1077578550=([java.lang.StringBuilder, java.lang.String], int), length/-134980193=([java.lang.String], int)}
; {var3937=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace, var3631=r3, var1006=r0, var1559=r1, var2836=null_type, var310=r2, var96=i4, var1865=i0, var1542=i1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace=var3937, r3=var3631, r0=var1006, r1=var1559, null_type=var2836, r2=var310, i4=var96, i0=var1865, i1=var1542}
;seq <java.lang.StringBuilder: int indexOf(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: int indexOf(java.lang.String)>": 1,"<java.lang.String: int length()>": 2}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace;	r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	i4 = virtualinvoke r0.<java.lang.StringBuilder: int indexOf(java.lang.String)>(r1);	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i1 = virtualinvoke r2.<java.lang.String: int length()>();	if i4 < 0 goto return;	return
;block_num 3
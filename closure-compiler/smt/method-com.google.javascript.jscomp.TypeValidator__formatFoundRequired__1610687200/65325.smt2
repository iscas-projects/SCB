(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2497 0)
(declare-sort var935 0)
(declare-sort var1204 0)
(declare-sort var2754 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-1789913861 (var935) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-String-init () (Array Int String))
(declare-fun var2754_formatMessage/-2061599478 (String (Array Int String)) String)
(declare-const null-String String)
(declare-const null-var935 var935)
(declare-const null-var1204 var1204)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1783 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1783 null-String)))
(declare-const var2994 var935) ; Statement: r0 := @parameter1: com.google.javascript.rhino.jstype.JSType 
(assert (not (= var2994 null-var935)))
(declare-const var355 var935) ; Statement: r1 := @parameter2: com.google.javascript.rhino.jstype.JSType 
(assert (not (= var355 null-var935)))
(declare-const var3748 var1204) ; Statement: r2 := @parameter3: java.util.Set 
(assert (not (= var3748 null-var1204)))
(declare-const var2232 var1204) ; Statement: r3 := @parameter4: java.util.Set 
(assert (not (= var2232 null-var1204)))
(assert true)
(define-const var1651 String (toString/-1789913861 var2994)) ; Statement: r13 = virtualinvoke r0.<com.google.javascript.rhino.jstype.JSType: java.lang.String toString()>() 
(assert true)
(define-const var1426 String (toString/-1789913861 var355)) ; Statement: r14 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSType: java.lang.String toString()>() 
(assert true)
(define-const var2837 Bool (= var1651 var1426)) ; Statement: $z0 = virtualinvoke r13.<java.lang.String: boolean equals(java.lang.Object)>(r14) 
 ; Statement: if $z0 == 0 goto r15 = "" 
(assert (= (ite var2837 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2308 String "") ; Statement: r15 = "" 
(define-const var1212 String "") ; Statement: r16 = "" 
 ; Statement: if r2 == null goto (branch) 
(assert (= var3748 null-var1204)) ; Cond: r2 == null 
 ; Statement: if r3 == null goto $i1 = virtualinvoke r15.<java.lang.String: int length()>() 
(assert (= var2232 null-var1204)) ; Cond: r3 == null 
(assert true)
(define-const var3095 Int (length/-134980193 var2308)) ; Statement: $i1 = virtualinvoke r15.<java.lang.String: int length()>() 
 ; Statement: if $i1 > 0 goto $r4 = newarray (java.lang.String)[5] 
(assert (> var3095 0)) ; Cond: $i1 > 0 
(define-const var2333 (Array Int String) arr-String-init) ; Statement: $r4 = newarray (java.lang.String)[5] 
(declare-const var2333!1 (Array Int String))
(assert (not (= var2333!1 null-__Array__Int__String__)))
(assert (= (select var2333!1 0) var1783)) ; Statement: $r4[0] = r5 
(declare-const var2333!2 (Array Int String))
(assert (not (= var2333!2 null-__Array__Int__String__)))
(assert (= (select var2333!2 1) var1651)) ; Statement: $r4[1] = r13 
(declare-const var2333!3 (Array Int String))
(assert (not (= var2333!3 null-__Array__Int__String__)))
(assert (= (select var2333!3 2) var1426)) ; Statement: $r4[2] = r14 
(declare-const var2333!4 (Array Int String))
(assert (not (= var2333!4 null-__Array__Int__String__)))
(assert (= (select var2333!4 3) var2308)) ; Statement: $r4[3] = r15 
(declare-const var2333!5 (Array Int String))
(assert (not (= var2333!5 null-__Array__Int__String__)))
(assert (= (select var2333!5 4) var1212)) ; Statement: $r4[4] = r16 
(define-const var1741 String (var2754_formatMessage/-2061599478 "{0}\nfound   : {1}\nrequired: {2}\nmissing : [{3}]\nmismatch: [{4}]" var2333!5)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.Platform: java.lang.String formatMessage(java.lang.String,java.lang.String[])>("{0}\nfound   : {1}\nrequired: {2}\nmissing : [{3}]\nmismatch: [{4}]", $r4) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-1789913861=([com.google.javascript.rhino.jstype.JSType], java.lang.String), length/-134980193=([java.lang.String], int), arr-String-init=([], java.lang.String[]), var2754_formatMessage/-2061599478=([java.lang.String, java.lang.String[]], java.lang.String)}
; {var1783=r5, var2497=null_type, var935=com.google.javascript.rhino.jstype.JSType, var2994=r0, var355=r1, var1204=java.util.Set, var3748=r2, var2232=r3, var1651=r13, var1426=r14, var2837=$z0, var2308=r15, var1212=r16, var3095=$i1, var2333=$r4, var2754=com.google.javascript.jscomp.Platform, var1741=$r6}
; {r5=var1783, null_type=var2497, com.google.javascript.rhino.jstype.JSType=var935, r0=var2994, r1=var355, java.util.Set=var1204, r2=var3748, r3=var2232, r13=var1651, r14=var1426, $z0=var2837, r15=var2308, r16=var1212, $i1=var3095, $r4=var2333, com.google.javascript.jscomp.Platform=var2754, $r6=var1741}
;seq <com.google.javascript.rhino.jstype.JSType: java.lang.String toString()>;	<com.google.javascript.rhino.jstype.JSType: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: int length()>": 1}
;stmts r5 := @parameter0: java.lang.String;	r0 := @parameter1: com.google.javascript.rhino.jstype.JSType;	r1 := @parameter2: com.google.javascript.rhino.jstype.JSType;	r2 := @parameter3: java.util.Set;	r3 := @parameter4: java.util.Set;	r13 = virtualinvoke r0.<com.google.javascript.rhino.jstype.JSType: java.lang.String toString()>();	r14 = virtualinvoke r1.<com.google.javascript.rhino.jstype.JSType: java.lang.String toString()>();	$z0 = virtualinvoke r13.<java.lang.String: boolean equals(java.lang.Object)>(r14);	if $z0 == 0 goto r15 = "";	r15 = "";	r16 = "";	if r2 == null goto (branch);	if r3 == null goto $i1 = virtualinvoke r15.<java.lang.String: int length()>();	$i1 = virtualinvoke r15.<java.lang.String: int length()>();	if $i1 > 0 goto $r4 = newarray (java.lang.String)[5];	$r4 = newarray (java.lang.String)[5];	$r4[0] = r5;	$r4[1] = r13;	$r4[2] = r14;	$r4[3] = r15;	$r4[4] = r16;	$r6 = staticinvoke <com.google.javascript.jscomp.Platform: java.lang.String formatMessage(java.lang.String,java.lang.String[])>("{0}\nfound   : {1}\nrequired: {2}\nmissing : [{3}]\nmismatch: [{4}]", $r4);	return $r6
;block_num 5
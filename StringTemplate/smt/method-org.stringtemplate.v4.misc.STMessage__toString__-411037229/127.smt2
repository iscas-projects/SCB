(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3131 0)
(declare-sort var425 0)
(declare-sort var2750 0)
(declare-sort var96 0)
(declare-sort var3833 0)
(declare-sort var3934 0)
(declare-sort var3596 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var425-init () var425)
(declare-fun <init>/358169345 (var425) void)
(declare-fun var2750-init () var2750)
(declare-fun <init>/-1864438596 (var2750 var96) void)
(declare-fun cast-from-var425-to-var96 (var425) var96)
(declare-fun error/1626411899 (var3131) var3833)
(declare-fun message/668038743 (var3833) String)
(declare-fun arr-var3934-init () (Array Int var3934))
(declare-fun arg/1626411899 (var3131) var3934)
(declare-fun arg2/1626411899 (var3131) var3934)
(declare-fun arg3/1626411899 (var3131) var3934)
(declare-fun String_format/1339386452 (String (Array Int var3934)) String)
(declare-fun print/-2007916749 (var2750 String) void)
(declare-fun cause/1626411899 (var3131) var3596)
(declare-fun toString/138175384 (var425) String)
(declare-const null-var3131 var3131)
(declare-const null-__Array__Int__var3934__ (Array Int var3934))
(declare-const null-var3596 var3596)
(declare-const var2657 var3131) ; Statement: r2 := @this: org.stringtemplate.v4.misc.STMessage 
(assert (not (= var2657 null-var3131)))
(define-const var3370 var425 var425-init) ; Statement: $r0 = new java.io.StringWriter 
(assert true)
;(assert (<init>/358169345 var3370)) ; Statement: specialinvoke $r0.<java.io.StringWriter: void <init>()>() 

(declare-const var3370!1 var425)
(define-const var2985 var2750 var2750-init) ; Statement: $r1 = new java.io.PrintWriter 
(assert true)
;(assert (<init>/-1864438596 var2985 (cast-from-var425-to-var96 var3370!1))) ; Statement: specialinvoke $r1.<java.io.PrintWriter: void <init>(java.io.Writer)>($r0) 

(declare-const var2985!1 var2750)
(declare-const var3370!2 var425)
(define-const var3241 var3833 (error/1626411899 var2657)) ; Statement: $r3 = r2.<org.stringtemplate.v4.misc.STMessage: org.stringtemplate.v4.misc.ErrorType error> 
(define-const var1741 String (message/668038743 var3241)) ; Statement: $r8 = $r3.<org.stringtemplate.v4.misc.ErrorType: java.lang.String message> 
(define-const var182 (Array Int var3934) arr-var3934-init) ; Statement: $r4 = newarray (java.lang.Object)[3] 
(define-const var560 var3934 (arg/1626411899 var2657)) ; Statement: $r5 = r2.<org.stringtemplate.v4.misc.STMessage: java.lang.Object arg> 
(declare-const var182!1 (Array Int var3934))
(assert (not (= var182!1 null-__Array__Int__var3934__)))
(assert (= (select var182!1 0) var560)) ; Statement: $r4[0] = $r5 
(define-const var3838 var3934 (arg2/1626411899 var2657)) ; Statement: $r6 = r2.<org.stringtemplate.v4.misc.STMessage: java.lang.Object arg2> 
(declare-const var182!2 (Array Int var3934))
(assert (not (= var182!2 null-__Array__Int__var3934__)))
(assert (= (select var182!2 1) var3838)) ; Statement: $r4[1] = $r6 
(define-const var2668 var3934 (arg3/1626411899 var2657)) ; Statement: $r7 = r2.<org.stringtemplate.v4.misc.STMessage: java.lang.Object arg3> 
(declare-const var182!3 (Array Int var3934))
(assert (not (= var182!3 null-__Array__Int__var3934__)))
(assert (= (select var182!3 2) var2668)) ; Statement: $r4[2] = $r7 
(define-const var3270 String (String_format/1339386452 var1741 var182!3)) ; Statement: r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>($r8, $r4) 
(assert true)
;(assert (print/-2007916749 var2985!1 var3270)) ; Statement: virtualinvoke $r1.<java.io.PrintWriter: void print(java.lang.String)>(r9) 

(declare-const var2985!2 var2750)
(declare-const var3270!1 String)
(define-const var2081 var3596 (cause/1626411899 var2657)) ; Statement: $r10 = r2.<org.stringtemplate.v4.misc.STMessage: java.lang.Throwable cause> 
 ; Statement: if $r10 == null goto $r11 = virtualinvoke $r0.<java.io.StringWriter: java.lang.String toString()>() 
(assert (= var2081 null-var3596)) ; Cond: $r10 == null 
(assert true)
(define-const var2987 String (toString/138175384 var3370!2)) ; Statement: $r11 = virtualinvoke $r0.<java.io.StringWriter: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var425-init=([], java.io.StringWriter), <init>/358169345=([java.io.StringWriter], void), var2750-init=([], java.io.PrintWriter), <init>/-1864438596=([java.io.PrintWriter, java.io.Writer], void), cast-from-var425-to-var96=([java.io.StringWriter], java.io.Writer), error/1626411899=([org.stringtemplate.v4.misc.STMessage], org.stringtemplate.v4.misc.ErrorType), message/668038743=([org.stringtemplate.v4.misc.ErrorType], java.lang.String), arr-var3934-init=([], java.lang.Object[]), arg/1626411899=([org.stringtemplate.v4.misc.STMessage], java.lang.Object), arg2/1626411899=([org.stringtemplate.v4.misc.STMessage], java.lang.Object), arg3/1626411899=([org.stringtemplate.v4.misc.STMessage], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), print/-2007916749=([java.io.PrintWriter, java.lang.String], void), cause/1626411899=([org.stringtemplate.v4.misc.STMessage], java.lang.Throwable), toString/138175384=([java.io.StringWriter], java.lang.String)}
; {var3131=org.stringtemplate.v4.misc.STMessage, var2657=r2, var425=java.io.StringWriter, var3370=$r0, var2750=java.io.PrintWriter, var2985=$r1, var96=java.io.Writer, var3833=org.stringtemplate.v4.misc.ErrorType, var3241=$r3, var1741=$r8, var3934=java.lang.Object, var182=$r4, var560=$r5, var3838=$r6, var2668=$r7, var3270=r9, var3596=java.lang.Throwable, var2081=$r10, var2987=$r11}
; {org.stringtemplate.v4.misc.STMessage=var3131, r2=var2657, java.io.StringWriter=var425, $r0=var3370, java.io.PrintWriter=var2750, $r1=var2985, java.io.Writer=var96, org.stringtemplate.v4.misc.ErrorType=var3833, $r3=var3241, $r8=var1741, java.lang.Object=var3934, $r4=var182, $r5=var560, $r6=var3838, $r7=var2668, r9=var3270, java.lang.Throwable=var3596, $r10=var2081, $r11=var2987}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.io.StringWriter: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r2 := @this: org.stringtemplate.v4.misc.STMessage;	$r0 = new java.io.StringWriter;	specialinvoke $r0.<java.io.StringWriter: void <init>()>();	$r1 = new java.io.PrintWriter;	specialinvoke $r1.<java.io.PrintWriter: void <init>(java.io.Writer)>($r0);	$r3 = r2.<org.stringtemplate.v4.misc.STMessage: org.stringtemplate.v4.misc.ErrorType error>;	$r8 = $r3.<org.stringtemplate.v4.misc.ErrorType: java.lang.String message>;	$r4 = newarray (java.lang.Object)[3];	$r5 = r2.<org.stringtemplate.v4.misc.STMessage: java.lang.Object arg>;	$r4[0] = $r5;	$r6 = r2.<org.stringtemplate.v4.misc.STMessage: java.lang.Object arg2>;	$r4[1] = $r6;	$r7 = r2.<org.stringtemplate.v4.misc.STMessage: java.lang.Object arg3>;	$r4[2] = $r7;	r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>($r8, $r4);	virtualinvoke $r1.<java.io.PrintWriter: void print(java.lang.String)>(r9);	$r10 = r2.<org.stringtemplate.v4.misc.STMessage: java.lang.Throwable cause>;	if $r10 == null goto $r11 = virtualinvoke $r0.<java.io.StringWriter: java.lang.String toString()>();	$r11 = virtualinvoke $r0.<java.io.StringWriter: java.lang.String toString()>();	return $r11
;block_num 2
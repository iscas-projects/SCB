(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1550 0)
(declare-sort var3067 0)
(declare-sort var3165 0)
(declare-sort var3238 0)
(declare-sort var3802 0)
(declare-sort var3888 0)
(declare-sort var460 0)
(declare-sort var3193 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cause/1626411899 (var3165) var3067)
(declare-fun cast-from-var1550-to-var3165 (var1550) var3165)
(declare-fun cast-from-var3067-to-var3238 (var3067) var3238)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun token/166766778 (var1550) var3802)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun srcName/166766778 (var1550) String)
(declare-fun error/1626411899 (var3165) var460)
(declare-fun message/668038743 (var460) String)
(declare-fun arr-var3193-init () (Array Int var3193))
(declare-fun arg/1626411899 (var3165) var3193)
(declare-fun arg2/1626411899 (var3165) var3193)
(declare-fun String_format/1339386452 (String (Array Int var3193)) String)
(declare-const null-var1550 var1550)
(declare-const null-var3802 var3802)
(declare-const null-var3238 var3238)
(declare-const null-String String)
(declare-const null-__Array__Int__var3193__ (Array Int var3193))
(declare-const var968 var1550) ; Statement: r0 := @this: org.stringtemplate.v4.misc.STGroupCompiletimeMessage 
(assert (not (= var968 null-var1550)))
(define-const var3255 var3067 (cause/1626411899 (cast-from-var1550-to-var3165 var968))) ; Statement: $r1 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.Throwable cause> 
(define-const var2515 var3238 (cast-from-var3067-to-var3238 var3255)) ; Statement: r2 = (org.antlr.runtime.RecognitionException) $r1 
(define-const var2706 Int 0) ; Statement: i0 = 0 
(define-const var3886 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
(define-const var1962 Int var3886) ; Statement: i1 = $i3 
(define-const var2050 var3802 (token/166766778 var968)) ; Statement: $r3 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: org.antlr.runtime.Token token> 
 ; Statement: if $r3 == null goto (branch) 
(assert (= var2050 null-var3802)) ; Cond: $r3 == null 
 ; Statement: if r2 == null goto $r37 = new java.lang.StringBuilder 
(assert (= var2515 null-var3238)) ; Cond: r2 == null 
(define-const var2247 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2247)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2247!1 String)
(assert (= var2247!1 ""))
(assert true)
(define-const var2348 String (append/-1001720160 var2247!1 var2706)) ; Statement: $r32 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2247!2 String)
(assert (str.prefixof var2247!1 var2247!2))
(assert true)
(define-const var3931 String (append/672562846 var2348 ":")) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2348!1 String)
(assert (= var2348!1 (str.++ var2348 ":")))
(assert true)
(define-const var992 String (append/-1001720160 var3931 var1962)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3931!1 String)
(assert (str.prefixof var3931 var3931!1))
(assert true)
(define-const var2439 String (toString/-2075883882 var992)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1808 String (srcName/166766778 var968)) ; Statement: $r36 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.String srcName> 
 ; Statement: if $r36 == null goto $r39 = new java.lang.StringBuilder 
(assert (= var1808 null-String)) ; Cond: $r36 == null 
(define-const var2345 String String-init) ; Statement: $r39 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2345)) ; Statement: specialinvoke $r39.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2345!1 String)
(assert (= var2345!1 ""))
(assert true)
(define-const var3272 String (append/672562846 var2345!1 var2439)) ; Statement: $r5 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35) 
(declare-const var2345!2 String)
(assert (= var2345!2 (str.++ var2345!1 var2439)))
(assert true)
(define-const var652 String (append/672562846 var3272 ": ")) ; Statement: $r12 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var3272!1 String)
(assert (= var3272!1 (str.++ var3272 ": ")))
(define-const var96 var460 (error/1626411899 (cast-from-var1550-to-var3165 var968))) ; Statement: $r6 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: org.stringtemplate.v4.misc.ErrorType error> 
(define-const var1653 String (message/668038743 var96)) ; Statement: $r10 = $r6.<org.stringtemplate.v4.misc.ErrorType: java.lang.String message> 
(define-const var3249 (Array Int var3193) arr-var3193-init) ; Statement: $r7 = newarray (java.lang.Object)[2] 
(define-const var623 var3193 (arg/1626411899 (cast-from-var1550-to-var3165 var968))) ; Statement: $r8 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.Object arg> 
(declare-const var3249!1 (Array Int var3193))
(assert (not (= var3249!1 null-__Array__Int__var3193__)))
(assert (= (select var3249!1 0) var623)) ; Statement: $r7[0] = $r8 
(define-const var2455 var3193 (arg2/1626411899 (cast-from-var1550-to-var3165 var968))) ; Statement: $r9 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.Object arg2> 
(declare-const var3249!2 (Array Int var3193))
(assert (not (= var3249!2 null-__Array__Int__var3193__)))
(assert (= (select var3249!2 1) var2455)) ; Statement: $r7[1] = $r9 
(define-const var953 String (String_format/1339386452 var1653 var3249!2)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>($r10, $r7) 
(assert true)
(define-const var159 String (append/672562846 var652 var953)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var652!1 String)
(assert (= var652!1 (str.++ var652 var953)))
(assert true)
(define-const var2632 String (toString/-2075883882 var159)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {cause/1626411899=([org.stringtemplate.v4.misc.STMessage], java.lang.Throwable), cast-from-var1550-to-var3165=([org.stringtemplate.v4.misc.STGroupCompiletimeMessage], org.stringtemplate.v4.misc.STMessage), cast-from-var3067-to-var3238=([java.lang.Throwable], org.antlr.runtime.RecognitionException), cast-from-Int-to-Int=([int], int), token/166766778=([org.stringtemplate.v4.misc.STGroupCompiletimeMessage], org.antlr.runtime.Token), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), srcName/166766778=([org.stringtemplate.v4.misc.STGroupCompiletimeMessage], java.lang.String), error/1626411899=([org.stringtemplate.v4.misc.STMessage], org.stringtemplate.v4.misc.ErrorType), message/668038743=([org.stringtemplate.v4.misc.ErrorType], java.lang.String), arr-var3193-init=([], java.lang.Object[]), arg/1626411899=([org.stringtemplate.v4.misc.STMessage], java.lang.Object), arg2/1626411899=([org.stringtemplate.v4.misc.STMessage], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1550=org.stringtemplate.v4.misc.STGroupCompiletimeMessage, var968=r0, var3067=java.lang.Throwable, var3165=org.stringtemplate.v4.misc.STMessage, var3255=$r1, var3238=org.antlr.runtime.RecognitionException, var2515=r2, var2706=i0, var3886=$i3, var1962=i1, var3802=org.antlr.runtime.Token, var2050=$r3, var2247=$r37, var2348=$r32, var3931=$r33, var992=$r34, var2439=$r35, var1808=$r36, var3888=null_type, var2345=$r39, var3272=$r5, var652=$r12, var460=org.stringtemplate.v4.misc.ErrorType, var96=$r6, var1653=$r10, var3193=java.lang.Object, var3249=$r7, var623=$r8, var2455=$r9, var953=$r11, var159=$r13, var2632=$r14}
; {org.stringtemplate.v4.misc.STGroupCompiletimeMessage=var1550, r0=var968, java.lang.Throwable=var3067, org.stringtemplate.v4.misc.STMessage=var3165, $r1=var3255, org.antlr.runtime.RecognitionException=var3238, r2=var2515, i0=var2706, $i3=var3886, i1=var1962, org.antlr.runtime.Token=var3802, $r3=var2050, $r37=var2247, $r32=var2348, $r33=var3931, $r34=var992, $r35=var2439, $r36=var1808, null_type=var3888, $r39=var2345, $r5=var3272, $r12=var652, org.stringtemplate.v4.misc.ErrorType=var460, $r6=var96, $r10=var1653, java.lang.Object=var3193, $r7=var3249, $r8=var623, $r9=var2455, $r11=var953, $r13=var159, $r14=var2632}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.stringtemplate.v4.misc.STGroupCompiletimeMessage;	$r1 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.Throwable cause>;	r2 = (org.antlr.runtime.RecognitionException) $r1;	i0 = 0;	$i3 = (int) -1;	i1 = $i3;	$r3 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: org.antlr.runtime.Token token>;	if $r3 == null goto (branch);	if r2 == null goto $r37 = new java.lang.StringBuilder;	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r32 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>();	$r36 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.String srcName>;	if $r36 == null goto $r39 = new java.lang.StringBuilder;	$r39 = new java.lang.StringBuilder;	specialinvoke $r39.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35);	$r12 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r6 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: org.stringtemplate.v4.misc.ErrorType error>;	$r10 = $r6.<org.stringtemplate.v4.misc.ErrorType: java.lang.String message>;	$r7 = newarray (java.lang.Object)[2];	$r8 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.Object arg>;	$r7[0] = $r8;	$r9 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.Object arg2>;	$r7[1] = $r9;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>($r10, $r7);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 4
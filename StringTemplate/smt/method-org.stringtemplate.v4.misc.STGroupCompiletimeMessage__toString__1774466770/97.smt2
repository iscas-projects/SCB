(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3202 0)
(declare-sort var355 0)
(declare-sort var3556 0)
(declare-sort var1108 0)
(declare-sort var154 0)
(declare-sort var3277 0)
(declare-sort var1815 0)
(declare-sort var3565 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cause/1626411899 (var3556) var355)
(declare-fun cast-from-var3202-to-var3556 (var3202) var3556)
(declare-fun cast-from-var355-to-var1108 (var355) var1108)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun token/166766778 (var3202) var154)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun srcName/166766778 (var3202) String)
(declare-fun error/1626411899 (var3556) var1815)
(declare-fun message/668038743 (var1815) String)
(declare-fun arr-var3565-init () (Array Int var3565))
(declare-fun arg/1626411899 (var3556) var3565)
(declare-fun arg2/1626411899 (var3556) var3565)
(declare-fun String_format/1339386452 (String (Array Int var3565)) String)
(declare-const null-var3202 var3202)
(declare-const null-var154 var154)
(declare-const null-var1108 var1108)
(declare-const null-String String)
(declare-const null-__Array__Int__var3565__ (Array Int var3565))
(declare-const var1191 var3202) ; Statement: r0 := @this: org.stringtemplate.v4.misc.STGroupCompiletimeMessage 
(assert (not (= var1191 null-var3202)))
(define-const var2929 var355 (cause/1626411899 (cast-from-var3202-to-var3556 var1191))) ; Statement: $r1 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.Throwable cause> 
(define-const var3718 var1108 (cast-from-var355-to-var1108 var2929)) ; Statement: r2 = (org.antlr.runtime.RecognitionException) $r1 
(define-const var1138 Int 0) ; Statement: i0 = 0 
(define-const var2085 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
(define-const var1687 Int var2085) ; Statement: i1 = $i3 
(define-const var2236 var154 (token/166766778 var1191)) ; Statement: $r3 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: org.antlr.runtime.Token token> 
 ; Statement: if $r3 == null goto (branch) 
(assert (= var2236 null-var154)) ; Cond: $r3 == null 
 ; Statement: if r2 == null goto $r37 = new java.lang.StringBuilder 
(assert (= var3718 null-var1108)) ; Cond: r2 == null 
(define-const var1533 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1533)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1533!1 String)
(assert (= var1533!1 ""))
(assert true)
(define-const var149 String (append/-1001720160 var1533!1 var1138)) ; Statement: $r32 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1533!2 String)
(assert (str.prefixof var1533!1 var1533!2))
(assert true)
(define-const var3930 String (append/672562846 var149 ":")) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var149!1 String)
(assert (= var149!1 (str.++ var149 ":")))
(assert true)
(define-const var1691 String (append/-1001720160 var3930 var1687)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3930!1 String)
(assert (str.prefixof var3930 var3930!1))
(assert true)
(define-const var2251 String (toString/-2075883882 var1691)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2134 String (srcName/166766778 var1191)) ; Statement: $r36 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.String srcName> 
 ; Statement: if $r36 == null goto $r39 = new java.lang.StringBuilder 
(assert (not (= var2134 null-String))) ; Negate: Cond: $r36 == null  
(define-const var2732 String String-init) ; Statement: $r38 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2732)) ; Statement: specialinvoke $r38.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2732!1 String)
(assert (= var2732!1 ""))
(define-const var1538 String (srcName/166766778 var1191)) ; Statement: $r16 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.String srcName> 
(assert true)
(define-const var2337 String (append/672562846 var2732!1 var1538)) ; Statement: $r17 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var2732!2 String)
(assert (= var2732!2 (str.++ var2732!1 var1538)))
(assert true)
(define-const var556 String (append/672562846 var2337 " ")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var2337!1 String)
(assert (= var2337!1 (str.++ var2337 " ")))
(assert true)
(define-const var543 String (append/672562846 var556 var2251)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35) 
(declare-const var556!1 String)
(assert (= var556!1 (str.++ var556 var2251)))
(assert true)
(define-const var3142 String (append/672562846 var543 ": ")) ; Statement: $r26 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var543!1 String)
(assert (= var543!1 (str.++ var543 ": ")))
(define-const var880 var1815 (error/1626411899 (cast-from-var3202-to-var3556 var1191))) ; Statement: $r20 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: org.stringtemplate.v4.misc.ErrorType error> 
(define-const var1545 String (message/668038743 var880)) ; Statement: $r24 = $r20.<org.stringtemplate.v4.misc.ErrorType: java.lang.String message> 
(define-const var875 (Array Int var3565) arr-var3565-init) ; Statement: $r21 = newarray (java.lang.Object)[2] 
(define-const var2169 var3565 (arg/1626411899 (cast-from-var3202-to-var3556 var1191))) ; Statement: $r22 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.Object arg> 
(declare-const var875!1 (Array Int var3565))
(assert (not (= var875!1 null-__Array__Int__var3565__)))
(assert (= (select var875!1 0) var2169)) ; Statement: $r21[0] = $r22 
(define-const var3997 var3565 (arg2/1626411899 (cast-from-var3202-to-var3556 var1191))) ; Statement: $r23 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.Object arg2> 
(declare-const var875!2 (Array Int var3565))
(assert (not (= var875!2 null-__Array__Int__var3565__)))
(assert (= (select var875!2 1) var3997)) ; Statement: $r21[1] = $r23 
(define-const var1227 String (String_format/1339386452 var1545 var875!2)) ; Statement: $r25 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>($r24, $r21) 
(assert true)
(define-const var2136 String (append/672562846 var3142 var1227)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var3142!1 String)
(assert (= var3142!1 (str.++ var3142 var1227)))
(assert true)
(define-const var2608 String (toString/-2075883882 var2136)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {cause/1626411899=([org.stringtemplate.v4.misc.STMessage], java.lang.Throwable), cast-from-var3202-to-var3556=([org.stringtemplate.v4.misc.STGroupCompiletimeMessage], org.stringtemplate.v4.misc.STMessage), cast-from-var355-to-var1108=([java.lang.Throwable], org.antlr.runtime.RecognitionException), cast-from-Int-to-Int=([int], int), token/166766778=([org.stringtemplate.v4.misc.STGroupCompiletimeMessage], org.antlr.runtime.Token), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), srcName/166766778=([org.stringtemplate.v4.misc.STGroupCompiletimeMessage], java.lang.String), error/1626411899=([org.stringtemplate.v4.misc.STMessage], org.stringtemplate.v4.misc.ErrorType), message/668038743=([org.stringtemplate.v4.misc.ErrorType], java.lang.String), arr-var3565-init=([], java.lang.Object[]), arg/1626411899=([org.stringtemplate.v4.misc.STMessage], java.lang.Object), arg2/1626411899=([org.stringtemplate.v4.misc.STMessage], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3202=org.stringtemplate.v4.misc.STGroupCompiletimeMessage, var1191=r0, var355=java.lang.Throwable, var3556=org.stringtemplate.v4.misc.STMessage, var2929=$r1, var1108=org.antlr.runtime.RecognitionException, var3718=r2, var1138=i0, var2085=$i3, var1687=i1, var154=org.antlr.runtime.Token, var2236=$r3, var1533=$r37, var149=$r32, var3930=$r33, var1691=$r34, var2251=$r35, var2134=$r36, var3277=null_type, var2732=$r38, var1538=$r16, var2337=$r17, var556=$r18, var543=$r19, var3142=$r26, var1815=org.stringtemplate.v4.misc.ErrorType, var880=$r20, var1545=$r24, var3565=java.lang.Object, var875=$r21, var2169=$r22, var3997=$r23, var1227=$r25, var2136=$r27, var2608=$r28}
; {org.stringtemplate.v4.misc.STGroupCompiletimeMessage=var3202, r0=var1191, java.lang.Throwable=var355, org.stringtemplate.v4.misc.STMessage=var3556, $r1=var2929, org.antlr.runtime.RecognitionException=var1108, r2=var3718, i0=var1138, $i3=var2085, i1=var1687, org.antlr.runtime.Token=var154, $r3=var2236, $r37=var1533, $r32=var149, $r33=var3930, $r34=var1691, $r35=var2251, $r36=var2134, null_type=var3277, $r38=var2732, $r16=var1538, $r17=var2337, $r18=var556, $r19=var543, $r26=var3142, org.stringtemplate.v4.misc.ErrorType=var1815, $r20=var880, $r24=var1545, java.lang.Object=var3565, $r21=var875, $r22=var2169, $r23=var3997, $r25=var1227, $r27=var2136, $r28=var2608}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.stringtemplate.v4.misc.STGroupCompiletimeMessage;	$r1 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.Throwable cause>;	r2 = (org.antlr.runtime.RecognitionException) $r1;	i0 = 0;	$i3 = (int) -1;	i1 = $i3;	$r3 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: org.antlr.runtime.Token token>;	if $r3 == null goto (branch);	if r2 == null goto $r37 = new java.lang.StringBuilder;	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r32 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>();	$r36 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.String srcName>;	if $r36 == null goto $r39 = new java.lang.StringBuilder;	$r38 = new java.lang.StringBuilder;	specialinvoke $r38.<java.lang.StringBuilder: void <init>()>();	$r16 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.String srcName>;	$r17 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35);	$r26 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r20 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: org.stringtemplate.v4.misc.ErrorType error>;	$r24 = $r20.<org.stringtemplate.v4.misc.ErrorType: java.lang.String message>;	$r21 = newarray (java.lang.Object)[2];	$r22 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.Object arg>;	$r21[0] = $r22;	$r23 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.Object arg2>;	$r21[1] = $r23;	$r25 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>($r24, $r21);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	return $r28
;block_num 4
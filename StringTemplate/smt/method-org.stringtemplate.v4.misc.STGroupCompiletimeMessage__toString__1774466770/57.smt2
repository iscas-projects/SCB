(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3167 0)
(declare-sort var1573 0)
(declare-sort var1834 0)
(declare-sort var3875 0)
(declare-sort var949 0)
(declare-sort var2958 0)
(declare-sort var2478 0)
(declare-sort var3277 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cause/1626411899 (var1834) var1573)
(declare-fun cast-from-var3167-to-var1834 (var3167) var1834)
(declare-fun cast-from-var1573-to-var3875 (var1573) var3875)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun token/166766778 (var3167) var949)
(declare-fun var949_getLine/1383471142 (var949) Int)
(declare-fun var949_getCharPositionInLine/-2046109534 (var949) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun srcName/166766778 (var3167) String)
(declare-fun error/1626411899 (var1834) var2478)
(declare-fun message/668038743 (var2478) String)
(declare-fun arr-var3277-init () (Array Int var3277))
(declare-fun arg/1626411899 (var1834) var3277)
(declare-fun arg2/1626411899 (var1834) var3277)
(declare-fun String_format/1339386452 (String (Array Int var3277)) String)
(declare-const null-var3167 var3167)
(declare-const null-var949 var949)
(declare-const null-String String)
(declare-const null-__Array__Int__var3277__ (Array Int var3277))
(declare-const var1906 var3167) ; Statement: r0 := @this: org.stringtemplate.v4.misc.STGroupCompiletimeMessage 
(assert (not (= var1906 null-var3167)))
(define-const var2602 var1573 (cause/1626411899 (cast-from-var3167-to-var1834 var1906))) ; Statement: $r1 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.Throwable cause> 
(define-const var1548 var3875 (cast-from-var1573-to-var3875 var2602)) ; Statement: r2 = (org.antlr.runtime.RecognitionException) $r1 
(define-const var1413 Int 0) ; Statement: i0 = 0 
(define-const var2959 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
(define-const var2597 Int var2959) ; Statement: i1 = $i3 
(define-const var3796 var949 (token/166766778 var1906)) ; Statement: $r3 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: org.antlr.runtime.Token token> 
 ; Statement: if $r3 == null goto (branch) 
(assert (not (= var3796 null-var949))) ; Negate: Cond: $r3 == null  
(define-const var2938 var949 (token/166766778 var1906)) ; Statement: $r29 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: org.antlr.runtime.Token token> 
(define-const var1413!1 Int (var949_getLine/1383471142 var2938)) ; Statement: i0 = interfaceinvoke $r29.<org.antlr.runtime.Token: int getLine()>() 
(define-const var938 var949 (token/166766778 var1906)) ; Statement: $r30 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: org.antlr.runtime.Token token> 
(define-const var2597!1 Int (var949_getCharPositionInLine/-2046109534 var938)) ; Statement: i1 = interfaceinvoke $r30.<org.antlr.runtime.Token: int getCharPositionInLine()>() 
 ; Statement: goto [?= $r37 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var3489 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3489)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3489!1 String)
(assert (= var3489!1 ""))
(assert true)
(define-const var760 String (append/-1001720160 var3489!1 var1413!1)) ; Statement: $r32 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3489!2 String)
(assert (str.prefixof var3489!1 var3489!2))
(assert true)
(define-const var779 String (append/672562846 var760 ":")) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var760!1 String)
(assert (= var760!1 (str.++ var760 ":")))
(assert true)
(define-const var588 String (append/-1001720160 var779 var2597!1)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var779!1 String)
(assert (str.prefixof var779 var779!1))
(assert true)
(define-const var3555 String (toString/-2075883882 var588)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3924 String (srcName/166766778 var1906)) ; Statement: $r36 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.String srcName> 
 ; Statement: if $r36 == null goto $r39 = new java.lang.StringBuilder 
(assert (not (= var3924 null-String))) ; Negate: Cond: $r36 == null  
(define-const var827 String String-init) ; Statement: $r38 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var827)) ; Statement: specialinvoke $r38.<java.lang.StringBuilder: void <init>()>() 
(declare-const var827!1 String)
(assert (= var827!1 ""))
(define-const var3608 String (srcName/166766778 var1906)) ; Statement: $r16 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.String srcName> 
(assert true)
(define-const var3980 String (append/672562846 var827!1 var3608)) ; Statement: $r17 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var827!2 String)
(assert (= var827!2 (str.++ var827!1 var3608)))
(assert true)
(define-const var1052 String (append/672562846 var3980 " ")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3980!1 String)
(assert (= var3980!1 (str.++ var3980 " ")))
(assert true)
(define-const var3029 String (append/672562846 var1052 var3555)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35) 
(declare-const var1052!1 String)
(assert (= var1052!1 (str.++ var1052 var3555)))
(assert true)
(define-const var3533 String (append/672562846 var3029 ": ")) ; Statement: $r26 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var3029!1 String)
(assert (= var3029!1 (str.++ var3029 ": ")))
(define-const var2188 var2478 (error/1626411899 (cast-from-var3167-to-var1834 var1906))) ; Statement: $r20 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: org.stringtemplate.v4.misc.ErrorType error> 
(define-const var1401 String (message/668038743 var2188)) ; Statement: $r24 = $r20.<org.stringtemplate.v4.misc.ErrorType: java.lang.String message> 
(define-const var1582 (Array Int var3277) arr-var3277-init) ; Statement: $r21 = newarray (java.lang.Object)[2] 
(define-const var3451 var3277 (arg/1626411899 (cast-from-var3167-to-var1834 var1906))) ; Statement: $r22 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.Object arg> 
(declare-const var1582!1 (Array Int var3277))
(assert (not (= var1582!1 null-__Array__Int__var3277__)))
(assert (= (select var1582!1 0) var3451)) ; Statement: $r21[0] = $r22 
(define-const var1924 var3277 (arg2/1626411899 (cast-from-var3167-to-var1834 var1906))) ; Statement: $r23 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.Object arg2> 
(declare-const var1582!2 (Array Int var3277))
(assert (not (= var1582!2 null-__Array__Int__var3277__)))
(assert (= (select var1582!2 1) var1924)) ; Statement: $r21[1] = $r23 
(define-const var1470 String (String_format/1339386452 var1401 var1582!2)) ; Statement: $r25 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>($r24, $r21) 
(assert true)
(define-const var3761 String (append/672562846 var3533 var1470)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var3533!1 String)
(assert (= var3533!1 (str.++ var3533 var1470)))
(assert true)
(define-const var2962 String (toString/-2075883882 var3761)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {cause/1626411899=([org.stringtemplate.v4.misc.STMessage], java.lang.Throwable), cast-from-var3167-to-var1834=([org.stringtemplate.v4.misc.STGroupCompiletimeMessage], org.stringtemplate.v4.misc.STMessage), cast-from-var1573-to-var3875=([java.lang.Throwable], org.antlr.runtime.RecognitionException), cast-from-Int-to-Int=([int], int), token/166766778=([org.stringtemplate.v4.misc.STGroupCompiletimeMessage], org.antlr.runtime.Token), var949_getLine/1383471142=([org.antlr.runtime.Token], int), var949_getCharPositionInLine/-2046109534=([org.antlr.runtime.Token], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), srcName/166766778=([org.stringtemplate.v4.misc.STGroupCompiletimeMessage], java.lang.String), error/1626411899=([org.stringtemplate.v4.misc.STMessage], org.stringtemplate.v4.misc.ErrorType), message/668038743=([org.stringtemplate.v4.misc.ErrorType], java.lang.String), arr-var3277-init=([], java.lang.Object[]), arg/1626411899=([org.stringtemplate.v4.misc.STMessage], java.lang.Object), arg2/1626411899=([org.stringtemplate.v4.misc.STMessage], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3167=org.stringtemplate.v4.misc.STGroupCompiletimeMessage, var1906=r0, var1573=java.lang.Throwable, var1834=org.stringtemplate.v4.misc.STMessage, var2602=$r1, var3875=org.antlr.runtime.RecognitionException, var1548=r2, var1413=i0, var2959=$i3, var2597=i1, var949=org.antlr.runtime.Token, var3796=$r3, var2938=$r29, var938=$r30, var3489=$r37, var760=$r32, var779=$r33, var588=$r34, var3555=$r35, var3924=$r36, var2958=null_type, var827=$r38, var3608=$r16, var3980=$r17, var1052=$r18, var3029=$r19, var3533=$r26, var2478=org.stringtemplate.v4.misc.ErrorType, var2188=$r20, var1401=$r24, var3277=java.lang.Object, var1582=$r21, var3451=$r22, var1924=$r23, var1470=$r25, var3761=$r27, var2962=$r28}
; {org.stringtemplate.v4.misc.STGroupCompiletimeMessage=var3167, r0=var1906, java.lang.Throwable=var1573, org.stringtemplate.v4.misc.STMessage=var1834, $r1=var2602, org.antlr.runtime.RecognitionException=var3875, r2=var1548, i0=var1413, $i3=var2959, i1=var2597, org.antlr.runtime.Token=var949, $r3=var3796, $r29=var2938, $r30=var938, $r37=var3489, $r32=var760, $r33=var779, $r34=var588, $r35=var3555, $r36=var3924, null_type=var2958, $r38=var827, $r16=var3608, $r17=var3980, $r18=var1052, $r19=var3029, $r26=var3533, org.stringtemplate.v4.misc.ErrorType=var2478, $r20=var2188, $r24=var1401, java.lang.Object=var3277, $r21=var1582, $r22=var3451, $r23=var1924, $r25=var1470, $r27=var3761, $r28=var2962}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.stringtemplate.v4.misc.STGroupCompiletimeMessage;	$r1 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.Throwable cause>;	r2 = (org.antlr.runtime.RecognitionException) $r1;	i0 = 0;	$i3 = (int) -1;	i1 = $i3;	$r3 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: org.antlr.runtime.Token token>;	if $r3 == null goto (branch);	$r29 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: org.antlr.runtime.Token token>;	i0 = interfaceinvoke $r29.<org.antlr.runtime.Token: int getLine()>();	$r30 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: org.antlr.runtime.Token token>;	i1 = interfaceinvoke $r30.<org.antlr.runtime.Token: int getCharPositionInLine()>();	goto [?= $r37 = new java.lang.StringBuilder];	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r32 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>();	$r36 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.String srcName>;	if $r36 == null goto $r39 = new java.lang.StringBuilder;	$r38 = new java.lang.StringBuilder;	specialinvoke $r38.<java.lang.StringBuilder: void <init>()>();	$r16 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.String srcName>;	$r17 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35);	$r26 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r20 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: org.stringtemplate.v4.misc.ErrorType error>;	$r24 = $r20.<org.stringtemplate.v4.misc.ErrorType: java.lang.String message>;	$r21 = newarray (java.lang.Object)[2];	$r22 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.Object arg>;	$r21[0] = $r22;	$r23 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.Object arg2>;	$r21[1] = $r23;	$r25 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>($r24, $r21);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	return $r28
;block_num 4
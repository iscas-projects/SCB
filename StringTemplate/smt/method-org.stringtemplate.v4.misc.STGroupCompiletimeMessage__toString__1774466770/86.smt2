(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3792 0)
(declare-sort var2631 0)
(declare-sort var1801 0)
(declare-sort var1646 0)
(declare-sort var2778 0)
(declare-sort var549 0)
(declare-sort var740 0)
(declare-sort var1092 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cause/1626411899 (var1801) var2631)
(declare-fun cast-from-var3792-to-var1801 (var3792) var1801)
(declare-fun cast-from-var2631-to-var1646 (var2631) var1646)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun token/166766778 (var3792) var2778)
(declare-fun var2778_getLine/1383471142 (var2778) Int)
(declare-fun var2778_getCharPositionInLine/-2046109534 (var2778) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun srcName/166766778 (var3792) String)
(declare-fun error/1626411899 (var1801) var740)
(declare-fun message/668038743 (var740) String)
(declare-fun arr-var1092-init () (Array Int var1092))
(declare-fun arg/1626411899 (var1801) var1092)
(declare-fun arg2/1626411899 (var1801) var1092)
(declare-fun String_format/1339386452 (String (Array Int var1092)) String)
(declare-const null-var3792 var3792)
(declare-const null-var2778 var2778)
(declare-const null-String String)
(declare-const null-__Array__Int__var1092__ (Array Int var1092))
(declare-const var3992 var3792) ; Statement: r0 := @this: org.stringtemplate.v4.misc.STGroupCompiletimeMessage 
(assert (not (= var3992 null-var3792)))
(define-const var805 var2631 (cause/1626411899 (cast-from-var3792-to-var1801 var3992))) ; Statement: $r1 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.Throwable cause> 
(define-const var1152 var1646 (cast-from-var2631-to-var1646 var805)) ; Statement: r2 = (org.antlr.runtime.RecognitionException) $r1 
(define-const var3633 Int 0) ; Statement: i0 = 0 
(define-const var655 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
(define-const var1334 Int var655) ; Statement: i1 = $i3 
(define-const var1845 var2778 (token/166766778 var3992)) ; Statement: $r3 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: org.antlr.runtime.Token token> 
 ; Statement: if $r3 == null goto (branch) 
(assert (not (= var1845 null-var2778))) ; Negate: Cond: $r3 == null  
(define-const var308 var2778 (token/166766778 var3992)) ; Statement: $r29 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: org.antlr.runtime.Token token> 
(define-const var3633!1 Int (var2778_getLine/1383471142 var308)) ; Statement: i0 = interfaceinvoke $r29.<org.antlr.runtime.Token: int getLine()>() 
(define-const var1895 var2778 (token/166766778 var3992)) ; Statement: $r30 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: org.antlr.runtime.Token token> 
(define-const var1334!1 Int (var2778_getCharPositionInLine/-2046109534 var1895)) ; Statement: i1 = interfaceinvoke $r30.<org.antlr.runtime.Token: int getCharPositionInLine()>() 
 ; Statement: goto [?= $r37 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var678 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var678)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var678!1 String)
(assert (= var678!1 ""))
(assert true)
(define-const var1206 String (append/-1001720160 var678!1 var3633!1)) ; Statement: $r32 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var678!2 String)
(assert (str.prefixof var678!1 var678!2))
(assert true)
(define-const var1230 String (append/672562846 var1206 ":")) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1206!1 String)
(assert (= var1206!1 (str.++ var1206 ":")))
(assert true)
(define-const var2085 String (append/-1001720160 var1230 var1334!1)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1230!1 String)
(assert (str.prefixof var1230 var1230!1))
(assert true)
(define-const var401 String (toString/-2075883882 var2085)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1624 String (srcName/166766778 var3992)) ; Statement: $r36 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.String srcName> 
 ; Statement: if $r36 == null goto $r39 = new java.lang.StringBuilder 
(assert (= var1624 null-String)) ; Cond: $r36 == null 
(define-const var1837 String String-init) ; Statement: $r39 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1837)) ; Statement: specialinvoke $r39.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1837!1 String)
(assert (= var1837!1 ""))
(assert true)
(define-const var3055 String (append/672562846 var1837!1 var401)) ; Statement: $r5 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35) 
(declare-const var1837!2 String)
(assert (= var1837!2 (str.++ var1837!1 var401)))
(assert true)
(define-const var1601 String (append/672562846 var3055 ": ")) ; Statement: $r12 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var3055!1 String)
(assert (= var3055!1 (str.++ var3055 ": ")))
(define-const var1434 var740 (error/1626411899 (cast-from-var3792-to-var1801 var3992))) ; Statement: $r6 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: org.stringtemplate.v4.misc.ErrorType error> 
(define-const var2579 String (message/668038743 var1434)) ; Statement: $r10 = $r6.<org.stringtemplate.v4.misc.ErrorType: java.lang.String message> 
(define-const var1663 (Array Int var1092) arr-var1092-init) ; Statement: $r7 = newarray (java.lang.Object)[2] 
(define-const var2829 var1092 (arg/1626411899 (cast-from-var3792-to-var1801 var3992))) ; Statement: $r8 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.Object arg> 
(declare-const var1663!1 (Array Int var1092))
(assert (not (= var1663!1 null-__Array__Int__var1092__)))
(assert (= (select var1663!1 0) var2829)) ; Statement: $r7[0] = $r8 
(define-const var3471 var1092 (arg2/1626411899 (cast-from-var3792-to-var1801 var3992))) ; Statement: $r9 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.Object arg2> 
(declare-const var1663!2 (Array Int var1092))
(assert (not (= var1663!2 null-__Array__Int__var1092__)))
(assert (= (select var1663!2 1) var3471)) ; Statement: $r7[1] = $r9 
(define-const var2297 String (String_format/1339386452 var2579 var1663!2)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>($r10, $r7) 
(assert true)
(define-const var419 String (append/672562846 var1601 var2297)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1601!1 String)
(assert (= var1601!1 (str.++ var1601 var2297)))
(assert true)
(define-const var1693 String (toString/-2075883882 var419)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {cause/1626411899=([org.stringtemplate.v4.misc.STMessage], java.lang.Throwable), cast-from-var3792-to-var1801=([org.stringtemplate.v4.misc.STGroupCompiletimeMessage], org.stringtemplate.v4.misc.STMessage), cast-from-var2631-to-var1646=([java.lang.Throwable], org.antlr.runtime.RecognitionException), cast-from-Int-to-Int=([int], int), token/166766778=([org.stringtemplate.v4.misc.STGroupCompiletimeMessage], org.antlr.runtime.Token), var2778_getLine/1383471142=([org.antlr.runtime.Token], int), var2778_getCharPositionInLine/-2046109534=([org.antlr.runtime.Token], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), srcName/166766778=([org.stringtemplate.v4.misc.STGroupCompiletimeMessage], java.lang.String), error/1626411899=([org.stringtemplate.v4.misc.STMessage], org.stringtemplate.v4.misc.ErrorType), message/668038743=([org.stringtemplate.v4.misc.ErrorType], java.lang.String), arr-var1092-init=([], java.lang.Object[]), arg/1626411899=([org.stringtemplate.v4.misc.STMessage], java.lang.Object), arg2/1626411899=([org.stringtemplate.v4.misc.STMessage], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3792=org.stringtemplate.v4.misc.STGroupCompiletimeMessage, var3992=r0, var2631=java.lang.Throwable, var1801=org.stringtemplate.v4.misc.STMessage, var805=$r1, var1646=org.antlr.runtime.RecognitionException, var1152=r2, var3633=i0, var655=$i3, var1334=i1, var2778=org.antlr.runtime.Token, var1845=$r3, var308=$r29, var1895=$r30, var678=$r37, var1206=$r32, var1230=$r33, var2085=$r34, var401=$r35, var1624=$r36, var549=null_type, var1837=$r39, var3055=$r5, var1601=$r12, var740=org.stringtemplate.v4.misc.ErrorType, var1434=$r6, var2579=$r10, var1092=java.lang.Object, var1663=$r7, var2829=$r8, var3471=$r9, var2297=$r11, var419=$r13, var1693=$r14}
; {org.stringtemplate.v4.misc.STGroupCompiletimeMessage=var3792, r0=var3992, java.lang.Throwable=var2631, org.stringtemplate.v4.misc.STMessage=var1801, $r1=var805, org.antlr.runtime.RecognitionException=var1646, r2=var1152, i0=var3633, $i3=var655, i1=var1334, org.antlr.runtime.Token=var2778, $r3=var1845, $r29=var308, $r30=var1895, $r37=var678, $r32=var1206, $r33=var1230, $r34=var2085, $r35=var401, $r36=var1624, null_type=var549, $r39=var1837, $r5=var3055, $r12=var1601, org.stringtemplate.v4.misc.ErrorType=var740, $r6=var1434, $r10=var2579, java.lang.Object=var1092, $r7=var1663, $r8=var2829, $r9=var3471, $r11=var2297, $r13=var419, $r14=var1693}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.stringtemplate.v4.misc.STGroupCompiletimeMessage;	$r1 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.Throwable cause>;	r2 = (org.antlr.runtime.RecognitionException) $r1;	i0 = 0;	$i3 = (int) -1;	i1 = $i3;	$r3 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: org.antlr.runtime.Token token>;	if $r3 == null goto (branch);	$r29 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: org.antlr.runtime.Token token>;	i0 = interfaceinvoke $r29.<org.antlr.runtime.Token: int getLine()>();	$r30 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: org.antlr.runtime.Token token>;	i1 = interfaceinvoke $r30.<org.antlr.runtime.Token: int getCharPositionInLine()>();	goto [?= $r37 = new java.lang.StringBuilder];	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r32 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>();	$r36 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.String srcName>;	if $r36 == null goto $r39 = new java.lang.StringBuilder;	$r39 = new java.lang.StringBuilder;	specialinvoke $r39.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35);	$r12 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r6 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: org.stringtemplate.v4.misc.ErrorType error>;	$r10 = $r6.<org.stringtemplate.v4.misc.ErrorType: java.lang.String message>;	$r7 = newarray (java.lang.Object)[2];	$r8 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.Object arg>;	$r7[0] = $r8;	$r9 = r0.<org.stringtemplate.v4.misc.STGroupCompiletimeMessage: java.lang.Object arg2>;	$r7[1] = $r9;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>($r10, $r7);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 4
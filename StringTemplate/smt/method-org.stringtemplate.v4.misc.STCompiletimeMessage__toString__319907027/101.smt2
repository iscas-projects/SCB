(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2220 0)
(declare-sort var1839 0)
(declare-sort var3897 0)
(declare-sort var2139 0)
(declare-sort var3122 0)
(declare-sort var2362 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun token/1818052723 (var2220) var1839)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun srcName/1818052723 (var2220) String)
(declare-fun error/1626411899 (var3122) var2139)
(declare-fun cast-from-var2220-to-var3122 (var2220) var3122)
(declare-fun message/668038743 (var2139) String)
(declare-fun arr-var2362-init () (Array Int var2362))
(declare-fun arg/1626411899 (var3122) var2362)
(declare-fun arg2/1626411899 (var3122) var2362)
(declare-fun String_format/1339386452 (String (Array Int var2362)) String)
(declare-const null-var2220 var2220)
(declare-const null-var1839 var1839)
(declare-const null-String String)
(declare-const null-__Array__Int__var2362__ (Array Int var2362))
(declare-const var1816 var2220) ; Statement: r0 := @this: org.stringtemplate.v4.misc.STCompiletimeMessage 
(assert (not (= var1816 null-var2220)))
(define-const var1054 Int 0) ; Statement: i2 = 0 
(define-const var664 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
(define-const var2565 Int var664) ; Statement: i3 = $i10 
(define-const var3131 var1839 (token/1818052723 var1816)) ; Statement: $r1 = r0.<org.stringtemplate.v4.misc.STCompiletimeMessage: org.antlr.runtime.Token token> 
 ; Statement: if $r1 == null goto $r44 = new java.lang.StringBuilder 
(assert (= var3131 null-var1839)) ; Cond: $r1 == null 
(define-const var2109 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2109)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2109!1 String)
(assert (= var2109!1 ""))
(assert true)
(define-const var2165 String (append/-1001720160 var2109!1 var1054)) ; Statement: $r39 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var2109!2 String)
(assert (str.prefixof var2109!1 var2109!2))
(assert true)
(define-const var3250 String (append/672562846 var2165 ":")) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2165!1 String)
(assert (= var2165!1 (str.++ var2165 ":")))
(assert true)
(define-const var1617 String (append/-1001720160 var3250 var2565)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var3250!1 String)
(assert (str.prefixof var3250 var3250!1))
(assert true)
(define-const var1015 String (toString/-2075883882 var1617)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var644 String (srcName/1818052723 var1816)) ; Statement: $r43 = r0.<org.stringtemplate.v4.misc.STCompiletimeMessage: java.lang.String srcName> 
 ; Statement: if $r43 == null goto $r46 = new java.lang.StringBuilder 
(assert (= var644 null-String)) ; Cond: $r43 == null 
(define-const var535 String String-init) ; Statement: $r46 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var535)) ; Statement: specialinvoke $r46.<java.lang.StringBuilder: void <init>()>() 
(declare-const var535!1 String)
(assert (= var535!1 ""))
(assert true)
(define-const var1586 String (append/672562846 var535!1 var1015)) ; Statement: $r3 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r42) 
(declare-const var535!2 String)
(assert (= var535!2 (str.++ var535!1 var1015)))
(assert true)
(define-const var3699 String (append/672562846 var1586 ": ")) ; Statement: $r10 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var1586!1 String)
(assert (= var1586!1 (str.++ var1586 ": ")))
(define-const var1577 var2139 (error/1626411899 (cast-from-var2220-to-var3122 var1816))) ; Statement: $r4 = r0.<org.stringtemplate.v4.misc.STCompiletimeMessage: org.stringtemplate.v4.misc.ErrorType error> 
(define-const var3343 String (message/668038743 var1577)) ; Statement: $r8 = $r4.<org.stringtemplate.v4.misc.ErrorType: java.lang.String message> 
(define-const var1029 (Array Int var2362) arr-var2362-init) ; Statement: $r5 = newarray (java.lang.Object)[2] 
(define-const var682 var2362 (arg/1626411899 (cast-from-var2220-to-var3122 var1816))) ; Statement: $r6 = r0.<org.stringtemplate.v4.misc.STCompiletimeMessage: java.lang.Object arg> 
(declare-const var1029!1 (Array Int var2362))
(assert (not (= var1029!1 null-__Array__Int__var2362__)))
(assert (= (select var1029!1 0) var682)) ; Statement: $r5[0] = $r6 
(define-const var2198 var2362 (arg2/1626411899 (cast-from-var2220-to-var3122 var1816))) ; Statement: $r7 = r0.<org.stringtemplate.v4.misc.STCompiletimeMessage: java.lang.Object arg2> 
(declare-const var1029!2 (Array Int var2362))
(assert (not (= var1029!2 null-__Array__Int__var2362__)))
(assert (= (select var1029!2 1) var2198)) ; Statement: $r5[1] = $r7 
(define-const var3770 String (String_format/1339386452 var3343 var1029!2)) ; Statement: $r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>($r8, $r5) 
(assert true)
(define-const var1017 String (append/672562846 var3699 var3770)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3699!1 String)
(assert (= var3699!1 (str.++ var3699 var3770)))
(assert true)
(define-const var3602 String (toString/-2075883882 var1017)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), token/1818052723=([org.stringtemplate.v4.misc.STCompiletimeMessage], org.antlr.runtime.Token), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), srcName/1818052723=([org.stringtemplate.v4.misc.STCompiletimeMessage], java.lang.String), error/1626411899=([org.stringtemplate.v4.misc.STMessage], org.stringtemplate.v4.misc.ErrorType), cast-from-var2220-to-var3122=([org.stringtemplate.v4.misc.STCompiletimeMessage], org.stringtemplate.v4.misc.STMessage), message/668038743=([org.stringtemplate.v4.misc.ErrorType], java.lang.String), arr-var2362-init=([], java.lang.Object[]), arg/1626411899=([org.stringtemplate.v4.misc.STMessage], java.lang.Object), arg2/1626411899=([org.stringtemplate.v4.misc.STMessage], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2220=org.stringtemplate.v4.misc.STCompiletimeMessage, var1816=r0, var1054=i2, var664=$i10, var2565=i3, var1839=org.antlr.runtime.Token, var3131=$r1, var2109=$r44, var2165=$r39, var3250=$r40, var1617=$r41, var1015=$r42, var644=$r43, var3897=null_type, var535=$r46, var1586=$r3, var3699=$r10, var2139=org.stringtemplate.v4.misc.ErrorType, var3122=org.stringtemplate.v4.misc.STMessage, var1577=$r4, var3343=$r8, var2362=java.lang.Object, var1029=$r5, var682=$r6, var2198=$r7, var3770=$r9, var1017=$r11, var3602=$r12}
; {org.stringtemplate.v4.misc.STCompiletimeMessage=var2220, r0=var1816, i2=var1054, $i10=var664, i3=var2565, org.antlr.runtime.Token=var1839, $r1=var3131, $r44=var2109, $r39=var2165, $r40=var3250, $r41=var1617, $r42=var1015, $r43=var644, null_type=var3897, $r46=var535, $r3=var1586, $r10=var3699, org.stringtemplate.v4.misc.ErrorType=var2139, org.stringtemplate.v4.misc.STMessage=var3122, $r4=var1577, $r8=var3343, java.lang.Object=var2362, $r5=var1029, $r6=var682, $r7=var2198, $r9=var3770, $r11=var1017, $r12=var3602}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.stringtemplate.v4.misc.STCompiletimeMessage;	i2 = 0;	$i10 = (int) -1;	i3 = $i10;	$r1 = r0.<org.stringtemplate.v4.misc.STCompiletimeMessage: org.antlr.runtime.Token token>;	if $r1 == null goto $r44 = new java.lang.StringBuilder;	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>();	$r43 = r0.<org.stringtemplate.v4.misc.STCompiletimeMessage: java.lang.String srcName>;	if $r43 == null goto $r46 = new java.lang.StringBuilder;	$r46 = new java.lang.StringBuilder;	specialinvoke $r46.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r42);	$r10 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r4 = r0.<org.stringtemplate.v4.misc.STCompiletimeMessage: org.stringtemplate.v4.misc.ErrorType error>;	$r8 = $r4.<org.stringtemplate.v4.misc.ErrorType: java.lang.String message>;	$r5 = newarray (java.lang.Object)[2];	$r6 = r0.<org.stringtemplate.v4.misc.STCompiletimeMessage: java.lang.Object arg>;	$r5[0] = $r6;	$r7 = r0.<org.stringtemplate.v4.misc.STCompiletimeMessage: java.lang.Object arg2>;	$r5[1] = $r7;	$r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>($r8, $r5);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2817 0)
(declare-sort var653 0)
(declare-sort var3018 0)
(declare-sort var3488 0)
(declare-sort var1339 0)
(declare-sort var2291 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun token/1818052723 (var2817) var653)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun srcName/1818052723 (var2817) String)
(declare-fun error/1626411899 (var1339) var3488)
(declare-fun cast-from-var2817-to-var1339 (var2817) var1339)
(declare-fun message/668038743 (var3488) String)
(declare-fun arr-var2291-init () (Array Int var2291))
(declare-fun arg/1626411899 (var1339) var2291)
(declare-fun arg2/1626411899 (var1339) var2291)
(declare-fun String_format/1339386452 (String (Array Int var2291)) String)
(declare-const null-var2817 var2817)
(declare-const null-var653 var653)
(declare-const null-String String)
(declare-const null-__Array__Int__var2291__ (Array Int var2291))
(declare-const var3734 var2817) ; Statement: r0 := @this: org.stringtemplate.v4.misc.STCompiletimeMessage 
(assert (not (= var3734 null-var2817)))
(define-const var2572 Int 0) ; Statement: i2 = 0 
(define-const var3897 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
(define-const var3297 Int var3897) ; Statement: i3 = $i10 
(define-const var624 var653 (token/1818052723 var3734)) ; Statement: $r1 = r0.<org.stringtemplate.v4.misc.STCompiletimeMessage: org.antlr.runtime.Token token> 
 ; Statement: if $r1 == null goto $r44 = new java.lang.StringBuilder 
(assert (= var624 null-var653)) ; Cond: $r1 == null 
(define-const var296 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var296)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var296!1 String)
(assert (= var296!1 ""))
(assert true)
(define-const var1497 String (append/-1001720160 var296!1 var2572)) ; Statement: $r39 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var296!2 String)
(assert (str.prefixof var296!1 var296!2))
(assert true)
(define-const var3214 String (append/672562846 var1497 ":")) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1497!1 String)
(assert (= var1497!1 (str.++ var1497 ":")))
(assert true)
(define-const var2885 String (append/-1001720160 var3214 var3297)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var3214!1 String)
(assert (str.prefixof var3214 var3214!1))
(assert true)
(define-const var3673 String (toString/-2075883882 var2885)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1616 String (srcName/1818052723 var3734)) ; Statement: $r43 = r0.<org.stringtemplate.v4.misc.STCompiletimeMessage: java.lang.String srcName> 
 ; Statement: if $r43 == null goto $r46 = new java.lang.StringBuilder 
(assert (not (= var1616 null-String))) ; Negate: Cond: $r43 == null  
(define-const var3308 String String-init) ; Statement: $r45 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3308)) ; Statement: specialinvoke $r45.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3308!1 String)
(assert (= var3308!1 ""))
(define-const var1970 String (srcName/1818052723 var3734)) ; Statement: $r14 = r0.<org.stringtemplate.v4.misc.STCompiletimeMessage: java.lang.String srcName> 
(assert true)
(define-const var1183 String (append/672562846 var3308!1 var1970)) ; Statement: $r15 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var3308!2 String)
(assert (= var3308!2 (str.++ var3308!1 var1970)))
(assert true)
(define-const var10 String (append/672562846 var1183 " ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var1183!1 String)
(assert (= var1183!1 (str.++ var1183 " ")))
(assert true)
(define-const var1411 String (append/672562846 var10 var3673)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r42) 
(declare-const var10!1 String)
(assert (= var10!1 (str.++ var10 var3673)))
(assert true)
(define-const var2437 String (append/672562846 var1411 ": ")) ; Statement: $r24 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var1411!1 String)
(assert (= var1411!1 (str.++ var1411 ": ")))
(define-const var3027 var3488 (error/1626411899 (cast-from-var2817-to-var1339 var3734))) ; Statement: $r18 = r0.<org.stringtemplate.v4.misc.STCompiletimeMessage: org.stringtemplate.v4.misc.ErrorType error> 
(define-const var2802 String (message/668038743 var3027)) ; Statement: $r22 = $r18.<org.stringtemplate.v4.misc.ErrorType: java.lang.String message> 
(define-const var234 (Array Int var2291) arr-var2291-init) ; Statement: $r19 = newarray (java.lang.Object)[2] 
(define-const var2941 var2291 (arg/1626411899 (cast-from-var2817-to-var1339 var3734))) ; Statement: $r20 = r0.<org.stringtemplate.v4.misc.STCompiletimeMessage: java.lang.Object arg> 
(declare-const var234!1 (Array Int var2291))
(assert (not (= var234!1 null-__Array__Int__var2291__)))
(assert (= (select var234!1 0) var2941)) ; Statement: $r19[0] = $r20 
(define-const var2236 var2291 (arg2/1626411899 (cast-from-var2817-to-var1339 var3734))) ; Statement: $r21 = r0.<org.stringtemplate.v4.misc.STCompiletimeMessage: java.lang.Object arg2> 
(declare-const var234!2 (Array Int var2291))
(assert (not (= var234!2 null-__Array__Int__var2291__)))
(assert (= (select var234!2 1) var2236)) ; Statement: $r19[1] = $r21 
(define-const var1020 String (String_format/1339386452 var2802 var234!2)) ; Statement: $r23 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>($r22, $r19) 
(assert true)
(define-const var26 String (append/672562846 var2437 var1020)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var2437!1 String)
(assert (= var2437!1 (str.++ var2437 var1020)))
(assert true)
(define-const var1391 String (toString/-2075883882 var26)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), token/1818052723=([org.stringtemplate.v4.misc.STCompiletimeMessage], org.antlr.runtime.Token), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), srcName/1818052723=([org.stringtemplate.v4.misc.STCompiletimeMessage], java.lang.String), error/1626411899=([org.stringtemplate.v4.misc.STMessage], org.stringtemplate.v4.misc.ErrorType), cast-from-var2817-to-var1339=([org.stringtemplate.v4.misc.STCompiletimeMessage], org.stringtemplate.v4.misc.STMessage), message/668038743=([org.stringtemplate.v4.misc.ErrorType], java.lang.String), arr-var2291-init=([], java.lang.Object[]), arg/1626411899=([org.stringtemplate.v4.misc.STMessage], java.lang.Object), arg2/1626411899=([org.stringtemplate.v4.misc.STMessage], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2817=org.stringtemplate.v4.misc.STCompiletimeMessage, var3734=r0, var2572=i2, var3897=$i10, var3297=i3, var653=org.antlr.runtime.Token, var624=$r1, var296=$r44, var1497=$r39, var3214=$r40, var2885=$r41, var3673=$r42, var1616=$r43, var3018=null_type, var3308=$r45, var1970=$r14, var1183=$r15, var10=$r16, var1411=$r17, var2437=$r24, var3488=org.stringtemplate.v4.misc.ErrorType, var1339=org.stringtemplate.v4.misc.STMessage, var3027=$r18, var2802=$r22, var2291=java.lang.Object, var234=$r19, var2941=$r20, var2236=$r21, var1020=$r23, var26=$r25, var1391=$r26}
; {org.stringtemplate.v4.misc.STCompiletimeMessage=var2817, r0=var3734, i2=var2572, $i10=var3897, i3=var3297, org.antlr.runtime.Token=var653, $r1=var624, $r44=var296, $r39=var1497, $r40=var3214, $r41=var2885, $r42=var3673, $r43=var1616, null_type=var3018, $r45=var3308, $r14=var1970, $r15=var1183, $r16=var10, $r17=var1411, $r24=var2437, org.stringtemplate.v4.misc.ErrorType=var3488, org.stringtemplate.v4.misc.STMessage=var1339, $r18=var3027, $r22=var2802, java.lang.Object=var2291, $r19=var234, $r20=var2941, $r21=var2236, $r23=var1020, $r25=var26, $r26=var1391}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.stringtemplate.v4.misc.STCompiletimeMessage;	i2 = 0;	$i10 = (int) -1;	i3 = $i10;	$r1 = r0.<org.stringtemplate.v4.misc.STCompiletimeMessage: org.antlr.runtime.Token token>;	if $r1 == null goto $r44 = new java.lang.StringBuilder;	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>();	$r43 = r0.<org.stringtemplate.v4.misc.STCompiletimeMessage: java.lang.String srcName>;	if $r43 == null goto $r46 = new java.lang.StringBuilder;	$r45 = new java.lang.StringBuilder;	specialinvoke $r45.<java.lang.StringBuilder: void <init>()>();	$r14 = r0.<org.stringtemplate.v4.misc.STCompiletimeMessage: java.lang.String srcName>;	$r15 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r42);	$r24 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r18 = r0.<org.stringtemplate.v4.misc.STCompiletimeMessage: org.stringtemplate.v4.misc.ErrorType error>;	$r22 = $r18.<org.stringtemplate.v4.misc.ErrorType: java.lang.String message>;	$r19 = newarray (java.lang.Object)[2];	$r20 = r0.<org.stringtemplate.v4.misc.STCompiletimeMessage: java.lang.Object arg>;	$r19[0] = $r20;	$r21 = r0.<org.stringtemplate.v4.misc.STCompiletimeMessage: java.lang.Object arg2>;	$r19[1] = $r21;	$r23 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>($r22, $r19);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	return $r26
;block_num 3
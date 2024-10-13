(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2307 0)
(declare-sort var3577 0)
(declare-sort var734 0)
(declare-sort var515 0)
(declare-sort var1206 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toUpperCase/398655892 (String var734) String)
(declare-fun javaEncodingsUc/438783640 (var2307) var515)
(declare-fun var515_contains/-441121415 (var515 var1206) Bool)
(declare-fun cast-from-String-to-var1206 (String) var1206)
(declare-const null-var2307 var2307)
(declare-const null-String String)
(declare-const var734-ENGLISH var734)
(declare-const var871 var2307) ; Statement: r3 := @this: com.mysql.cj.MysqlCharset 
(assert (not (= var871 null-var2307)))
(declare-const var1100 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1100 null-String)))
(define-const var51 var734 var734-ENGLISH) ; Statement: $r1 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var2567 String (toUpperCase/398655892 var1100 var51)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r1) 
(define-const var3505 var515 (javaEncodingsUc/438783640 var871)) ; Statement: $r4 = r3.<com.mysql.cj.MysqlCharset: java.util.List javaEncodingsUc> 
(define-const var1849 Bool (var515_contains/-441121415 var3505 (cast-from-String-to-var1206 var2567))) ; Statement: $z0 = interfaceinvoke $r4.<java.util.List: boolean contains(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1849 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), javaEncodingsUc/438783640=([com.mysql.cj.MysqlCharset], java.util.List), var515_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1206=([java.lang.String], java.lang.Object)}
; {var2307=com.mysql.cj.MysqlCharset, var871=r3, var1100=r0, var3577=null_type, var734=java.util.Locale, var51=$r1, var2567=r2, var515=java.util.List, var3505=$r4, var1206=java.lang.Object, var1849=$z0}
; {com.mysql.cj.MysqlCharset=var2307, r3=var871, r0=var1100, null_type=var3577, java.util.Locale=var734, $r1=var51, r2=var2567, java.util.List=var515, $r4=var3505, java.lang.Object=var1206, $z0=var1849}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r3 := @this: com.mysql.cj.MysqlCharset;	r0 := @parameter0: java.lang.String;	$r1 = <java.util.Locale: java.util.Locale ENGLISH>;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r1);	$r4 = r3.<com.mysql.cj.MysqlCharset: java.util.List javaEncodingsUc>;	$z0 = interfaceinvoke $r4.<java.util.List: boolean contains(java.lang.Object)>(r2);	if $z0 != 0 goto return;	return
;block_num 2
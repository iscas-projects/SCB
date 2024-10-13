(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2047 0)
(declare-sort var2991 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2991_getString/-1547297038 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2047 var2047)
(declare-const var941 var2047) ; Statement: r2 := @parameter0: java.lang.Throwable 
(assert (not (= var941 null-var2047)))
(define-const var3689 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3689)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3689!1 String)
(assert (= var3689!1 ""))
(define-const var3356 String (var2991_getString/-1547297038 "Util.1")) ; Statement: $r1 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("Util.1") 
(assert true)
;(assert (append/672562846 var3689!1 var3356)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var3689!2 String)
(assert (= var3689!2 (str.++ var3689!1 var3356)))
 ; Statement: if r2 == null goto $r11 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("Util.4") 
(assert (= var941 null-var2047)) ; Cond: r2 == null 
(define-const var1446 String (var2991_getString/-1547297038 "Util.4")) ; Statement: $r11 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("Util.4") 
(assert true)
;(assert (append/672562846 var3689!2 var1446)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3689!3 String)
(assert (= var3689!3 (str.++ var3689!2 var1446)))
(assert true)
(define-const var968 String (toString/-2075883882 var3689!3)) ; Statement: $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2991_getString/-1547297038=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2047=java.lang.Throwable, var941=r2, var3689=$r0, var2991=com.mysql.cj.Messages, var3356=$r1, var1446=$r11, var968=$r12}
; {java.lang.Throwable=var2047, r2=var941, $r0=var3689, com.mysql.cj.Messages=var2991, $r1=var3356, $r11=var1446, $r12=var968}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.Throwable;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("Util.1");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	if r2 == null goto $r11 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("Util.4");	$r11 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("Util.4");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 2
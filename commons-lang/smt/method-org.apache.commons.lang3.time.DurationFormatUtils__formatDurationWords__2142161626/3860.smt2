(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1782 0)
(declare-sort var1265 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1782_formatDuration/-1057633004 (Int String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1265_replaceOnce/1161312843 (String String String) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var837 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var837 null-Int)))
(declare-const var2456 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2456 null-Bool)))
(declare-const var3685 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var3685 null-Bool)))
(define-const var621 String (var1782_formatDuration/-1057633004 var837 "d\u0027 days \u0027H\u0027 hours \u0027m\u0027 minutes \u0027s\u0027 seconds\u0027")) ; Statement: r3 = staticinvoke <org.apache.commons.lang3.time.DurationFormatUtils: java.lang.String formatDuration(long,java.lang.String)>(l0, "d\' days \'H\' hours \'m\' minutes \'s\' seconds\'") 
 ; Statement: if z0 == 0 goto (branch) 
(assert (= (ite var2456 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: if z1 == 0 goto $r10 = new java.lang.StringBuilder 
(assert (= (ite var3685 1 0) 0)) ; Cond: z1 == 0 
(define-const var3429 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3429)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3429!1 String)
(assert (= var3429!1 ""))
(assert true)
(define-const var1589 String (append/672562846 var3429!1 " ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3429!2 String)
(assert (= var3429!2 (str.++ var3429!1 " ")))
(assert true)
(define-const var2136 String (append/672562846 var1589 var621)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1589!1 String)
(assert (= var1589!1 (str.++ var1589 var621)))
(assert true)
(define-const var985 String (toString/-2075883882 var2136)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var722 String (var1265_replaceOnce/1161312843 var985 " 1 seconds" " 1 second")) ; Statement: $r14 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String replaceOnce(java.lang.String,java.lang.String,java.lang.String)>($r13, " 1 seconds", " 1 second") 
(define-const var1115 String (var1265_replaceOnce/1161312843 var722 " 1 minutes" " 1 minute")) ; Statement: $r15 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String replaceOnce(java.lang.String,java.lang.String,java.lang.String)>($r14, " 1 minutes", " 1 minute") 
(define-const var3482 String (var1265_replaceOnce/1161312843 var1115 " 1 hours" " 1 hour")) ; Statement: $r16 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String replaceOnce(java.lang.String,java.lang.String,java.lang.String)>($r15, " 1 hours", " 1 hour") 
(define-const var2718 String (var1265_replaceOnce/1161312843 var3482 " 1 days" " 1 day")) ; Statement: $r17 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String replaceOnce(java.lang.String,java.lang.String,java.lang.String)>($r16, " 1 days", " 1 day") 
(assert true)
(define-const var1565 String (trim/-847153721 var2718)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.String: java.lang.String trim()>() 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var1782_formatDuration/-1057633004=([long, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1265_replaceOnce/1161312843=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String)}
; {var837=l0, var2456=z0, var3685=z1, var1782=org.apache.commons.lang3.time.DurationFormatUtils, var621=r3, var3429=$r10, var1589=$r11, var2136=$r12, var985=$r13, var1265=org.apache.commons.lang3.StringUtils, var722=$r14, var1115=$r15, var3482=$r16, var2718=$r17, var1565=$r18}
; {l0=var837, z0=var2456, z1=var3685, org.apache.commons.lang3.time.DurationFormatUtils=var1782, r3=var621, $r10=var3429, $r11=var1589, $r12=var2136, $r13=var985, org.apache.commons.lang3.StringUtils=var1265, $r14=var722, $r15=var1115, $r16=var3482, $r17=var2718, $r18=var1565}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String trim()>": 1}
;stmts l0 := @parameter0: long;	z0 := @parameter1: boolean;	z1 := @parameter2: boolean;	r3 = staticinvoke <org.apache.commons.lang3.time.DurationFormatUtils: java.lang.String formatDuration(long,java.lang.String)>(l0, "d\' days \'H\' hours \'m\' minutes \'s\' seconds\'");	if z0 == 0 goto (branch);	if z1 == 0 goto $r10 = new java.lang.StringBuilder;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String replaceOnce(java.lang.String,java.lang.String,java.lang.String)>($r13, " 1 seconds", " 1 second");	$r15 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String replaceOnce(java.lang.String,java.lang.String,java.lang.String)>($r14, " 1 minutes", " 1 minute");	$r16 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String replaceOnce(java.lang.String,java.lang.String,java.lang.String)>($r15, " 1 hours", " 1 hour");	$r17 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String replaceOnce(java.lang.String,java.lang.String,java.lang.String)>($r16, " 1 days", " 1 day");	$r18 = virtualinvoke $r17.<java.lang.String: java.lang.String trim()>();	return $r18
;block_num 3
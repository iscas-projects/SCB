(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var534 0)
(declare-sort var922 0)
(declare-sort var1088 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1088) void)
(declare-fun cast-from-var534-to-var1088 (var534) var1088)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun trim/66302185 (var534 String Bool) String)
(declare-fun address/-503412698 (var534) String)
(declare-const null-var534 var534)
(declare-const null-String String)
(declare-const var1232 var534) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress 
(assert (not (= var1232 null-var534)))
(declare-const var3382 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3382 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var534-to-var1088 var1232))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1232!1 var534)
(assert true)
(define-const var2906 Int (length/-134980193 var3382)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i0 <= 9 goto i12 = 0 
(assert (not (<= var2906 9))) ; Negate: Cond: i0 <= 9  
(assert (and true (and (> (str.len var3382) 0) (<= 0 0))))
(define-const var1874 Int (charAt/698050440 var3382 0)) ; Statement: $c6 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0) 
(define-const var84 Int (cast-from-Int-to-Int var1874)) ; Statement: $i18 = (int) $c6 
 ; Statement: if $i18 == 60 goto $i7 = i0 - 1 
(assert (= var84 60)) ; Cond: $i18 == 60 
(define-const var1032 Int (- var2906 1)) ; Statement: $i7 = i0 - 1 
(assert (and true (and (> (str.len var3382) var1032) (<= 0 var1032))))
(define-const var2280 Int (charAt/698050440 var3382 var1032)) ; Statement: $c8 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i7) 
(define-const var503 Int (cast-from-Int-to-Int var2280)) ; Statement: $i20 = (int) $c8 
 ; Statement: if $i20 == 62 goto $r8 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress: java.lang.String trim(java.lang.String,boolean)>(r1, 1) 
(assert (= var503 62)) ; Cond: $i20 == 62 
(assert true)
(define-const var1816 String (trim/66302185 var1232!1 var3382 (ite (= 1 1) true false))) ; Statement: $r8 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress: java.lang.String trim(java.lang.String,boolean)>(r1, 1) 
(declare-const var1232!2 var534)
(assert (not (= var1232!2 null-var534)))
(assert (= (address/-503412698 var1232!2) var1816)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress: java.lang.String address> = $r8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var534-to-var1088=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress], java.lang.Object), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), trim/66302185=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress, java.lang.String, boolean], java.lang.String), address/-503412698=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress], java.lang.String)}
; {var534=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress, var1232=r0, var3382=r1, var922=null_type, var1088=java.lang.Object, var2906=i0, var1874=$c6, var84=$i18, var1032=$i7, var2280=$c8, var503=$i20, var1816=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress=var534, r0=var1232, r1=var3382, null_type=var922, java.lang.Object=var1088, i0=var2906, $c6=var1874, $i18=var84, $i7=var1032, $c8=var2280, $i20=var503, $r8=var1816}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i0 <= 9 goto i12 = 0;	$c6 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	$i18 = (int) $c6;	if $i18 == 60 goto $i7 = i0 - 1;	$i7 = i0 - 1;	$c8 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i7);	$i20 = (int) $c8;	if $i20 == 62 goto $r8 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress: java.lang.String trim(java.lang.String,boolean)>(r1, 1);	$r8 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress: java.lang.String trim(java.lang.String,boolean)>(r1, 1);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress: java.lang.String address> = $r8;	return
;block_num 4
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var767 0)
(declare-sort var2211 0)
(declare-sort var3505 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun syslogFacility/574957661 (var767) Int)
(declare-fun level/574957661 (var767) Int)
(declare-fun append/1845021834 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun write/912368057 (var3505 String) void)
(declare-fun cast-from-var767-to-var3505 (var767) var3505)
(declare-const null-var767 var767)
(declare-const null-String String)
(declare-const var1984 var767) ; Statement: r0 := @this: org.apache.log4j.helpers.SyslogQuietWriter 
(assert (not (= var1984 null-var767)))
(declare-const var2638 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2638 null-String)))
(define-const var408 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var408)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var408!1 String)
(assert true)
(define-const var3496 String (append/1560614132 var408!1 "<")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<") 
(declare-const var408!2 String)
(assert (str.prefixof var408!1 var408!2))
(define-const var3560 Int (syslogFacility/574957661 var1984)) ; Statement: $i1 = r0.<org.apache.log4j.helpers.SyslogQuietWriter: int syslogFacility> 
(define-const var2174 Int (level/574957661 var1984)) ; Statement: $i0 = r0.<org.apache.log4j.helpers.SyslogQuietWriter: int level> 
(define-const var3781 Int (bv2nat (bvor ((_ int2bv 64) var3560) ((_ int2bv 64) var2174)))) ; Statement: $i2 = $i1 | $i0 
(assert true)
(define-const var3379 String (append/1845021834 var3496 var3781)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i2) 
(assert true)
(define-const var1647 String (append/1560614132 var3379 ">")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(">") 
(declare-const var3379!1 String)
(assert (str.prefixof var3379 var3379!1))
(assert true)
(define-const var1497 String (append/1560614132 var1647 var2638)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r4) 
(declare-const var1647!1 String)
(assert (str.prefixof var1647 var1647!1))
(assert true)
(define-const var499 String (toString/-222306083 var1497)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (write/912368057 (cast-from-var767-to-var3505 var1984) var499)) ; Statement: specialinvoke r0.<org.apache.log4j.helpers.QuietWriter: void write(java.lang.String)>($r7) 

(declare-const var1984!1 var767)
(declare-const var499!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), syslogFacility/574957661=([org.apache.log4j.helpers.SyslogQuietWriter], int), level/574957661=([org.apache.log4j.helpers.SyslogQuietWriter], int), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), write/912368057=([org.apache.log4j.helpers.QuietWriter, java.lang.String], void), cast-from-var767-to-var3505=([org.apache.log4j.helpers.SyslogQuietWriter], org.apache.log4j.helpers.QuietWriter)}
; {var767=org.apache.log4j.helpers.SyslogQuietWriter, var1984=r0, var2638=r4, var2211=null_type, var408=$r1, var3496=$r2, var3560=$i1, var2174=$i0, var3781=$i2, var3379=$r3, var1647=$r5, var1497=$r6, var499=$r7, var3505=org.apache.log4j.helpers.QuietWriter}
; {org.apache.log4j.helpers.SyslogQuietWriter=var767, r0=var1984, r4=var2638, null_type=var2211, $r1=var408, $r2=var3496, $i1=var3560, $i0=var2174, $i2=var3781, $r3=var3379, $r5=var1647, $r6=var1497, $r7=var499, org.apache.log4j.helpers.QuietWriter=var3505}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.helpers.SyslogQuietWriter;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<");	$i1 = r0.<org.apache.log4j.helpers.SyslogQuietWriter: int syslogFacility>;	$i0 = r0.<org.apache.log4j.helpers.SyslogQuietWriter: int level>;	$i2 = $i1 | $i0;	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i2);	$r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(">");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke r0.<org.apache.log4j.helpers.QuietWriter: void write(java.lang.String)>($r7);	return
;block_num 1
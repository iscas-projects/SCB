(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2962 0)
(declare-sort var585 0)
(declare-sort var3725 0)
(declare-sort var515 0)
(declare-sort var3215 0)
(declare-sort var1021 0)
(declare-sort var1313 0)
(declare-sort var2250 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1021_shouldLog/268553938 (var515 var3215) Bool)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1313-init () var1313)
(declare-fun arr-var2250-init () (Array Int var2250))
(declare-fun <init>/557789824 (var1313 String (Array Int var2250)) void)
(declare-const null-var2962 var2962)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Int Int)
(declare-const null-var3725 var3725)
(declare-const var515-JFR_DCMD var515)
(declare-const var3215-DEBUG var3215)
(declare-const var2657 var2962) ; Statement: r12 := @this: jdk.jfr.internal.dcmd.DCmdStart 
(assert (not (= var2657 null-var2962)))
(declare-const var491 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var491 null-String)))
(declare-const var2807 (Array Int String)) ; Statement: r4 := @parameter1: java.lang.String[] 
(assert (not (= var2807 null-__Array__Int__String__)))
(declare-const var1256 Int) ; Statement: r7 := @parameter2: java.lang.Long 
(assert (not (= var1256 null-Int)))
(declare-const var2574 Int) ; Statement: r3 := @parameter3: java.lang.Long 
(assert (not (= var2574 null-Int)))
(declare-const var1328 var3725) ; Statement: r8 := @parameter4: java.lang.Boolean 
(assert (not (= var1328 null-var3725)))
(declare-const var87 String) ; Statement: r9 := @parameter5: java.lang.String 
(assert (not (= var87 null-String)))
(declare-const var3120 Int) ; Statement: r10 := @parameter6: java.lang.Long 
(assert (not (= var3120 null-Int)))
(declare-const var2468 Int) ; Statement: r11 := @parameter7: java.lang.Long 
(assert (not (= var2468 null-Int)))
(declare-const var2003 var3725) ; Statement: r114 := @parameter8: java.lang.Boolean 
(assert (not (= var2003 null-var3725)))
(declare-const var2580 var3725) ; Statement: r6 := @parameter9: java.lang.Boolean 
(assert (not (= var2580 null-var3725)))
(define-const var1371 var515 var515-JFR_DCMD) ; Statement: $r1 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_DCMD> 
(define-const var3921 var3215 var3215-DEBUG) ; Statement: $r0 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel DEBUG> 
(define-const var673 Bool (var1021_shouldLog/268553938 var1371 var3921)) ; Statement: $z0 = staticinvoke <jdk.jfr.internal.Logger: boolean shouldLog(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel)>($r1, $r0) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var673 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r2 == null goto (branch) 
(assert (= var491 null-String)) ; Cond: r2 == null 
 ; Statement: if r3 != null goto $i13 = lengthof r4 
(assert (not (= var2574 null-Int))) ; Cond: r3 != null 
(define-const var1248 Int (getLength-Arr-String-1 var2807)) ; Statement: $i13 = lengthof r4 
 ; Statement: if $i13 != 1 goto $r130 = new java.util.HashMap 
(assert (not (not (= var1248 1)))) ; Negate: Cond: $i13 != 1  
(define-const var2907 String (select var2807 0)) ; Statement: $r60 = r4[0] 
(assert true)
(define-const var1697 Int (length/-134980193 var2907)) ; Statement: $i11 = virtualinvoke $r60.<java.lang.String: int length()>() 
 ; Statement: if $i11 != 0 goto $r130 = new java.util.HashMap 
(assert (not (not (= var1697 0)))) ; Negate: Cond: $i11 != 0  
(define-const var2589 var1313 var1313-init) ; Statement: $r129 = new jdk.jfr.internal.dcmd.DCmdException 
(define-const var1584 (Array Int var2250) arr-var2250-init) ; Statement: $r62 = newarray (java.lang.Object)[0] 
(assert true)
;(assert (<init>/557789824 var2589 "No settings specified. Use settings=none to start without any settings" var1584)) ; Statement: specialinvoke $r129.<jdk.jfr.internal.dcmd.DCmdException: void <init>(java.lang.String,java.lang.Object[])>("No settings specified. Use settings=none to start without any settings", $r62) 

(declare-const var2589!1 var1313)
(declare-const var1396 String)
(declare-const var1584!1 (Array Int var2250))
 ; Statement: throw $r129 
(check-sat)
(get-model)
(get-unsat-core)
; {var1021_shouldLog/268553938=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel], boolean), getLength-Arr-String-1=([java.lang.String[]], int), length/-134980193=([java.lang.String], int), var1313-init=([], jdk.jfr.internal.dcmd.DCmdException), arr-var2250-init=([], java.lang.Object[]), <init>/557789824=([jdk.jfr.internal.dcmd.DCmdException, java.lang.String, java.lang.Object[]], void)}
; {var2962=jdk.jfr.internal.dcmd.DCmdStart, var2657=r12, var491=r2, var585=null_type, var2807=r4, var1256=r7, var2574=r3, var3725=java.lang.Boolean, var1328=r8, var87=r9, var3120=r10, var2468=r11, var2003=r114, var2580=r6, var515=jdk.jfr.internal.LogTag, var1371=$r1, var3215=jdk.jfr.internal.LogLevel, var3921=$r0, var1021=jdk.jfr.internal.Logger, var673=$z0, var1248=$i13, var2907=$r60, var1697=$i11, var1313=jdk.jfr.internal.dcmd.DCmdException, var2589=$r129, var2250=java.lang.Object, var1584=$r62, var1396="No settings specified. Use settings=none to start without any settings"}
; {jdk.jfr.internal.dcmd.DCmdStart=var2962, r12=var2657, r2=var491, null_type=var585, r4=var2807, r7=var1256, r3=var2574, java.lang.Boolean=var3725, r8=var1328, r9=var87, r10=var3120, r11=var2468, r114=var2003, r6=var2580, jdk.jfr.internal.LogTag=var515, $r1=var1371, jdk.jfr.internal.LogLevel=var3215, $r0=var3921, jdk.jfr.internal.Logger=var1021, $z0=var673, $i13=var1248, $r60=var2907, $i11=var1697, jdk.jfr.internal.dcmd.DCmdException=var1313, $r129=var2589, java.lang.Object=var2250, $r62=var1584, "No settings specified. Use settings=none to start without any settings"=var1396}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r12 := @this: jdk.jfr.internal.dcmd.DCmdStart;	r2 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String[];	r7 := @parameter2: java.lang.Long;	r3 := @parameter3: java.lang.Long;	r8 := @parameter4: java.lang.Boolean;	r9 := @parameter5: java.lang.String;	r10 := @parameter6: java.lang.Long;	r11 := @parameter7: java.lang.Long;	r114 := @parameter8: java.lang.Boolean;	r6 := @parameter9: java.lang.Boolean;	$r1 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_DCMD>;	$r0 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel DEBUG>;	$z0 = staticinvoke <jdk.jfr.internal.Logger: boolean shouldLog(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel)>($r1, $r0);	if $z0 == 0 goto (branch);	if r2 == null goto (branch);	if r3 != null goto $i13 = lengthof r4;	$i13 = lengthof r4;	if $i13 != 1 goto $r130 = new java.util.HashMap;	$r60 = r4[0];	$i11 = virtualinvoke $r60.<java.lang.String: int length()>();	if $i11 != 0 goto $r130 = new java.util.HashMap;	$r129 = new jdk.jfr.internal.dcmd.DCmdException;	$r62 = newarray (java.lang.Object)[0];	specialinvoke $r129.<jdk.jfr.internal.dcmd.DCmdException: void <init>(java.lang.String,java.lang.Object[])>("No settings specified. Use settings=none to start without any settings", $r62);	throw $r129
;block_num 6
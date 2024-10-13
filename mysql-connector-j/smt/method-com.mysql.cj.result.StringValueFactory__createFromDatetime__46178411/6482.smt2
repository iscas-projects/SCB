(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var936 0)
(declare-sort var2585 0)
(declare-sort var732 0)
(declare-sort var3039 0)
(declare-sort var23 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var732-init () (Array Int var732))
(declare-fun createFromDate/1464009840 (var936 var3039) String)
(declare-fun cast-from-var2585-to-var3039 (var2585) var3039)
(declare-fun cast-from-String-to-var732 (String) var732)
(declare-fun var23-init () var23)
(declare-fun getHours/1224989848 (var2585) Int)
(declare-fun getMinutes/806351432 (var2585) Int)
(declare-fun getSeconds/-631676760 (var2585) Int)
(declare-fun getNanos/-946374296 (var2585) Int)
(declare-fun getScale/577383549 (var2585) Int)
(declare-fun <init>/-1722170254 (var23 Int Int Int Int Int) void)
(declare-fun createFromTime/1995018256 (var936 var23) String)
(declare-fun String_format/1339386452 (String (Array Int var732)) String)
(declare-const null-var936 var936)
(declare-const null-var2585 var2585)
(declare-const null-__Array__Int__var732__ (Array Int var732))
(declare-const var2732 var936) ; Statement: r1 := @this: com.mysql.cj.result.StringValueFactory 
(assert (not (= var2732 null-var936)))
(declare-const var156 var2585) ; Statement: r2 := @parameter0: com.mysql.cj.protocol.InternalTimestamp 
(assert (not (= var156 null-var2585)))
(define-const var2010 (Array Int var732) arr-var732-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var1675 String (createFromDate/1464009840 var2732 (cast-from-var2585-to-var3039 var156))) ; Statement: $r3 = virtualinvoke r1.<com.mysql.cj.result.StringValueFactory: java.lang.String createFromDate(com.mysql.cj.protocol.InternalDate)>(r2) 
(declare-const var2010!1 (Array Int var732))
(assert (not (= var2010!1 null-__Array__Int__var732__)))
(assert (= (select var2010!1 0) (cast-from-String-to-var732 var1675))) ; Statement: $r0[0] = $r3 
(define-const var3822 var23 var23-init) ; Statement: $r4 = new com.mysql.cj.protocol.InternalTime 
(assert true)
(define-const var1125 Int (getHours/1224989848 var156)) ; Statement: $i4 = virtualinvoke r2.<com.mysql.cj.protocol.InternalTimestamp: int getHours()>() 
(assert true)
(define-const var2372 Int (getMinutes/806351432 var156)) ; Statement: $i3 = virtualinvoke r2.<com.mysql.cj.protocol.InternalTimestamp: int getMinutes()>() 
(assert true)
(define-const var3062 Int (getSeconds/-631676760 var156)) ; Statement: $i2 = virtualinvoke r2.<com.mysql.cj.protocol.InternalTimestamp: int getSeconds()>() 
(assert true)
(define-const var2980 Int (getNanos/-946374296 var156)) ; Statement: $i1 = virtualinvoke r2.<com.mysql.cj.protocol.InternalTimestamp: int getNanos()>() 
(assert true)
(define-const var593 Int (getScale/577383549 var156)) ; Statement: $i0 = virtualinvoke r2.<com.mysql.cj.protocol.InternalTimestamp: int getScale()>() 
(assert true)
;(assert (<init>/-1722170254 var3822 var1125 var2372 var3062 var2980 var593)) ; Statement: specialinvoke $r4.<com.mysql.cj.protocol.InternalTime: void <init>(int,int,int,int,int)>($i4, $i3, $i2, $i1, $i0) 

(declare-const var3822!1 var23)
(declare-const var1125!1 Int)
(declare-const var2372!1 Int)
(declare-const var3062!1 Int)
(declare-const var2980!1 Int)
(declare-const var593!1 Int)
(assert true)
(define-const var1480 String (createFromTime/1995018256 var2732 var3822!1)) ; Statement: $r5 = virtualinvoke r1.<com.mysql.cj.result.StringValueFactory: java.lang.String createFromTime(com.mysql.cj.protocol.InternalTime)>($r4) 
(declare-const var2010!2 (Array Int var732))
(assert (not (= var2010!2 null-__Array__Int__var732__)))
(assert (= (select var2010!2 1) (cast-from-String-to-var732 var1480))) ; Statement: $r0[1] = $r5 
(define-const var2880 String (String_format/1339386452 "%s %s" var2010!2)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s %s", $r0) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var732-init=([], java.lang.Object[]), createFromDate/1464009840=([com.mysql.cj.result.StringValueFactory, com.mysql.cj.protocol.InternalDate], java.lang.String), cast-from-var2585-to-var3039=([com.mysql.cj.protocol.InternalTimestamp], com.mysql.cj.protocol.InternalDate), cast-from-String-to-var732=([java.lang.String], java.lang.Object), var23-init=([], com.mysql.cj.protocol.InternalTime), getHours/1224989848=([com.mysql.cj.protocol.InternalTimestamp], int), getMinutes/806351432=([com.mysql.cj.protocol.InternalTimestamp], int), getSeconds/-631676760=([com.mysql.cj.protocol.InternalTimestamp], int), getNanos/-946374296=([com.mysql.cj.protocol.InternalTimestamp], int), getScale/577383549=([com.mysql.cj.protocol.InternalTimestamp], int), <init>/-1722170254=([com.mysql.cj.protocol.InternalTime, int, int, int, int, int], void), createFromTime/1995018256=([com.mysql.cj.result.StringValueFactory, com.mysql.cj.protocol.InternalTime], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var936=com.mysql.cj.result.StringValueFactory, var2732=r1, var2585=com.mysql.cj.protocol.InternalTimestamp, var156=r2, var732=java.lang.Object, var2010=$r0, var3039=com.mysql.cj.protocol.InternalDate, var1675=$r3, var23=com.mysql.cj.protocol.InternalTime, var3822=$r4, var1125=$i4, var2372=$i3, var3062=$i2, var2980=$i1, var593=$i0, var1480=$r5, var2880=$r6}
; {com.mysql.cj.result.StringValueFactory=var936, r1=var2732, com.mysql.cj.protocol.InternalTimestamp=var2585, r2=var156, java.lang.Object=var732, $r0=var2010, com.mysql.cj.protocol.InternalDate=var3039, $r3=var1675, com.mysql.cj.protocol.InternalTime=var23, $r4=var3822, $i4=var1125, $i3=var2372, $i2=var3062, $i1=var2980, $i0=var593, $r5=var1480, $r6=var2880}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.mysql.cj.result.StringValueFactory;	r2 := @parameter0: com.mysql.cj.protocol.InternalTimestamp;	$r0 = newarray (java.lang.Object)[2];	$r3 = virtualinvoke r1.<com.mysql.cj.result.StringValueFactory: java.lang.String createFromDate(com.mysql.cj.protocol.InternalDate)>(r2);	$r0[0] = $r3;	$r4 = new com.mysql.cj.protocol.InternalTime;	$i4 = virtualinvoke r2.<com.mysql.cj.protocol.InternalTimestamp: int getHours()>();	$i3 = virtualinvoke r2.<com.mysql.cj.protocol.InternalTimestamp: int getMinutes()>();	$i2 = virtualinvoke r2.<com.mysql.cj.protocol.InternalTimestamp: int getSeconds()>();	$i1 = virtualinvoke r2.<com.mysql.cj.protocol.InternalTimestamp: int getNanos()>();	$i0 = virtualinvoke r2.<com.mysql.cj.protocol.InternalTimestamp: int getScale()>();	specialinvoke $r4.<com.mysql.cj.protocol.InternalTime: void <init>(int,int,int,int,int)>($i4, $i3, $i2, $i1, $i0);	$r5 = virtualinvoke r1.<com.mysql.cj.result.StringValueFactory: java.lang.String createFromTime(com.mysql.cj.protocol.InternalTime)>($r4);	$r0[1] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s %s", $r0);	return $r6
;block_num 1
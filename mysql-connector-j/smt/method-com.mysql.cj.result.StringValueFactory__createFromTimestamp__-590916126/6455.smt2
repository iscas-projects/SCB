(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1235 0)
(declare-sort var498 0)
(declare-sort var283 0)
(declare-sort var1934 0)
(declare-sort var1825 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var283-init () (Array Int var283))
(declare-fun createFromDate/1464009840 (var1235 var1934) String)
(declare-fun cast-from-var498-to-var1934 (var498) var1934)
(declare-fun cast-from-String-to-var283 (String) var283)
(declare-fun var1825-init () var1825)
(declare-fun getHours/1224989848 (var498) Int)
(declare-fun getMinutes/806351432 (var498) Int)
(declare-fun getSeconds/-631676760 (var498) Int)
(declare-fun getNanos/-946374296 (var498) Int)
(declare-fun getScale/577383549 (var498) Int)
(declare-fun <init>/-1722170254 (var1825 Int Int Int Int Int) void)
(declare-fun createFromTime/1995018256 (var1235 var1825) String)
(declare-fun String_format/1339386452 (String (Array Int var283)) String)
(declare-const null-var1235 var1235)
(declare-const null-var498 var498)
(declare-const null-__Array__Int__var283__ (Array Int var283))
(declare-const var2826 var1235) ; Statement: r1 := @this: com.mysql.cj.result.StringValueFactory 
(assert (not (= var2826 null-var1235)))
(declare-const var1100 var498) ; Statement: r2 := @parameter0: com.mysql.cj.protocol.InternalTimestamp 
(assert (not (= var1100 null-var498)))
(define-const var1049 (Array Int var283) arr-var283-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var2793 String (createFromDate/1464009840 var2826 (cast-from-var498-to-var1934 var1100))) ; Statement: $r3 = virtualinvoke r1.<com.mysql.cj.result.StringValueFactory: java.lang.String createFromDate(com.mysql.cj.protocol.InternalDate)>(r2) 
(declare-const var1049!1 (Array Int var283))
(assert (not (= var1049!1 null-__Array__Int__var283__)))
(assert (= (select var1049!1 0) (cast-from-String-to-var283 var2793))) ; Statement: $r0[0] = $r3 
(define-const var3077 var1825 var1825-init) ; Statement: $r4 = new com.mysql.cj.protocol.InternalTime 
(assert true)
(define-const var1319 Int (getHours/1224989848 var1100)) ; Statement: $i4 = virtualinvoke r2.<com.mysql.cj.protocol.InternalTimestamp: int getHours()>() 
(assert true)
(define-const var2604 Int (getMinutes/806351432 var1100)) ; Statement: $i3 = virtualinvoke r2.<com.mysql.cj.protocol.InternalTimestamp: int getMinutes()>() 
(assert true)
(define-const var882 Int (getSeconds/-631676760 var1100)) ; Statement: $i2 = virtualinvoke r2.<com.mysql.cj.protocol.InternalTimestamp: int getSeconds()>() 
(assert true)
(define-const var3879 Int (getNanos/-946374296 var1100)) ; Statement: $i1 = virtualinvoke r2.<com.mysql.cj.protocol.InternalTimestamp: int getNanos()>() 
(assert true)
(define-const var2736 Int (getScale/577383549 var1100)) ; Statement: $i0 = virtualinvoke r2.<com.mysql.cj.protocol.InternalTimestamp: int getScale()>() 
(assert true)
;(assert (<init>/-1722170254 var3077 var1319 var2604 var882 var3879 var2736)) ; Statement: specialinvoke $r4.<com.mysql.cj.protocol.InternalTime: void <init>(int,int,int,int,int)>($i4, $i3, $i2, $i1, $i0) 

(declare-const var3077!1 var1825)
(declare-const var1319!1 Int)
(declare-const var2604!1 Int)
(declare-const var882!1 Int)
(declare-const var3879!1 Int)
(declare-const var2736!1 Int)
(assert true)
(define-const var926 String (createFromTime/1995018256 var2826 var3077!1)) ; Statement: $r5 = virtualinvoke r1.<com.mysql.cj.result.StringValueFactory: java.lang.String createFromTime(com.mysql.cj.protocol.InternalTime)>($r4) 
(declare-const var1049!2 (Array Int var283))
(assert (not (= var1049!2 null-__Array__Int__var283__)))
(assert (= (select var1049!2 1) (cast-from-String-to-var283 var926))) ; Statement: $r0[1] = $r5 
(define-const var758 String (String_format/1339386452 "%s %s" var1049!2)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s %s", $r0) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var283-init=([], java.lang.Object[]), createFromDate/1464009840=([com.mysql.cj.result.StringValueFactory, com.mysql.cj.protocol.InternalDate], java.lang.String), cast-from-var498-to-var1934=([com.mysql.cj.protocol.InternalTimestamp], com.mysql.cj.protocol.InternalDate), cast-from-String-to-var283=([java.lang.String], java.lang.Object), var1825-init=([], com.mysql.cj.protocol.InternalTime), getHours/1224989848=([com.mysql.cj.protocol.InternalTimestamp], int), getMinutes/806351432=([com.mysql.cj.protocol.InternalTimestamp], int), getSeconds/-631676760=([com.mysql.cj.protocol.InternalTimestamp], int), getNanos/-946374296=([com.mysql.cj.protocol.InternalTimestamp], int), getScale/577383549=([com.mysql.cj.protocol.InternalTimestamp], int), <init>/-1722170254=([com.mysql.cj.protocol.InternalTime, int, int, int, int, int], void), createFromTime/1995018256=([com.mysql.cj.result.StringValueFactory, com.mysql.cj.protocol.InternalTime], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1235=com.mysql.cj.result.StringValueFactory, var2826=r1, var498=com.mysql.cj.protocol.InternalTimestamp, var1100=r2, var283=java.lang.Object, var1049=$r0, var1934=com.mysql.cj.protocol.InternalDate, var2793=$r3, var1825=com.mysql.cj.protocol.InternalTime, var3077=$r4, var1319=$i4, var2604=$i3, var882=$i2, var3879=$i1, var2736=$i0, var926=$r5, var758=$r6}
; {com.mysql.cj.result.StringValueFactory=var1235, r1=var2826, com.mysql.cj.protocol.InternalTimestamp=var498, r2=var1100, java.lang.Object=var283, $r0=var1049, com.mysql.cj.protocol.InternalDate=var1934, $r3=var2793, com.mysql.cj.protocol.InternalTime=var1825, $r4=var3077, $i4=var1319, $i3=var2604, $i2=var882, $i1=var3879, $i0=var2736, $r5=var926, $r6=var758}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.mysql.cj.result.StringValueFactory;	r2 := @parameter0: com.mysql.cj.protocol.InternalTimestamp;	$r0 = newarray (java.lang.Object)[2];	$r3 = virtualinvoke r1.<com.mysql.cj.result.StringValueFactory: java.lang.String createFromDate(com.mysql.cj.protocol.InternalDate)>(r2);	$r0[0] = $r3;	$r4 = new com.mysql.cj.protocol.InternalTime;	$i4 = virtualinvoke r2.<com.mysql.cj.protocol.InternalTimestamp: int getHours()>();	$i3 = virtualinvoke r2.<com.mysql.cj.protocol.InternalTimestamp: int getMinutes()>();	$i2 = virtualinvoke r2.<com.mysql.cj.protocol.InternalTimestamp: int getSeconds()>();	$i1 = virtualinvoke r2.<com.mysql.cj.protocol.InternalTimestamp: int getNanos()>();	$i0 = virtualinvoke r2.<com.mysql.cj.protocol.InternalTimestamp: int getScale()>();	specialinvoke $r4.<com.mysql.cj.protocol.InternalTime: void <init>(int,int,int,int,int)>($i4, $i3, $i2, $i1, $i0);	$r5 = virtualinvoke r1.<com.mysql.cj.result.StringValueFactory: java.lang.String createFromTime(com.mysql.cj.protocol.InternalTime)>($r4);	$r0[1] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s %s", $r0);	return $r6
;block_num 1
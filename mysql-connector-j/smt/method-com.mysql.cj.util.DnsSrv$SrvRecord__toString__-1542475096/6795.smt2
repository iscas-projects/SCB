(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3711 0)
(declare-sort var2058 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2058-init () (Array Int var2058))
(declare-fun getPriority/1695117126 (var3711) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2058 (Int) var2058)
(declare-fun getWeight/1460577586 (var3711) Int)
(declare-fun getPort/1149834697 (var3711) Int)
(declare-fun getTarget/-2011923681 (var3711) String)
(declare-fun cast-from-String-to-var2058 (String) var2058)
(declare-fun String_format/1339386452 (String (Array Int var2058)) String)
(declare-const null-var3711 var3711)
(declare-const null-__Array__Int__var2058__ (Array Int var2058))
(declare-const var1652 var3711) ; Statement: r1 := @this: com.mysql.cj.util.DnsSrv$SrvRecord 
(assert (not (= var1652 null-var3711)))
(define-const var3808 (Array Int var2058) arr-var2058-init) ; Statement: $r0 = newarray (java.lang.Object)[4] 
(assert true)
(define-const var3872 Int (getPriority/1695117126 var1652)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.util.DnsSrv$SrvRecord: int getPriority()>() 
(define-const var1749 Int (Int_valueOf/-1371140006 var3872)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var3808!1 (Array Int var2058))
(assert (not (= var3808!1 null-__Array__Int__var2058__)))
(assert (= (select var3808!1 0) (cast-from-Int-to-var2058 var1749))) ; Statement: $r0[0] = $r2 
(assert true)
(define-const var886 Int (getWeight/1460577586 var1652)) ; Statement: $i1 = virtualinvoke r1.<com.mysql.cj.util.DnsSrv$SrvRecord: int getWeight()>() 
(define-const var1199 Int (Int_valueOf/-1371140006 var886)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1) 
(declare-const var3808!2 (Array Int var2058))
(assert (not (= var3808!2 null-__Array__Int__var2058__)))
(assert (= (select var3808!2 1) (cast-from-Int-to-var2058 var1199))) ; Statement: $r0[1] = $r3 
(assert true)
(define-const var270 Int (getPort/1149834697 var1652)) ; Statement: $i2 = virtualinvoke r1.<com.mysql.cj.util.DnsSrv$SrvRecord: int getPort()>() 
(define-const var2434 Int (Int_valueOf/-1371140006 var270)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2) 
(declare-const var3808!3 (Array Int var2058))
(assert (not (= var3808!3 null-__Array__Int__var2058__)))
(assert (= (select var3808!3 2) (cast-from-Int-to-var2058 var2434))) ; Statement: $r0[2] = $r4 
(assert true)
(define-const var1629 String (getTarget/-2011923681 var1652)) ; Statement: $r5 = virtualinvoke r1.<com.mysql.cj.util.DnsSrv$SrvRecord: java.lang.String getTarget()>() 
(declare-const var3808!4 (Array Int var2058))
(assert (not (= var3808!4 null-__Array__Int__var2058__)))
(assert (= (select var3808!4 3) (cast-from-String-to-var2058 var1629))) ; Statement: $r0[3] = $r5 
(define-const var3955 String (String_format/1339386452 "{\u0022Priority\u0022: %d, \u0022Weight\u0022: %d, \u0022Port\u0022: %d, \u0022Target\u0022: \u0022%s\u0022}" var3808!4)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("{\"Priority\": %d, \"Weight\": %d, \"Port\": %d, \"Target\": \"%s\"}", $r0) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2058-init=([], java.lang.Object[]), getPriority/1695117126=([com.mysql.cj.util.DnsSrv$SrvRecord], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2058=([java.lang.Integer], java.lang.Object), getWeight/1460577586=([com.mysql.cj.util.DnsSrv$SrvRecord], int), getPort/1149834697=([com.mysql.cj.util.DnsSrv$SrvRecord], int), getTarget/-2011923681=([com.mysql.cj.util.DnsSrv$SrvRecord], java.lang.String), cast-from-String-to-var2058=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3711=com.mysql.cj.util.DnsSrv$SrvRecord, var1652=r1, var2058=java.lang.Object, var3808=$r0, var3872=$i0, var1749=$r2, var886=$i1, var1199=$r3, var270=$i2, var2434=$r4, var1629=$r5, var3955=$r6}
; {com.mysql.cj.util.DnsSrv$SrvRecord=var3711, r1=var1652, java.lang.Object=var2058, $r0=var3808, $i0=var3872, $r2=var1749, $i1=var886, $r3=var1199, $i2=var270, $r4=var2434, $r5=var1629, $r6=var3955}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.mysql.cj.util.DnsSrv$SrvRecord;	$r0 = newarray (java.lang.Object)[4];	$i0 = virtualinvoke r1.<com.mysql.cj.util.DnsSrv$SrvRecord: int getPriority()>();	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r0[0] = $r2;	$i1 = virtualinvoke r1.<com.mysql.cj.util.DnsSrv$SrvRecord: int getWeight()>();	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1);	$r0[1] = $r3;	$i2 = virtualinvoke r1.<com.mysql.cj.util.DnsSrv$SrvRecord: int getPort()>();	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2);	$r0[2] = $r4;	$r5 = virtualinvoke r1.<com.mysql.cj.util.DnsSrv$SrvRecord: java.lang.String getTarget()>();	$r0[3] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("{\"Priority\": %d, \"Weight\": %d, \"Port\": %d, \"Target\": \"%s\"}", $r0);	return $r6
;block_num 1
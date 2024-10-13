(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3729 0)
(declare-sort var913 0)
(declare-sort var1093 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3729_appendXid/-1053669842 (String var913) void)
(declare-fun var1093-init () var1093)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun <init>/-1931808721 (var1093 Int) void)
(declare-const null-var3729 var3729)
(declare-const null-var913 var913)
(declare-const null-Int Int)
(declare-const var777 var3729) ; Statement: r2 := @this: com.mysql.cj.jdbc.MysqlXAConnection 
(assert (not (= var777 null-var3729)))
(declare-const var1775 var913) ; Statement: r1 := @parameter0: javax.transaction.xa.Xid 
(assert (not (= var1775 null-var913)))
(declare-const var1519 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1519 null-Int)))
(define-const var128 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var128 300)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>(int)>(300) 

(declare-const var128!1 String)
(declare-const var1679 Int)
(assert true)
;(assert (append/672562846 var128!1 "XA START ")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("XA START ") 
(declare-const var128!2 String)
(assert (= var128!2 (str.++ var128!1 "XA START ")))
;(assert (var3729_appendXid/-1053669842 var128!2 var1775)) ; Statement: staticinvoke <com.mysql.cj.jdbc.MysqlXAConnection: void appendXid(java.lang.StringBuilder,javax.transaction.xa.Xid)>($r6, r1) 

(declare-const var128!3 String)
(declare-const var1775!1 var913)
 ; Statement: lookupswitch(i0) {     case 0: goto goto [?= $r4 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>()];     case 2097152: goto virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" JOIN");     case 134217728: goto virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" RESUME");     default: goto $r7 = new javax.transaction.xa.XAException; } 
(assert (and (not (= var1519 134217728)) (and (not (= var1519 2097152)) (and (not (= var1519 0)) true)))) ; Intersect: Negate: Cond: i0 == 134217728   and Intersect: Negate: Cond: i0 == 2097152   and Intersect: Negate: Cond: i0 == 0   and Non Conditional   
(define-const var1516 var1093 var1093-init) ; Statement: $r7 = new javax.transaction.xa.XAException 
(define-const var1393 Int (cast-from-Int-to-Int (- 5))) ; Statement: $i2 = (int) -5 
(assert true)
;(assert (<init>/-1931808721 var1516 var1393)) ; Statement: specialinvoke $r7.<javax.transaction.xa.XAException: void <init>(int)>($i2) 

(declare-const var1516!1 var1093)
(declare-const var1393!1 Int)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3729_appendXid/-1053669842=([java.lang.StringBuilder, javax.transaction.xa.Xid], void), var1093-init=([], javax.transaction.xa.XAException), cast-from-Int-to-Int=([int], int), <init>/-1931808721=([javax.transaction.xa.XAException, int], void)}
; {var3729=com.mysql.cj.jdbc.MysqlXAConnection, var777=r2, var913=javax.transaction.xa.Xid, var1775=r1, var1519=i0, var128=$r6, var1679=300, var1093=javax.transaction.xa.XAException, var1516=$r7, var1393=$i2}
; {com.mysql.cj.jdbc.MysqlXAConnection=var3729, r2=var777, javax.transaction.xa.Xid=var913, r1=var1775, i0=var1519, $r6=var128, 300=var1679, javax.transaction.xa.XAException=var1093, $r7=var1516, $i2=var1393}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r2 := @this: com.mysql.cj.jdbc.MysqlXAConnection;	r1 := @parameter0: javax.transaction.xa.Xid;	i0 := @parameter1: int;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>(int)>(300);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("XA START ");	staticinvoke <com.mysql.cj.jdbc.MysqlXAConnection: void appendXid(java.lang.StringBuilder,javax.transaction.xa.Xid)>($r6, r1);	lookupswitch(i0) {     case 0: goto goto [?= $r4 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>()];     case 2097152: goto virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" JOIN");     case 134217728: goto virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" RESUME");     default: goto $r7 = new javax.transaction.xa.XAException; };	$r7 = new javax.transaction.xa.XAException;	$i2 = (int) -5;	specialinvoke $r7.<javax.transaction.xa.XAException: void <init>(int)>($i2);	throw $r7
;block_num 2
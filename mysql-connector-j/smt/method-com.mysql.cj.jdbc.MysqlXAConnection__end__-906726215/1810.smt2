(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1259 0)
(declare-sort var3767 0)
(declare-sort var846 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1259_appendXid/-1053669842 (String var3767) void)
(declare-fun var846-init () var846)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun <init>/-1931808721 (var846 Int) void)
(declare-const null-var1259 var1259)
(declare-const null-var3767 var3767)
(declare-const null-Int Int)
(declare-const var3793 var1259) ; Statement: r2 := @this: com.mysql.cj.jdbc.MysqlXAConnection 
(assert (not (= var3793 null-var1259)))
(declare-const var1480 var3767) ; Statement: r1 := @parameter0: javax.transaction.xa.Xid 
(assert (not (= var1480 null-var3767)))
(declare-const var2896 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2896 null-Int)))
(define-const var482 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var482 300)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>(int)>(300) 

(declare-const var482!1 String)
(declare-const var304 Int)
(assert true)
;(assert (append/672562846 var482!1 "XA END ")) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("XA END ") 
(declare-const var482!2 String)
(assert (= var482!2 (str.++ var482!1 "XA END ")))
;(assert (var1259_appendXid/-1053669842 var482!2 var1480)) ; Statement: staticinvoke <com.mysql.cj.jdbc.MysqlXAConnection: void appendXid(java.lang.StringBuilder,javax.transaction.xa.Xid)>($r5, r1) 

(declare-const var482!3 String)
(declare-const var1480!1 var3767)
 ; Statement: lookupswitch(i0) {     case 33554432: goto virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" SUSPEND");     case 67108864: goto goto [?= $r4 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>()];     case 536870912: goto goto [?= $r4 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>()];     default: goto $r6 = new javax.transaction.xa.XAException; } 
(assert (and (not (= var2896 536870912)) (and (not (= var2896 67108864)) (and (not (= var2896 33554432)) true)))) ; Intersect: Negate: Cond: i0 == 536870912   and Intersect: Negate: Cond: i0 == 67108864   and Intersect: Negate: Cond: i0 == 33554432   and Non Conditional   
(define-const var882 var846 var846-init) ; Statement: $r6 = new javax.transaction.xa.XAException 
(define-const var33 Int (cast-from-Int-to-Int (- 5))) ; Statement: $i2 = (int) -5 
(assert true)
;(assert (<init>/-1931808721 var882 var33)) ; Statement: specialinvoke $r6.<javax.transaction.xa.XAException: void <init>(int)>($i2) 

(declare-const var882!1 var846)
(declare-const var33!1 Int)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1259_appendXid/-1053669842=([java.lang.StringBuilder, javax.transaction.xa.Xid], void), var846-init=([], javax.transaction.xa.XAException), cast-from-Int-to-Int=([int], int), <init>/-1931808721=([javax.transaction.xa.XAException, int], void)}
; {var1259=com.mysql.cj.jdbc.MysqlXAConnection, var3793=r2, var3767=javax.transaction.xa.Xid, var1480=r1, var2896=i0, var482=$r5, var304=300, var846=javax.transaction.xa.XAException, var882=$r6, var33=$i2}
; {com.mysql.cj.jdbc.MysqlXAConnection=var1259, r2=var3793, javax.transaction.xa.Xid=var3767, r1=var1480, i0=var2896, $r5=var482, 300=var304, javax.transaction.xa.XAException=var846, $r6=var882, $i2=var33}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r2 := @this: com.mysql.cj.jdbc.MysqlXAConnection;	r1 := @parameter0: javax.transaction.xa.Xid;	i0 := @parameter1: int;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>(int)>(300);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("XA END ");	staticinvoke <com.mysql.cj.jdbc.MysqlXAConnection: void appendXid(java.lang.StringBuilder,javax.transaction.xa.Xid)>($r5, r1);	lookupswitch(i0) {     case 33554432: goto virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" SUSPEND");     case 67108864: goto goto [?= $r4 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>()];     case 536870912: goto goto [?= $r4 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>()];     default: goto $r6 = new javax.transaction.xa.XAException; };	$r6 = new javax.transaction.xa.XAException;	$i2 = (int) -5;	specialinvoke $r6.<javax.transaction.xa.XAException: void <init>(int)>($i2);	throw $r6
;block_num 2